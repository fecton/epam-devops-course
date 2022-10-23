#!/bin/bash

echo "Copy task_C.sh to /usr/bin: (sudo cp task_C.sh /usr/bin/)"
echo "Write this after (crontab -e)"
echo "* 0 0 0 0 bash /usr/bin/task_C.sh /home/junops/epam_1 /home/junops/backups/" 

echo "To restore data:"
echo "tar -tzvf /home/junops/backups/your_backup.tgz"
echo "tar -tzvf /home/junops/backups/your_backup.tgz -C /tmp"

