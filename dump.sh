#!/bin/bash
docker-compose exec postgres sh -c "pg_dump -U postgres postgres" > export.sql
