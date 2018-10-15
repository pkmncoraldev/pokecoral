import glob

collision_bin_names = glob.glob('tilesets/*_collision.bin')
for collision_bin_name in collision_bin_names:

	collision_asm_name = collision_bin_name.replace('.bin', '.asm')
	print(collision_bin_name, '=>', collision_asm_name)

	with open(collision_bin_name, 'rb') as bin:
		data = bin.read()

	with open(collision_asm_name, 'w', encoding='utf8') as asm:
		blocks = (data[i:i+4] for i in range(0, len(data), 4))
		for (i, (q1, q2, q3, q4)) in enumerate(blocks):
			line = '\ttilecoll $%02x, $%02x, $%02x, $%02x ; %02x\n' % (q1, q2, q3, q4, i)
			asm.write(line)

print('Done!')