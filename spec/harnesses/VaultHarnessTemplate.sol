pragma solidity 0.5.11;
import "contracts/vault/Vault.sol";

contract VaultHarness is VAULT_BASE {
    function Certora_isSupportedStrategy(address a) external view returns (bool) { return strategies[a].isSupported; }
    function Certora_isSupportedAsset(address _asset) external view returns (bool) { return assets[_asset].isSupported; }
    function Certora_getStrategyCount() external view returns (uint256) { return allStrategies.length; }
    function Certora_getAssetCount() public view returns (uint256) { return allAssets.length; }

    function init_state() external {}
}