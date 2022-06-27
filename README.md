## Prerequisites
  1. Your OS is Linux or Mac
  2. You have Docker installed on your machine
  3. You can manage Docker as non-root user
      ```bash
      sudo groupadd docker
      sudo usermod -aG docker $USER
      ```
      Log out and log back in so that your group membership is re-evaluated.



## Usage
  1. The script must be "executable"
      ```bash
      sudo chmod +x builddockerimage.sh
      ```
      OR
      ```bash
       sudo chmod 0755 builddockerimage.sh
      ```
