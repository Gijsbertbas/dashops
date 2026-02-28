# Pi
- write raspian image to pi
- [install docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository)
- run [post install scripts](https://docs.docker.com/engine/install/linux-postinstall/)

# Add external (usb) volume for persistence
- sudo mkdir -p /mnt/usb
- sudo mount /dev/sda1 /mnt/usb   # adjust device as needed
- sudo mkdir -p /mnt/usb/dashops/prometheus /mnt/usb/dashops/grafana
- sudo chown -R 472:472 /mnt/usb/dashops/grafana
- sudo chown -R 65534:65534 /mnt/usb/dashops/prometheus

## format drive if needed
- lsblk
- sudo mkfs.ext4 /dev/sda1

# Application
- pull this repo
- copy .env and fill variables
- docker compose up -d
