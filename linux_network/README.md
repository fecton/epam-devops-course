# Epam University
## Linux Networking

## Network map
![Image](./screenshots/task.png)
![Image](./screenshots/task2.png)
![Image](./screenshots/task3.png)
![Image](./screenshots/task4.png)

## 1. Створення мережі
![Image](./screenshots/net_struct.png)
### Server1's adapters (Ubuntu)
- Adapter 1: NAT
- Adapter 2: Internal Network (Net2)
- Adapter 3: Internal Network (Net3)
### Client1's adapters (Ubuntu)
- Adapter 1: Internal Network (Net2)
- Adapter 2: Internal Network (Net4)
### Client2's adapters (Cent OS)
- Adapter 1: Internal Network (Net3)
- Adapter 2: Internal Network (Net4)

## Configure adapters
### Server1
![Image](./screenshots/server_netplan.png)

### Client1
![Image](./screenshots/client1_netplan.png)

### Client2
![Image](./screenshots/client2_netplan.png)

## Ping
### Server -> Client 1
![Image](./screenshots/ping_server_client1.png)
### Server -> Client 2
![Image](./screenshots/ping_server_client2.png)
### Client 1 -> Server
![Image](./screenshots/ping_client1_server.png)
### Client 2 -> Server
![Image](./screenshots/ping_client2_server.png)

## (4) Routes
![Image](./screenshots/routes.png)
![Image](./screenshots/routes_tracepath.png)

## (5) SSH and ping
![Image](./screenshots/route_big_mask.png)
![Image](./screenshots/ssh.png)
![Image](./screenshots/ssh_connect.png)

## Internet
![Image](./screenshots/inet.png)
