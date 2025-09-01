Lachlan's Cookie Website

This repository contains a single static HTML site served by a tiny Node/Express server so it can be containerized and deployed to Google Cloud Run.

Quick local run

1. Install dependencies:

   npm install

2. Start server:

   npm start

3. Open http://localhost:8080/cokie%20website.html

Build and test Docker image locally

1. Build:

   docker build -t lachlans-cookie-site:local .

2. Run:

   docker run -p 8080:8080 lachlans-cookie-site:local

3. Open http://localhost:8080/cokie%20website.html

Deploy to Google Cloud Run (summary)

1. Install and authenticate Google Cloud SDK and set a project.
2. Build and submit the image to Artifact Registry or Container Registry, or use Cloud Build for a quick deploy.

Example using gcloud (replace PROJECT_ID and REGION):

   gcloud builds submit --tag gcr.io/PROJECT_ID/lachlans-cookie-site
   gcloud run deploy lachlans-cookie-site --image gcr.io/PROJECT_ID/lachlans-cookie-site --platform managed --region REGION --allow-unauthenticated

See Google Cloud Run docs for more details.
