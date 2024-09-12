import hashlib
from typing import List, Optional

DIFFICULTY = 0x07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

"""
Please do not modify any of the signatures on the classes below so the
autograder can properly run your submission. You are free (and encouraged!) to
add additional data members as you implement these functions.
"""

class Output:
    """
    A transaction output.
    """

    def __init__(self, value: int, pub_key: str):
        self.value = value
        self.pub_key = pub_key

    # Serialize the output to bytes
    def to_bytes(self) -> bytes:
        return self.value.to_bytes() + bytes.fromhex(self.pub_key)

class Input:
    """
    A transaction input.
    """

    def __init__(self, output: Output, number: str):
        self.output = output
        self.number = number

    # Serialize the output to bytes
    def to_bytes(self) -> bytes:
        return self.output.to_bytes() + bytes.fromhex(self.number)


class Transaction:
    """
    A transaction in a block.
    """

    def __init__(self, inputs: List[Input], outputs: List[Output], sigs: List[str]):
        self.inputs = inputs
        self.outputs = outputs
        self.sigs = sigs

        self.update_number()

    # Set the transaction number to be SHA256 of self.to_bytes()
    def update_number(self):
        # TODO
        pass

    # Get the hash of the transaction before signatures; signers need to sign
    # this value!
    def hash_to_sign(self) -> str:
        m = hashlib.sha256()

        for i in self.inputs:
            m.update(i.to_bytes())
        
        for o in self.outputs:
            m.update(o.to_bytes())

        return m.hexdigest()
    
    def to_bytes(self) -> str:
        m = b''

        for i in self.inputs:
            m += i.to_bytes()
        
        for o in self.outputs:
            m += o.to_bytes()

        for s in self.sigs:
            m += bytes.fromhex(s)

        return m.hex()
    
class Block:
    """
    A block on a blockchain.
    """

    def __init__(self, prev: str, tx: Transaction, nonce: Optional[str]):
        self.tx = tx
        self.nonce = nonce
        self.prev = prev

    # Find a valid nonce such that the hash below is less than the DIFFICULTY
    # constant 
    def mine(self):
        # TODO
        pass 
    
    # Hash the block
    def hash(self) -> str:
        m = hashlib.sha256()

        m.update(bytes.fromhex(self.prev))
        m.update(bytes.fromhex(self.tx.to_bytes()))
        m.update(bytes.fromhex(self.nonce))

        return m.hexdigest()
    
class Blockchain:
    """
    A blockchain.
    """
    
    def __init__(self, chain: List[Block], utxos: List[str]):
        self.chain = chain
        self.utxos = utxos
    
    def append(self, block: Block) -> bool:
        # TODO
        pass

class State:
    """
    All chains that the node is currently aware of.
    """
    def __init__(self):
        self.chains = []

    # Create a new chain with the given genesis block
    def new_chain(self, genesis: Block):
        # TODO
        pass

    # Attempt to append a block broadcast on the network
    def append(self, block: Block) -> bool:
        # TODO
        pass

    # Build a block on the longest chain you are currently tracking
    def build_block(self, tx: Transaction):
        # TODO
        pass

# Build and sign a transaction with the given inputs and outputs
def build_transaction(inputs, outputs, signing_keys) -> Transaction:
    # TODO
    pass