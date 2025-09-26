// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Digital Asset Registry
 * @dev A smart contract for registering and managing digital assets with ownership tracking
 */
contract DigitalAssetRegistry {
    
    // ============ DATA STRUCTURES ============
    
    struct Asset {
        uint256 id;
        string name;
        string description;
        string metadataHash; // IPFS hash or other metadata reference
        address owner;
        uint256 createdAt;
        bool isActive;
        uint256 transferCount;
    }
    
    struct Owner {
        address ownerAddress;
        uint256[] assetIds;
