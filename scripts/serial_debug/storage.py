import sys
from mypipe import MyPipe
pipe = MyPipe('storage')
while (1):
    a = pipe.read_from_pipe()
    print(a,end='')
    sys.stdout.flush()
