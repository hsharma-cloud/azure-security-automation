# Azure Security Automation

## Overview
This project demonstrates an end-to-end Azure security automation workflow using multiple tools to detect, prevent, validate, and report cloud security risks.

## Security Lifecycle Demonstrated

| Phase     | Tool        | Purpose |
|----------|------------|---------|
| Detect   | PowerShell | Identify insecure configurations |
| Prevent  | Terraform  | Deploy secure infrastructure |
| Enforce  | Bicep      | Azure-native secure deployment |
| Validate | Ansible    | Compliance verification |
| Report   | Python     | Security reporting & summary |

---

## Project Structure

azure-security-automation/
├── powershell/
│   ├── audit.ps1
│   └── storage_audit_report.csv
├── terraform/
│   └── main.tf
├── bicep/
│   └── storage.bicep
├── ansible/
│   └── validate.yml
├── python/
│   └── report.py

---

## Key Security Controls Implemented

- Public network access disabled
- TLS 1.2 enforced
- Automated compliance validation
- Security reporting

---

## Skills Demonstrated

- Azure Security Architecture
- Infrastructure as Code (Terraform & Bicep)
- Security Automation with PowerShell
- Compliance Validation with Ansible
- Security Reporting with Python
