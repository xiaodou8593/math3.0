import os

files = os.listdir()
print(files)

for filename in files:
    if filename.endswith('_pos.mcfunction'):
        
        with open(filename) as file:
            text = file.read()
            
        new_name = filename.replace('pos','neg')
        new_text = text.replace('pos','neg')
        
        with open(new_name,'w') as file:
            file.write(new_text)

with open('i_pos') as file:
    text = file.read()

for i in range(-7,9):
    
    new_name = f"{i}_pos.mcfunction"
    new_text = text.replace('$i',f"{i}").replace('$10^(7-i)',f"{10**(7-i)}")
    with open(new_name,'w') as file:
        file.write(new_text)
        
    new_name = f"{i}_neg.mcfunction"
    new_text = text.replace('pos','neg').replace('$i',f"{i}").replace('$10^(7-i)',f"{-1*10**(7-i)}")
    with open(new_name,'w') as file:
        file.write(new_text)