#! /bin/sh
#
# screenrecord.sh
# Copyright (C) 2020 lain <lain@cyberia>
#
# Distributed under terms of the MIT license.
#

ffmpeg -y -video_size 2880x1800 -framerate 30 -f x11grab -i :1.0 -f pulse -ac 2 -i 0 ~/screencast/screen1_recording_`date '+%Y-%m-%d_%H-%M-%S'`.mp4
