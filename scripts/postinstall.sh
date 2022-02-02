#!/bin/sh

systemctl daemon-reload
systemctl enable librespeed-go
systemctl start librespeed-go