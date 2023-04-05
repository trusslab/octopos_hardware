# Copyright (c) 2020 - 2023, The OctopOS Authors
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cp -r $1 $2
l1=${1,,}
l2=${2,,}
cd $2
mv $l1.sv $l2.sv
mv $l1.sby $l2.sby
sed -i 's/'$l1'/'$l2'/g' $l2.sby
