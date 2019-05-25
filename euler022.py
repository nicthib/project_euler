# Problem 22
with open ('p022_names.txt','r') as txt:
    data = txt.readlines()
str1 = ''.join(data)
str2 = str1.split('"')[1::2]
str2.sort()
score = []
for i in range(len(str2)):
    score.append(sum([ord(char) - 96 for char in str2[i].lower()])*(i+1))
print(sum(score))
