# 🚀 React DevSecOps CI Pipeline (No Docker)

This project demonstrates a lightweight, Dockerless **DevSecOps pipeline** for a React.js application using **GitHub Actions**, **Trivy**, and **Checkov**. It covers essential security scanning steps integrated directly into the CI process.

---

## 📌 Features

- ✅ CI pipeline triggered on every `push` or `pull_request`
- 🔍 Scans source code for vulnerabilities & secrets using **Trivy**
- 🔐 Scans Terraform IaC for security misconfigurations using **Checkov**
- 💡 No Docker required
- 🛠️ Modular and easy to extend

---

## 🛠️ Tech Stack

| Tool              | Role                                      |
|-------------------|-------------------------------------------|
| React.js          | Frontend application                      |
| GitHub Actions    | CI/CD orchestration                       |
| Trivy             | File-system vulnerability & secrets scan  |
| Checkov           | Terraform security scanning (IaC)         |

---

## 📂 Project Structure

react-devsecops/
├── .github/workflows/ci.yml # GitHub Actions workflow
├── terraform/ # Terraform IaC files
│ └── main.tf
├── src/ # React source code
│ └── ...
├── package.json
└── README.md


---

## 🚦 CI Workflow: `.github/workflows/ci.yml`

### Trigger

```yaml
on: [push, pull_request]


Checkout Code

yaml
Copy
Edit
- uses: actions/checkout@v3
Set Up Node.js

yaml
Copy
Edit
- uses: actions/setup-node@v4
  with:
    node-version: '18'
Install Dependencies

yaml
Copy
Edit
- run: npm install
Run Trivy Scan (Filesystem Mode)

yaml
Copy
Edit
- uses: aquasecurity/trivy-action@master
  with:
    scan-type: fs
    scan-ref: .


## Terraform
Run Checkov on Terraform Code

yaml
Copy
Edit
- uses: bridgecrewio/checkov-action@master
  with:
    directory: ./terraform
    output_format: sarif
    soft_fail: true
✅ Prerequisites
Node.js installed (v18+)

Terraform file(s) in ./terraform directory (e.g. main.tf)

GitHub repository with workflow enabled under .github/workflows/ci.yml


📈 How to Use
Clone this repo:

bash
Copy
Edit
git clone https://github.com/your-username/react-devsecops.git
cd react-devsecops
Push changes to trigger the pipeline:

bash
Copy
Edit
git add .
git commit -m "trigger CI"
git push origin main



---

Let me know if you want:
- Badge support (build passing, tools used)
- Deployment instructions to Vercel/Netlify
- Extended versions with PR gating or approvals
