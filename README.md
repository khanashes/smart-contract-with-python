# Smart Contract Deployment With Python
![alt text](https://miro.medium.com/max/1194/1*5BbuCZSM0Io6cWIbWl_Jng.png)
![alt text](https://img.shields.io/badge/P-Python-Green)  ![alt text](https://img.shields.io/badge/S-Solidity-White)  ![alt text](https://img.shields.io/badge/B-Blockchain-Green)

## Requirements
- Python 3.8.x
- Virtualenv (virtual environment package)
- Ganache running locally

## Installation
1. Clone the project
2. Create virtual environment for python
3. ```pip install -r requirements.txt```
4. ```brownie networks add development local host=http://127.0.0.1:7545 cmd=ganache``` before running this command make sure ganache desktop is running.
5. create .env file in root directory by entring the private key of account you want to deploy from ```echo "PRIVATE_KEY_1='you private key'" >> .env```
6. Try running Ganache on your local environment
7. Then run command ```brownie run scripts/1_deploy_token.py ```
8. Now your contract is deployed you can interact with it.

