# Configuring

* open manipulate.sh
* customize variables
	* WINDOWS_HOST - connect to this host behind ssh
	* TARGET_LOCAL_DIR - and copy this dir to WINDOWS_HOST
	* TARGET_REMOTE_DIR - to WINDOWS_HOST directory $TARGET_REMOTE_DIR
	* TARGET_REMOTE_SCRIPT - and execute this script in remote WINDOWS_HOST (live hack $1 args = $TARGET_REMOTE_DIR, see example: ./transformmeplease.sh)
	* TARGET_DIR - at final: copy transformed TARGET_REMOTE_DIR into $TARGET_DIR

# Run

* Copy ssh-keys to remote host by ssh-copy-id $WINDOWS_HOST
* Run manipulate.sh script by ./manipulate.sh
* You are happy?

For example :

```
export WINDOWS_HOST=tolkv@localhost	# remote host
export TARGET_LOCAL_DIR=./in 		# example dir for upload, transform and download
export TARGET_REMOTE_DIR=~/out		# remote directory to upload files who contains in ./in
export TARGET_REMOTE_SCRIPT="~/transformmeplease.sh $TARGET_REMOTE_DIR" # script in remote host with args
export TARGET_DIR=./iamtransformeddir	# result dir
```

