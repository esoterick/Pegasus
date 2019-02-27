## Pegasus
[![Build Status](https://travis-ci.com/Rawaho/Pegasus.svg?branch=master)](https://travis-ci.com/Rawaho/Pegasus)  

### Information
A slapped together emulator for Virindi Integrator 2.

This code was my attempt at creating an emulator for Virindi Integrator 2.  
Various people have asked me for the source code since hosting ceased, so here it is.

When I wrote this code I never planned for it to be public, this has lead to some sections being pretty shit and slapped together with no thought or consideration, keep this in mind while looking at the code.

### Database
```
$ PGPASSWORD=adminpassword psql -U postgres -h hostname -p 5432 -d template1 --set=sslmode=require
psql 10.7
SSL connection (protocol: TLSv1.2, cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256, compression: off)
Type "help" for help.

defaultdb=> create database pegasus;
CREATE DATABASE
defaultdb=> create user pegasus with encrypted password 'somelongasspassword';
CREATE ROLE
defaultdb=> grant all privileges on database pegasus to pegasus;
GRANT
defaultdb=>
```