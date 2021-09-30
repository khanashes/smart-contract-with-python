import os
from dotenv import load_dotenv
from brownie import Wei,accounts, MyContract
load_dotenv()

def main():
    deploy_account = accounts.add(os.environ['PRIVATE_KEY_1'])
    deployment_params = {
        'from':deploy_account,
        'value':Wei('10 ether')
    }
    my_contract = MyContract.deploy(deployment_params)
    return my_contract