# cFS Caelum Update Tool
This is a simple tool that does some of cFS calelum updates for an out of date app.

## What it does and what it does not do
The script, `caelum_update.sh` consists of various grep and sed commands to make replacements to out of date parts of code such as `TRUE`, `FALSE`, `boolean`, deprecated CFE api macros, and more. The script will make a direct replacement for all the instances of the out of date keyword that is being looked for in all `.h` and `.c` files. The commands follow the following format: `grep -rl --include \*.h --include \*.c "Old_keyword" . | xargs -t sed -i 's/Old_keyword/New_keyword/g'` where `Old_keyword` is the uncopatible caelum code and the `New_keyword` is the appropriate replacement. For marcros, booleans, and a few api calls that are removed, the script does a complete functioning replacement but for the rest of the updated api calls the script replaces the api call with the apripriate new api prototype as some of the parameters and output of the replacement api calls differ from the original non-caelum api calls. The prototypes will have to be filled in with the apropriate parameters and may involve restructuring blocks of code. 

This tool was developed and tested with a few arbitrary cFS apps and does not ensure all the updates are caught. Visit the [cFS](https://github.com/nasa/cFS) repo for full documentation on caelum.

## Getting started
Simply add `caelum_update.sh` to the root directory of the app in need up an update to caelum and run it as such: `./caelum_update.sh`. The repository consists of a very simple non-functional test app to test the replacements durring development and for a sanity check thus they have no purpose in using the script on an app. 
