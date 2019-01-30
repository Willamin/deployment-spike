# deployment-spike

## Setup
Add a `.env` file similar to:
```
TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
USER_OR_ORG=willamin
REPO=development-spike
```

## Using
### Creating a new deployment
Run `$ new-deployment.sh` to create a deployment.
This appears in GitHub with the state `pending`.
The script will return the deployment ID.

### Marking a deployment as a success
Run `$ success.sh $ID` to mark a deploment as successful.
This updates the GitHub state to `success`.
The first argument should be the deployment ID returned from the previous script.
