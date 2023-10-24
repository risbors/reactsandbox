# React sandbox environment for begginers and enthusiasts

## Prerequisites

### Windows WSL2
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) >= 4.24.2
- [IDE editor (VS code)](https://code.visualstudio.com/)
- WSL2 (Windows Subsystem for Linux)

## Procedure

### Windows WSL2
1. Start your WSL2 distro and navigate to your desired working directory, I am using `~/Sandbox` for this purpose and following steps
2. Clone the repository `git clone https://github.com/risbors/reactsandbox`
3. Change your working directory to `reactsandbox` so your present working directory is `/home/YOUR_USERNAME/Sandbox/reactsandbox`
4. Make sure that you don't have port `8080` in use on your WSL2 distro and your host environment by some other project or service
    - If so please feel free to modify the port in docker-compose.yml at line 7 before executing the `docker-compose` command to any port of your choice
5. Run `docker-compose up --build -d`
    - `--build` will build the Docker image
    - `-d` will run the container in detached mode (meaning the standard in, out, error is not piped through your current terminal session)
6. Since we are in detached mode you can monitor the container progress in Docker Desktop within Logs tab
7. Once the npm completes installation and npm server is started you can visit your project on local browser `http://localhost:8080` or with port you decided to go previously
8. From here you can stop `docker-compose stop` and start a container `docker-compose start`

## Verification

### Windows WSL2
1. Go to your Docker desktop application and click on container Logs section and you should see a success message, do note that it might take some time (aprox few min, but that depends on you internet connection, hardware, etc ...)
    ```
    2023-10-23 16:36:22 Compiled successfully!
    2023-10-23 16:36:22 
    2023-10-23 16:36:22 You can now view my-app in the browser.
    2023-10-23 16:36:22 
    2023-10-23 16:36:22   Local:            http://localhost:3000
    2023-10-23 16:36:22   On Your Network:  http://172.25.0.2:3000
    ```