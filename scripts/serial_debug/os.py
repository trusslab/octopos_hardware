# Copyright (c) 2020 - 2023, The OctopOS Authors
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

import sys
from mypipe import MyPipe
pipe = MyPipe('os')
while (1):
    a = pipe.read_from_pipe()
    print(a,end='')
    sys.stdout.flush()

