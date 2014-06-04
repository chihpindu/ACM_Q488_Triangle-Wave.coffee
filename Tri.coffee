input = "2 3 2 5 3"
output = new Array()
arrInput = input.split(' ')
times = arrInput[0]
length = arrInput.length

#fn - for draw row content
drawRow = (v1) -> (rowItem = ""; intTimes = v1; (rowItem+=v1.toString()) while intTimes--; rowItem)

#fn - for draw one Tri
drawOneTri = (v1) -> (arrTri = new Array((v1-1)*2+1); index = 0; (arrTri[(v1-1)-index] = arrTri[(v1-1)+index] = drawRow(v1-index); index++) while index<v1; arrTri.join("\n"))

#fn - for draw one data
drawTri = (v1, v2) -> (arrTri = new Array(); (arrTri.push(drawOneTri(v2)) while v1--); arrTri.join("\n\n"))

#draw data
(output.push(drawTri(arrInput[(length/2-times)*2+1], arrInput[(length/2 - times)*2])); times--) while times>0

#output
alert(output.join("\n\n"))