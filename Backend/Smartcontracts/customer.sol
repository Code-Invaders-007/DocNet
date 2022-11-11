// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract customer{


struct  user{

    string name;
    string dob;
    string bloodgroup;
    string gender;
    string region;
    string uid;
}
user userstruct;

mapping(string=>user) index;
function newuser(string memory name,
    string memory dob,
    string memory bloodgroup,
    string memory gender,
    string memory region,
    string memory uid) public
    {
        
        
    userstruct.name=name;
    userstruct.dob=dob;
    userstruct.bloodgroup=bloodgroup;
    userstruct.gender=gender;
    userstruct.region=region;
    userstruct.uid=uid;

    index[uid]=userstruct;
    }
    
    


    function fetch(string memory uid) public view returns(string memory ,string memory ,string memory ,string memory ,string memory ) 
    {
        return (index[uid].name,index[uid].dob,index[uid].bloodgroup,index[uid].gender,index[uid].region);

    }

    


}

