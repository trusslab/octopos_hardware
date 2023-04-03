import serial
from mypipe import MyPipe
encoding = 'utf-8'
os_pipe = MyPipe('os')
storage_pipe = MyPipe('storage')
output_pipe = MyPipe('output')
os_pipe.make()
storage_pipe.make()
output_pipe.make()
output_pipe.should_buffer = True
with serial.Serial('/dev/ttyACM0', 115200, timeout=10) as ser:
    prev_char = ' '
    double_prev_char = ' '
    identifier_char = ' '
    while(1):
         x = ser.read(1)          # read one byte
         print(x)
         if double_prev_char == b'@':
            if identifier_char == b'1':
                os_pipe.push_to_buffer(x)
            elif identifier_char == b'2':
                storage_pipe.push_to_buffer(x)
            elif identifier_char == b'3':
                print('sending a byte to output')
                output_pipe.push_to_buffer(x)
            else:
                print('error')
            
         if prev_char == b'@':
            identifier_char = x
         double_prev_char = prev_char
         prev_char = x 

