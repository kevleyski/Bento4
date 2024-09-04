#!/bin/bash

SOURCE=/Users/klambert/vids/8K/8k60fps_stereo_VR180_volleyball.mp4
PATH=../../../cmake-build-debug:$PATH

setup_test() {
  if [ ! -f frag.m4s ]; then
    mp4fragment $SOURCE frag.m4s
  fi
  rm -rf kevs
}

setup_test