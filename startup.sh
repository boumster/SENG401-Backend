#!/bin/bash
cd /home/site/wwwroot

# Set environment variables
export PYTHONPATH=/home/site/wwwroot
export PORT=80

# Start the application with proper logging
gunicorn main:app \
    --workers 2 \
    --worker-class uvicorn.workers.UvicornWorker \
    --bind 0.0.0.0:80 \
    --timeout 600 \
    --preload \
    --log-level debug \
    --access-logfile - \
    --error-logfile - \
    --capture-output