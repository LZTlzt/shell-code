#!/bin/bash
awk 'ORS=NR%3?" ":"\n"{print}' 1.txt
