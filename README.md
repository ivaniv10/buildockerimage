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
  2. Put your Dockerhub login credentials in your .bashrc (or .bash_profile) file - it's usually located on you home directory:
      ```bash
      cd 
      vim .bashrc
      ```
      Add these lines to the file:
      ```vim
		    export MY_DOCKERHUB_USER='put your Dockerhub user here'
		    export MY_DOCKERHUB_PASS='put your Dockerhub pass here'
	    ```
      Save and close the file:
      ```vim
      ZZ
      ```
  3. Put a Dockerfile inside the same folder as the bash script
  4. Run the script in your terminal, providing a name for the newly created docker image:  
    ```bash
     bash builddockerimage.sh 'your imagename here'
    ```
  5. Check your repo on Dockerhub whether the new image is there
