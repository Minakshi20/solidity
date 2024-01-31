// src/Web3Integration.js
import { useEffect, useState } from 'react';
import Web3 from 'web3';
import ethProvider from 'eth-provider';

const Web3Integration = () => {
  const [web3, setWeb3] = useState(null);

  useEffect(() => {
    const initializeWeb3 = async () => {
      try {
        // Connect to MetaMask or other Ethereum wallet providers
        const provider = ethProvider();
        const web3Instance = new Web3(provider);
        setWeb3(web3Instance);
      } catch (error) {
        console.error('Error initializing Web3:', error);
      }
    };

    initializeWeb3();
  }, []);

  return web3;
};

export default Web3Integration;
