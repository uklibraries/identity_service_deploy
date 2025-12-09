identity_service_deploy
=======================

`identity_service_deploy` is a set of scripts and initial data for a deployment of
[identity_service](https://github.com/uklibraries/identity_service) .

You must provide your own `.env`. An example is provided. The `DJANGO_SUPERUSER_PASSWORD` and
`DJANGO_API_PASSWORD` variables do not need to be set. The values in `.env.example` correspond
to the included default database.

Installation
------------

For best experience, deploy with an appropriate [Ansible playbook](https://github.com/uklibraries/ukl-ansible-playbooks/).

Install and extract the repo:

```
git clone https://github.com:uklibraries/identity_service_deploy.git
cd identity_service_deploy
rm -rf .git
```

Place your production-ready `.env` in the top-level directory and replace the default
database in `backups/data/iddatabase.sql` with a copy of your production database.

Pull the image:

```
docker pull ghcr.io/uklibraries/identity_service
```

Start things up:

```
docker compose up -d
```

License
-------

Copyright (C) 2025 MLE Slone. Licensed under the [MIT license](LICENSE.md).
