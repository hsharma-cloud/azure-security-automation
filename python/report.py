import csv

file_path = "../powershell/storage_audit_report.csv"

print("Azure Security Compliance Report\n")

insecure_found = False

with open(file_path, newline="") as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        account = row["StorageAccount"]
        public_access = row["PublicAccess"]

        if public_access.lower() == "true":
            print(f"❌ {account} is PUBLIC — Security Risk!")
            insecure_found = True
        else:
            print(f"✅ {account} is secure.")

print("\nCompliance Summary:")

if insecure_found:
    print("FAIL: Public storage access detected.")
else:
    print("PASS: All storage accounts are secure.")
