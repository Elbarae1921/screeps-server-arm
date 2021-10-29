FROM node:10
WORKDIR /screeps
RUN apt update && apt upgrade -y
RUN apt install -y build-essential tcl git software-properties-common curl wget
RUN curl -L https://github.com/screepers/screeps-launcher/releases/download/v1.14.0/screeps-launcher_v1.14.0_linux_arm64 > screeps-launcher
RUN chmod +x screeps-launcher
CMD ["./screeps-launcher"]
