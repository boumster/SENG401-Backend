#!/bin/bash
cd /home/site/wwwroot

# Set environment variables
export PYTHONPATH=/home/site/wwwroot
export PORT=8000

# Start the application with proper logging
gunicorn main:app \
    --workers 4 \
    --worker-class uvicorn.workers.UvicornWorker \
    --bind 0.0.0.0:8000 \
    --timeout 120 \
    --log-level info \
    --access-logfile - \
    --error-logfile - \
    --capture-output