#from mypipe import MyPipe
import sys
#pipe = MyPipe('output')
#while (1):
#    a = pipe.read_byte_from_pipe()
#    print(a,end='')
#    sys.stdout.flush()


from mypipe import MyPipe
pipe = MyPipe('output')
while (1):
    a = pipe.read_from_pipe()
    print(a,end='')
    sys.stdout.flush()
