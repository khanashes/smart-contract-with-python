# Smart Contract Deployment With Python
![alt text](https://miro.medium.com/max/1194/1*5BbuCZSM0Io6cWIbWl_Jng.png)
![alt text](https://img.shields.io/badge/P-Python-Green)  ![alt text](https://img.shields.io/badge/S-Solidity-White)  ![alt text](https://img.shields.io/badge/B-Blockchain-Green)

## Requirements
- Python 3.8.x
- Virtualenv (virtual environment package)

## Installation
1. Clone the project
2. ```pip install -r requirements.txt```
3. create .env file in root directory by entring the private key of account you want to deploy from ```echo "PRIVATE_KEY_1='you private key'" >> .env```
4. Try running Ganache on your local environment
5. Then run command ```brownie run scripts/1_deploy_token.py ```
6. Now your contract is deployed you can interact with it.

