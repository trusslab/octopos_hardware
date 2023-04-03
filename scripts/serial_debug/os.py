import sys
from mypipe import MyPipe
pipe = MyPipe('os')
while (1):
    a = pipe.read_from_pipe()
    print(a,end='')
    sys.stdout.flush()

