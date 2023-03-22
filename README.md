# bestClip ~ An incredible rails app for collecting the best photo of the day from each user.

### initial gem awareness
* `ruby version 3.2.1`
* `rails version 7.0.4`

## postgres local execution
* ```
  sudo apt install postgresql postgresql-contrib
  sudo -u postgres psql

  CREATE USER <username> WITH ENCRYPTED PASSWORD '<password>';
  ALTER ROLE <username> SUPERUSER CREATEDB CREATEROLE;
```
