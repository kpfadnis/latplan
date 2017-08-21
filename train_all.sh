#!/bin/bash

trap exit SIGINT

./strips.py conv puzzle learn_plot_dump mandrill 3 3 36 20000
./state_discriminator3.py samples/puzzle_mandrill_3_3_36_20000_conv/ learn
./action_autoencoder.py   samples/puzzle_mandrill_3_3_36_20000_conv/ learn
./action_discriminator.py samples/puzzle_mandrill_3_3_36_20000_conv/ learn

./strips.py conv puzzle learn_plot_dump mnist 3 3 36 20000
./state_discriminator3.py samples/puzzle_mnist_3_3_36_20000_conv/ learn
./action_autoencoder.py   samples/puzzle_mnist_3_3_36_20000_conv/ learn
./action_discriminator.py samples/puzzle_mnist_3_3_36_20000_conv/ learn

./strips.py conv puzzle learn_plot_dump spider 3 3 36 20000
./state_discriminator3.py samples/puzzle_spider_3_3_36_20000_conv/ learn
./action_autoencoder.py   samples/puzzle_spider_3_3_36_20000_conv/ learn
./action_discriminator.py samples/puzzle_spider_3_3_36_20000_conv/ learn

./strips.py conv hanoi learn_plot_dump 7 4 36 20000
./state_discriminator3.py samples/hanoi_7_4_36_20000_conv/ learn
./action_autoencoder.py   samples/hanoi_7_4_36_20000_conv/ learn
./action_discriminator.py samples/hanoi_7_4_36_20000_conv/ learn

./strips.py conv lightsout learn_plot_dump digital 4 36 20000
./state_discriminator3.py samples/lightsout_digital_4_36_20000_conv/ learn
./action_autoencoder.py   samples/lightsout_digital_4_36_20000_conv/ learn
./action_discriminator.py samples/lightsout_digital_4_36_20000_conv/ learn