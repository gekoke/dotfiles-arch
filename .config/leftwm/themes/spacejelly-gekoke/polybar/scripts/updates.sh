#!/usr/bin/env bash
echo $({ checkupdates & yay -Qum; } | wc -l)

