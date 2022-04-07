#!/usr/bin/env bash
echo $({ checkupdates & paru -Qum; } | wc -l)

