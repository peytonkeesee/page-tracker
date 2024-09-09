This was created as a part of this tutorial: https://realpython.com/docker-continuous-integration/#define-a-docker-based-continuous-integration-pipeline

CICD Steps:

Fetch the latest version of the mainline to your computer.
Create a feature branch from the mainline.
Open a pull request to get early feedback from others.
Keep working on your feature branch.
Fetch the mainline often, merging it into your feature branch and resolving any potential conflicts locally.
Build, lint, and test the code on your local branch.
Push your changes whenever the local build and tests succeed.
With each push, check the automated tests that run on the CI server against your feature branch.
Reproduce and fix any identified problems locally before pushing the code again.
Once you’re done, and all tests pass, request that one or more coworkers review your changes.
Apply their feedback until the reviewers approve your updates and all tests pass on the CI server after pushing your latest changes.
Close the pull request by merging the feature branch to the mainline.
Check the automated tests running on the CI server against the mainline with the changes from your feature branch integrated.
Investigate and fix any issues that may be found, for example, due to new updates introduced to the mainline by others between your last push and merging.