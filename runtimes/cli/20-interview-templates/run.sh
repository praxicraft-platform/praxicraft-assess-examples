#!/usr/bin/env bash
praxicraft-assess --non-interactive --output json interviews templates list
praxicraft-assess --non-interactive --output json interviews analytics
praxicraft-assess --non-interactive --output json interviews templates create --body '{"name":"Example template"}'
