#!/bin/bash

ufw allow 80
ufw allow 443

ufw allow ssh


ufw default deny incoming
ufw default allow outgoing


ufw reload
