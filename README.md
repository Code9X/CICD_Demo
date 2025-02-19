Step 1: Developer Pushes Code to GitHub (Dev Branch)

A developer writes new code (fix, feature, update).
They commit and push it to the Dev branch (git push origin dev).

Step 2: Open a Pull Request (PR) to Merge Dev → Main

The developer creates a Pull Request (PR) to merge changes into the Main branch.
Other developers review the PR, run tests, and approve it.
If everything is fine, the PR is merged into Main.

Step 3: GitHub Actions Triggers CI Pipeline

✅ What happens automatically?
GitHub Actions is triggered when code is merged into Main.
It runs tests to check if the code is working.
It builds the React app and .NET backend.
It pushes the build artifacts to GitHub for further use.
It triggers Jenkins for further steps.

Step 4: Jenkins Builds, Dockerizes, and Deploys

✅ What happens in Jenkins?
Jenkins pulls the latest code from the Main branch.
It creates Docker images for the frontend and backend.
It pushes these images to Azure Container Registry (ACR).
It deploys these images to Azure Kubernetes Service (AKS).

Step 5: Terraform Manages Infrastructure

✅ What Terraform does:
Ensures all cloud infrastructure is in place (Databases, Storage, etc.).
If any new infrastructure is needed (e.g., a new database), it creates or updates it automatically.

Step 6: AKS Hosts the Application

✅ Kubernetes (AKS) does the following:
Pulls the latest Docker images from Azure Container Registry.
Creates Pods & Deployments to run the frontend and backend.
Ensures the application is running and scales it if needed.

Step 7: Application is Live! 🎉

The new version is now deployed to Production and available to users.
If there are errors, monitoring tools detect them and send alerts.

