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
---

## 🏗️ Azure Landing Zone Architecture

This project implements a hub-spoke landing zone in Microsoft Azure using PowerShell and Infrastructure-as-Code principles.

### 🎯 Design Goals

- Centralized networking
- Environment isolation (Prod vs Dev)
- Secure and scalable architecture
- Cost-aware resource management

---

## 🌐 Network Topology

                vnet-hub (rg-platform-network)
                      │
        ┌─────────────┴─────────────┐
        │                           │
 vnet-prod (rg-landingzone-prod)   vnet-dev (rg-landingzone-dev)

---

## 🧱 Resource Groups

| Resource Group | Purpose |
|---------------|--------|
| rg-platform-network | Hub network & shared services |
| rg-platform-security | Security & governance |
| rg-landingzone-prod | Production workloads |
| rg-landingzone-dev | Development workloads |

---

## 🌐 Virtual Networks

| VNet | Role | Address Space |
|------|------|--------------|
| vnet-hub | Central hub | 10.100.0.0/16 |
| vnet-prod | Production spoke | 10.110.0.0/16 |
| vnet-dev | Development spoke | 10.120.0.0/16 |

---

## 🔐 Hub Subnets

| Subnet | Purpose |
|-------|--------|
| AzureFirewallSubnet | Reserved for Azure Firewall |
| snet-shared | Shared services & private endpoints |

---

## 🔗 VNet Peering

| Connection | Purpose |
|-----------|--------|
| hub ↔ prod | Secure production connectivity |
| hub ↔ dev | Secure development connectivity |

---

## 💰 Cost Governance

During this lab:

- Removed unused VMs and Bastion
- Verified no NSG flow logs enabled
- Confirmed Network Watcher is free
- Ensured no hidden charges

---

## 🛠️ Tools Used

- Azure PowerShell
- Azure CLI
- Terraform
- Bicep
- Ansible
- Python

---

## 📌 Key Outcomes

✔️ Built enterprise hub-spoke network  
✔️ Implemented environment isolation  
✔️ Practiced cost governance  
✔️ Automated Azure infrastructure  

This project demonstrates foundational skills required for Azure Cloud and Security Engineering roles.
