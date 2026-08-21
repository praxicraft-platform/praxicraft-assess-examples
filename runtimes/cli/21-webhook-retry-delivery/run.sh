#!/usr/bin/env bash
praxicraft-assess --non-interactive --yes webhooks retry-delivery "${PRAXICRAFT_WEBHOOK_ID:?}" "${PRAXICRAFT_DELIVERY_ID:?}"
