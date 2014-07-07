input = [5,5,2]
output = 0

ori = input[0] + input[1]
(
 output+=parseInt(ori/input[2])
 ori = ori-parseInt(ori/input[2])*input[2]+parseInt(ori/input[2])
) while parseInt(ori/input[2])

alert output