#!/bin/bash

redis-server &
cd /opt/soltycabbage
git clone https://github.com/soltycabbage/BeamQuest.git --recursive
cd BeamQuest
npm update
NODE_ENV=production NODE_PATH=public:app node app
