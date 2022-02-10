import os
encoding = 'utf-8'
class MyPipe:
    def __init__(self , name):
        os.system('mkdir -p /tmp/Octopos')
        self.path = '/tmp/Octopos/' + name
        self.buffer = ''
        self.should_buffer = True
        return
    def push_to_buffer(self,data):
        try:
            self.buffer = self.buffer + str(data,encoding)
        except:
            print('cannot convert to string', data)
        if(self.path == '/tmp/Octopos/output'):
            print(self.path, ' buffer:' , self.buffer)
        if(self.should_buffer == False):
            self.flush_buffer()
        elif ('\n' in self.buffer):
            self.flush_buffer()
        return
    def flush_buffer(self):
        self.write_to_pipe(self.buffer)
        self.buffer = ''
        return
    def make(self):	
        mode = 0o600
        os.mkfifo(self.path, mode)
        return
    def write_to_pipe(self, data):	
        f = open(self.path , 'w')
        f.write(data)
        f.close()
        return
    
    def read_from_pipe(self):
        f = open( self.path, 'r')
        a = f.read()
        f.close()
        return a
    def read_byte_from_pipe(self):
        f = open( self.path, 'r')
        a = f.read(1)
        f.close()
        return a
    def wait_on_pipe(self):
        self.read_from_pipe()
        return
    def close(self):
        os.unlink(self.path)
        return	
    
    
