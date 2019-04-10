#program to extract just vibhaki list from all_vibhakti_with_karaks.txt
#line 12 in f is not handled in program, removed manuall Also lines containing * handled manually
f=open("all_vibhakti_with_karaks.txt","r")
fw=open("vibhakti_roja.txt","a")
list1=f.readlines()
#print(list1)
for line in list1:
    line=line.strip()
    length=(len(line.split()))
    line1=line.split()
    if length >3:
        vib=line1[2]
    else:
        vib=line1[1]
    print(line,"<==>",vib)
    fw.write(vib)
    fw.write("\n")
f.close()
fw.close()
