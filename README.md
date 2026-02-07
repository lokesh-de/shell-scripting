# 📧 Automated Email Reminder using Shell Script (SMTP)

This project sends an **automated email reminder** using a **Shell Script** and **SMTP**.  
The script is scheduled to run **Monday to Friday at 7:15 AM IST** using either:

- ✅ Linux Cron (on EC2 or any Linux server)

## 🚀 What We Did

- Created a shell script `remainder.sh` to send email using **SMTP**
- Tested the script manually from terminal
- Automated the execution using:
  - Cron job on Linux / EC2
- Configured the schedule to run:
  - 🗓 Monday to Friday
  - ⏰ 7:15 AM IST (01:45 UTC)

## 🛠 Technologies Used

- **Shell Scripting (bash / sh)**
- **SMTP** (for sending emails)
- **Linux Cron** (for scheduling on EC2/Linux)
- **GitHub** (code hosting & CI scheduler)
- **Linux / Amazon EC2** (optional runtime)

## ✅ Advantages

- ⏰ Fully automated email reminders
- 📧 Uses SMTP (works with Gmail, Outlook, Office365, etc.)
- 🔁 Runs only on weekdays (Mon–Fri)
- ⚙️ Easy to change schedule
- ☁️ Reliable cloud execution with GitHub Actions
- 📦 Simple and lightweight shell script solution


## ⚙️ Configuration

### 1️⃣ Configure SMTP in `remainder.sh`

Update your script with your SMTP details:

- SMTP server (e.g. `smtp.gmail.com`)
- Port (e.g. `587` or `465`)
- Username (your email)
- Password / App Password
- To address
- Subject and message
