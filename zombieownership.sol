<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>CryptoZombies front-end</title>
    <script language="javascript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="web3.min.js"></script>
    <script language="javascript" type="text/javascript" src="cryptozombies_abi.js"></script>
  </head>
  <body>

    <script>
      var cryptoZombies;

      function startApp() {
        var cryptoZombiesAddress = "YOUR_CONTRACT_ADDRESS";
        cryptoZombies = new web3js.eth.Contract(cryptoZombiesABI, cryptoZombiesAddress);
      }

      function getZombieDetails(id) {
        return cryptoZombies.methods.zombies(id).call();
      }

      function zombieToOwner(id) {
        return cryptoZombies.methods.zombieToOwner(id).call();
      }

      function getZombiesByOwner(owner) {
        return cryptoZombies.methods.getZombiesByOwner(owner).call();
      }

      window.addEventListener('load', function() {

        // Checking if Web3 has been injected by the browser (Mist/MetaMask)
        if (typeof web3 !== 'undefined') {
          // Use Mist/MetaMask's provider
          web3js = new Web3(web3.currentProvider);
        } else {
          // Handle the case where the user doesn't have Metamask installed
          // Probably show them a message prompting them to install Metamask
        }

        // Now you can start your app & access web3 freely:
        startApp()

      })
    </script>
  </body>
</html>
