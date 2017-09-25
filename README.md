# NodeJS Image

A compact docker image based on Alpine Linux with:

- NodeJS 8 (8.5.0)
- kms-env 
- awscli
- s3-cp
- git
- openssh
- openssl

This image comes with [kms-env](https://github.com/ukayani/kms-env) installed.
If you pass in environment variables encrypted using `kms-env`. 
The image will automatically decrypt them. 

In order for decryption
to work, your docker container must be running on an ec2-instance with
a role that has access to AWS KMS (and the master key used for encryption).
