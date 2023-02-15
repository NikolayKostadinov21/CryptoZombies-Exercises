pragma solidity 0.5.0;
contract CallerContract {
    address private oracleAddress;
    function _oracleInstanceAddress(address _oracleInstanceAddress) public {
        oracleAddress = _oracleInstanceAddress;
    }
}
