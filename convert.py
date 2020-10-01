import os


# Files under lemon and not in bits or concepts
directory = "lemon-1.3.1/lemon"
for filename in os.listdir(directory):
    if not os.path.isdir(directory + "/" + filename):
        read = open(directory + "/" + filename, "r", errors = 'ignore')
        lines = read.readlines()
        write = open("lemon/" + filename, "w")
        for line in lines:
            if(line.startswith("#include <lemon")):
                line = line.strip()
                writename = line[line.find("/") + 1:-1]
                write.write("#include \"" + writename + "\"\n")
            elif(line.startswith("#include<lemon")):
                line = line.strip()
                writename = line[line.find("/") + 1:-1]
                write.write("#include \"" + writename + "\"\n")                
            else:
                write.write(line)

# Files in bits
directory = "lemon-1.3.1/lemon/bits"
for filename in os.listdir(directory):
    if not os.path.isdir(directory + "/" + filename):
        read = open(directory + "/" + filename, "r", errors = 'ignore')
        lines = read.readlines()
        write = open("lemon/bits/" + filename, "w")
        for line in lines:
            line = line.strip()
            if(line.startswith("#include <lemon/bits") or line.startswith("#include<lemon/bits")):
                writename = line[line.find("/") + 6: -1]
                write.write("#include \"" + writename + "\"\n")
            elif(line.startswith("#include <lemon/") or line.startswith("#include<lemon/")):
                writename = line[line.find("/"): -1]
                write.write("#include \".." + writename + "\"\n")
            else:
                write.write(line + "\n")


# Files in concepts
directory = "lemon-1.3.1/lemon/concepts"
for filename in os.listdir(directory):
    if not os.path.isdir(directory + "/" + filename):
        read = open(directory + "/" + filename, "r", errors = 'ignore')
        lines = read.readlines()
        write = open("lemon/concepts/" + filename, "w")
        for line in lines:
            line = line.strip()
            if(line.startswith("#include <lemon/concepts") or line.startswith("#include<lemon/concepts")):
                writename = line[line.find("/") + 6: -1]
                write.write("#include \"" + writename + "\"\n")
            elif(line.startswith("#include <lemon/") or line.startswith("#include<lemon/")):
                writename = line[line.find("/"): -1]
                write.write("#include \".." + writename + "\"\n")
            else:
                write.write(line + "\n")