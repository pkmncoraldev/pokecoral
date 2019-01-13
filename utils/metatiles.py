#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Generate a .png of a metatileset from its tileset graphics, metatiles.bin, and
attributes.bin files.
"""

from __future__ import print_function

import sys
import os
import os.path
import re
import array

from itertools import izip_longest

import png

def chunk(L, n, fillvalue=None):
	return izip_longest(*[iter(L)] * n, fillvalue=fillvalue)

def rgb_bytes(rgbs):
	for px in rgbs:
		yield px[0]
		yield px[1]
		yield px[2]

default_rgb = (0xAB, 0xCD, 0xEF)

RGBC = lambda c: c * 8 # c * 33 // 4 for BGB instead of VBA
RGB5 = lambda r, g, b: (RGBC(r), RGBC(g), RGBC(b))

def load_palette(filename):
	try:
		palette = []
		with open(filename, 'r') as f:
			channels = []
			for line in f:
				line = line.split(';')[0].strip()
				if line.startswith('RGB '):
					rgbs = [RGBC(int(b)) for b in line[4:].split(',')]
					assert len(rgbs) % 3 == 0
					channels.extend(rgbs)
			hue = []
			while len(channels) >= 3:
				rgb, channels = channels[:3], channels[3:]
				hue.append(rgb)
				if len(hue) == 4:
					palette.append(hue)
					hue = []
	except:
		palette = [
			[RGB5(28,31,28), RGB5(21,21,21), RGB5(13,13,13), RGB5( 7, 7, 7)],
			[RGB5(28,31,28), RGB5(29,16,13), RGB5(24, 6, 8), RGB5( 7, 7, 7)],
			[RGB5(14,25,20), RGB5( 9,19, 5), RGB5( 5,14,10), RGB5( 7, 7, 7)],
			[RGB5(28,31,28), RGB5( 8,20,27), RGB5( 1,12,19), RGB5( 7, 7, 7)],
			[RGB5(28,31,28), RGB5(19,26,31), RGB5(12,20,27), RGB5( 7, 7, 7)],
			[RGB5(28,31,28), RGB5(22,18,15), RGB5(17,13,10), RGB5( 7, 7, 7)],
			[RGB5(28,31,28), RGB5(15,31,31), RGB5( 5,17,31), RGB5( 7, 7, 7)],
			[RGB5(28,31,28), RGB5(31,31,31), RGB5(26, 8, 5), RGB5( 0, 0, 0)]
		]
	assert len(palette) >= 8
	return palette

class Tileset(object):
	WHITE, LIGHT, DARK, BLACK = range(4)

	p_per_t = 8

	def __init__(self, filename, attributes):
		self.attributes = attributes
		reader = png.Reader(filename=filename)
		self.w, self.h, data, metadata = reader.read_flat()
		self.wt, self.ht = self.w // Tileset.p_per_t, self.h // Tileset.p_per_t
		self.nt = self.wt * self.ht
		self.data = []

		if 'palette' in metadata:
			palette = metadata['palette']
			stride = 1
		else:
			palette = None
			stride = metadata['planes']
			if metadata['alpha']:
				stride += 1
		bitdepth = metadata['bitdepth']
		planes = metadata['planes']

		for i in range(self.w * self.h):
			px = data[i*stride:(i+1)*stride][0]
			if palette:
				px = palette[px][0]
			shade = 3 - 4 * px // (2 ** bitdepth)
			assert 0 <= shade < 4
			self.data.append(shade)

	def tile(self, i, attr):
		tile = []
		if attr & Attributes.BANK1:
			i |= 0x80
		else:
			i &= 0x7f
		ty, tx = divmod(i, self.wt)
		color = self.attributes.colors[attr & Attributes.COLOR]
		span = range(Tileset.p_per_t)
		if attr & Attributes.YFLIP:
			span = span[::-1]
		for r in span:
			start = ty*Tileset.p_per_t**2*self.wt + tx*Tileset.p_per_t + Tileset.p_per_t*self.wt*r
			row = self.data[start:start+Tileset.p_per_t]
			if attr & Attributes.XFLIP:
				row = row[::-1]
			row = [color[px] for px in row]
			tile.extend(row)
		if not tile:
			tile = [default_rgb] * Tileset.p_per_t**2
		return tile

	def tile_id_of_px(self, i):
		wt = self.wt
		tw = Tileset.p_per_t
		return (i // wt // (tw * tw) * wt) + (i // tw % wt)

class Attributes(object):
	GRAY, RED, GREEN, WATER, YELLOW, BROWN, ROOF, TEXT = range(8)
	COLOR    = 0x07
	BANK1    = 0x08
	XFLIP    = 0x20
	YFLIP    = 0x40
	PRIORITY = 0x80

	day_palette = staticmethod(lambda:
		(lambda x=load_palette('tilesets/bg.pal'): x[8:11]+[x[0x29]]+x[12:16])())
	nite_palette = staticmethod(lambda:
		(lambda x=load_palette('tilesets/bg.pal'): x[16:19]+[x[0x2a]]+x[20:24])())
	indoor_palette = staticmethod(lambda:
		load_palette('tilesets/bg.pal')[32:40])

	map_palettes = {
		'maps/GoldenrodCity.blk': lambda: load_palette('tilesets/outsidepals/ranch/dayranch.pal'),
	}

	tileset_palettes = {
		'ruins': lambda: load_palette('gfx/tilesets/palettes/ruins.pal'),
	}

	def __init__(self, filename, key, map_blk):
		print('***', map_blk)
		print('**>', key)
		colors_lambda = Attributes.map_palettes.get(map_blk,
			Attributes.tileset_palettes.get(key, Attributes.day_palette))
		print(colors_lambda == Attributes.map_palettes['maps/GoldenrodCity.blk'])
		self.colors = colors_lambda()
		assert len(self.colors) == 8
		self.data = []
		with open(filename, 'rb') as file:
			while True:
				tile_attrs = [ord(c) for c in file.read(Metatiles.t_per_m**2)]
				if not len(tile_attrs):
					break
				self.data.append(tile_attrs)

	def color4(self, i):
		return self.colors[self.data[i]] if i < len(self.data) else [default_rgb] * 4

class Metatiles(object):
	t_per_m = 4

	def __init__(self, filename, tileset, attributes):
		self.tileset = tileset
		self.attributes = attributes
		self.data = []
		with open(filename, 'rb') as file:
			i = 0
			while True:
				tile_indexes = [ord(c) for c in file.read(Metatiles.t_per_m**2)]
				if not len(tile_indexes):
					break
				attr_indexes = self.attributes.data[i]
				metatile = [tileset.tile(ti, ta) for ti, ta in zip(tile_indexes, attr_indexes)]
				self.data.append(metatile)
				i += 1

	def size(self):
		return len(self.data)

	def export_colored(self, filename):
		wm = 4
		hm = self.size() // wm
		if wm * hm < self.size():
			hm += 1
		overall_w = wm * Metatiles.t_per_m * Tileset.p_per_t
		overall_h = hm * Metatiles.t_per_m * Tileset.p_per_t
		data = [default_rgb] * (overall_w * overall_h)

		for d_i in range(overall_w * overall_h):
			d_y, d_x = divmod(d_i, wm * Metatiles.t_per_m * Tileset.p_per_t)
			m_x, r_x = divmod(d_x, Metatiles.t_per_m * Tileset.p_per_t)
			t_x, p_x = divmod(r_x, Tileset.p_per_t)
			m_y, r_y = divmod(d_y, Metatiles.t_per_m * Tileset.p_per_t)
			t_y, p_y = divmod(r_y, Tileset.p_per_t)
			m_i = m_y * wm + m_x
			t_i = t_y * Metatiles.t_per_m + t_x
			p_i = p_y * Tileset.p_per_t + p_x
			if m_i >= self.size():
				continue
			metatile = self.data[m_i]
			tile = metatile[t_i]
			pixel = tile[p_i]
			data[d_i] = pixel

		with open(filename, 'wb') as file:
			writer = png.Writer(overall_w, overall_h)
			writer.write(file, chunk(rgb_bytes(data), overall_w * 3))

def process(key, tileset_name, metatiles_name, attributes_name, map_blk):
	attributes = Attributes(attributes_name, key, map_blk)
	tileset = Tileset(tileset_name, attributes)
	metatiles = Metatiles(metatiles_name, tileset, attributes)

	metatiles_colored_name = metatiles_name[:-4] + '.png'
	metatiles.export_colored(metatiles_colored_name)
	print('Exported', metatiles_colored_name)

def main():
	valid = False
	if len(sys.argv) in [2, 3]:
		name = sys.argv[1]
		tileset = 'gfx/tilesets/%s.2bpp.lz' % name
		metatiles = 'tilesets/%s_metatiles.bin' % name
		attributes = 'tilesets/%s_attributes.bin' % name
		map_blk = sys.argv[2] if len(sys.argv) == 3 else None
	elif len(sys.argv) in [4, 5]:
		name = None
		tileset = sys.argv[1]
		metatiles = sys.argv[2]
		attributes = sys.argv[3]
		map_blk = sys.argv[4] if len(sys.argv) == 5 else None
	else:
		usage = '''Usage: %s tileset [metatiles.bin attributes.bin map.blk]
       Generate a .png of a metatileset for viewing

       If tileset is gfx/tilesets/FOO.{2bpp.lz,2bpp,png},
       the other parameters will be inferred as
       tilesets/FOO_metatiles.bin and tilesets/FOO_attributes.bin.

       If tileset is FOO, it will first be inferred as
       gfx/tilesets/FOO.2bpp.lz.

       If a map is specified, its unique palette may be used.'''
		print(usage % sys.argv[0], file=sys.stderr)
		sys.exit(1)

	if tileset.endswith('.2bpp.lz') and not os.path.exists(tileset):
		tileset = tileset[:-3]

	if not tileset.endswith('.png'):
		os.system('python gfx.py png %s' % tileset)
	if tileset.endswith('.2bpp'):
		tileset = tileset[:-5] + '.png'
	elif tileset.endswith('.2bpp.lz'):
		tileset = tileset[:-8] + '.png'

	process(name, tileset, metatiles, attributes, map_blk)

if __name__ == '__main__':
	main()
