import NonFungibleToken from 0x05
import CryptoPoops from 0x05

// Main script function to retrieve NFT IDs from an account's public collection
pub fun main(acctAddress: Address): [UInt64] {
    
    // Borrow a reference to an account's public Collection
    let pubRef = getAccount(acctAddress).getCapability(/public/CryptoPoopsCollection)
                    .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                    ?? panic("No collection associated with the address.")

    // Call the getIDs function to retrieve NFT IDs from the public collection
    return pubRef.getIDs()
}
