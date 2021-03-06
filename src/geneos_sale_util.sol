pragma solidity ^0.4.11;

import "./geneos_sale.sol";

contract genEOSSaleUtil {
    genEOSSale  public  sale;

    function genEOSSaleUtil(genEOSSale _sale) {
        sale = _sale;
    }

    function dailyTotals() constant returns (uint[351] result) {
        for (uint i = 0; i < 351; i++) {
            result[i] = sale.dailyTotals(i);
        }
    }

    function userBuys(address user) constant returns (uint[351] result) {
        for (uint i = 0; i < 351; i++) {
            result[i] = sale.userBuys(i, user);
        }
    }

    function userClaims(address user) constant returns (bool[351] result) {
        for (uint i = 0; i < 351; i++) {
            result[i] = sale.claimed(i, user);
        }
    }
}
