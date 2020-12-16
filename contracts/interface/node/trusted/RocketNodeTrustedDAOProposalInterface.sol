pragma solidity 0.6.12;

// SPDX-License-Identifier: GPL-3.0-only

interface RocketNodeTrustedDAOProposalInterface {
    function getProposalTotal() external view returns (uint256);
    function getProposalProposer(uint256 _proposalID) external view returns (address);
    function getProposalValid(address _nodeAddress) external view returns (bool);
    function getProposalExpires(uint256 _proposalID) external view returns (uint256);
    function getProposalCreated(uint256 _proposalID) external view returns (uint256);
    function getProposalVotesFor(uint256 _proposalID) external view returns (uint256);
    function getProposalVotesAgainst(uint256 _proposalID) external view returns (uint256);
    function getProposalCancelled(uint256 _proposalID) external view returns (bool);
    function getProposalExecuted(uint256 _proposalID) external view returns (bool);
    function getProposalExecutedExpired(uint256 _proposalID) external view returns (bool);
    function getProposalPayload(uint256 _proposalID) external view returns (bytes memory);
    function getProposalQuorumVotesRequired() external view returns (uint256);
    function getProposalReceiptHasVoted(uint256 _proposalID, address _nodeAddress) external view returns (bool);
    function getProposalReceiptSupported(uint256 _proposalID, address _nodeAddress) external view returns (bool);
    function proposalAdd(uint256 _proposalType, string memory _proposalMessage, bytes memory _payload) external returns (bool);
    function proposalVote(uint256 _proposalID, bool _support) external; 
    function proposalCancel(uint256 _proposalID) external;
    function proposalExecute(uint256 _proposalID) external;
}