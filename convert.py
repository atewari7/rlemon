import os


# Files under lemon and not in bits or concepts
directory = "lemon-1.3.1/lemon"
for filename in os.listdir(directory):
    if not os.path.isdir(directory + "/" + filename):
        print(directory + "/" + filename)
        read = open(directory + "/" + filename, "r", errors = 'ignore')
        lines = read.readlines()
        write = open("lemon/" + filename, "w")
        for line in lines:
            if(line.startswith("#include <lemon")):
                line = line.strip()
                writename = line[line.find("/") + 1:-1]
                print(writename)
                write.write("#include \'" + writename + "\'\n")
            else:
                write.write(line)

# Files in bits





# Files in concepts