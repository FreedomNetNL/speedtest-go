#!/bin/sh

adduser --quiet --system --home /var/lib/librespeed-go --no-create-home \
            --group --gecos "LibreSpeed-Go" librespeed

systemctl daemon-reload
systemctl enable librespeed-go
systemctl start librespeed-go