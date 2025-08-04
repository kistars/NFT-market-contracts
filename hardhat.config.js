require("@nomicfoundation/hardhat-toolbox");
require("dotenv")

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    sepolia: {
      url: `https://eth-sepolia.g.alchemy.com/v2/${SEPOLIA_ALCHEMY_AK}`,
      accounts: [`${SEPOLIA_PK_ONE}`, `${SEPOLIA_PK_TWO}`],
    },
    localhost: {
      url: "http://127.0.0.1:8545",  // 本地节点 RPC 地址
      chainId: 31337,                // Hardhat 本地默认 chainId
    }
  }
};
