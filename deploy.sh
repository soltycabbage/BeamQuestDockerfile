#!/bin/bash

cd /root
git clone https://github.com/soltycabbage/BeamQuest.git --recursive
cd BeamQuest
npm update
npm start
