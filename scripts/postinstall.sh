#!/bin/sh

adduser --quiet --system --home /var/lib/librespeed-go --no-create-home \
            --group --gecos "LibreSpeed-Go" librespeed

touch /var/lib/librespeed-go/librespeed-go.db
chown -R librespeed:librespeed /var/lib/librespeed-go/
chmod 0600 /var/lib/librespeed-go/librespeed-go.db

systemctl daemon-reload
systemctl enable librespeed-go
systemctl start librespeed-go
