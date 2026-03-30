# Open Source Audit: Shell Script Portfolio

**Course:** Open Source Software (OSS NGMC)
**Student Name:** Akshat Kumar
**Registration Number:** 24BSA10201
**Program:** B.Tech CSE (AIML), VIT Bhopal University

## 🎯 Chosen Software
**VLC Media Player**

*(Note: If you analyzed a different software in your PDF report, update the name above to match!)*

---

## 🛠️ Dependencies Required
To run these scripts successfully, you will need a Linux environment (such as a Virtual Machine, WSL, or a native installation) with the following standard tools available:
* **Bash Shell** (`/bin/bash`)
* **Standard GNU Core Utilities** (`cat`, `grep`, `awk`, `cut`, `du`, `ls`, `whoami`, `date`)
* **Package Manager**: The package inspector script (`script2_inspector.sh`) uses `rpm`. If you are running a Debian/Ubuntu-based system, you will need to modify the script to use `dpkg`.

---

## 📜 Script Descriptions

### 1. System Identity Report (`script1_identity.sh`)
**Description:** Acts as a welcome screen that introduces the underlying Linux system. It dynamically fetches and displays the Linux distribution name, kernel version, current logged-in user, home directory, system uptime, and current date/time, alongside a message regarding the OS open-source license.

### 2. FOSS Package Inspector (`script2_inspector.sh`)
**Description:** Checks whether a specific open-source package is installed on the system. It retrieves the version and license details if found, and uses a `case` statement to print a short philosophical note about the software's purpose in the FOSS ecosystem.

### 3. Disk and Permission Auditor (`script3_auditor.sh`)
**Description:** Iterates through a predefined list of critical system directories (e.g., `/etc`, `/var/log`) and reports their disk usage, ownership, and permissions. It also verifies the existence and permissions of the chosen software's local configuration directory.

### 4. Log File Analyzer (`script4_log.sh`)
**Description:** Parses a specified log file line-by-line to count the occurrences of a specific keyword (defaults to "error"). It includes error handling for missing or empty files and outputs the last 5 matching lines for quick debugging.

### 5. Open Source Manifesto Generator (`script5_manifesto.sh`)
**Description:** An interactive script that prompts the user with three questions regarding their views on software freedom and open-source tools. It concatenates the inputs into a personalized open-source philosophy statement and saves the output to a dynamically named text file.

---

## 🚀 Step-by-Step Instructions to Run the Scripts

Follow these steps in your Linux terminal to execute the scripts:

**Step 1: Clone the repository**
```bash
git clone [https://github.com/your-username/oss-audit-24BSA10201.git](https://github.com/your-username/oss-audit-24BSA10201.git)
cd oss-audit-24BSA10201
