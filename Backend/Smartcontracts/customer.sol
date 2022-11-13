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
    
    mapping(string=>string[]) files;
    
   

     //retrieve customers data
    function fetch(string memory uid) public view returns(string memory ,string memory ,string memory ,string memory ,string memory ) 
    {
        return (index[uid].name,index[uid].dob,index[uid].bloodgroup,index[uid].gender,index[uid].region);

    }


//adds file hash to blockchain
    function upadatefiles(string memory uid,string memory hash) public 
    {
       files[uid].push(hash);
    }



    //validates customers data
    function verify(string memory uid,string  memory hash1) public  view returns(bool)
    { 
        uint n=files[uid].length;
        uint i=0;
        while(i<n)
         {string memory s=files[uid][i];
            if (keccak256(abi.encodePacked(hash1)) == keccak256(abi.encodePacked(s)))
            return true;
            i++;
        }

        return false;


         

    }




}

