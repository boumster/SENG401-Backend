#!/bin/bash
gunicorn main:app --bind=0.0.0.0:80 --workers=2 --worker-class=uvicorn.workers.UvicornWorker