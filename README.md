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


---

## Architecture Overview

This project implements a layered cloud security workflow:

1. **PowerShell Audit**
   - Scans Azure storage accounts
   - Detects public access risks
   - Exports findings to CSV

2. **Terraform Deployment**
   - Deploys secure storage accounts
   - Disables public network access
   - Enforces TLS 1.2

3. **Bicep Deployment**
   - Azure-native secure resource deployment
   - Applies governance tags
   - Enforces secure defaults

4. **Ansible Validation**
   - Verifies compliance settings
   - Ensures public access is disabled
   - Confirms TLS enforcement

5. **Python Reporting**
   - Reads audit results
   - Generates compliance summary
   - Simulates security dashboard output

### Security Principles Demonstrated

- Zero Trust (no public access)
- Defense in depth
- Automated compliance validation
- Infrastructure as Code security
