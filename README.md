
# DevOps Shell Script Collection

This repository contains useful shell scripts tailored for DevOps tasks. Each script is standalone and solves a specific real-world automation or monitoring problem.

---

## 📜 Script List & Descriptions

### 1. `log_rotator.sh`
Archives `.log` files larger than 1MB with a timestamp appended to the filename.

### 2. `url_checker.sh`
Checks if a provided URL is reachable. Retries up to 5 times with a 30-second interval between attempts.

### 3. `disk_alert.sh`
Checks disk usage of the root (`/`) partition. Alerts if usage exceeds 80%.

### 4. `nginx_watchdog.sh`
Monitors the `nginx` service. Restarts it if it's found to be inactive or failed.

### 5. `backup_script.sh`
Backs up a specified source directory to a destination. Accepts `-s` (source) and `-d` (destination) as flags.

### 6. `top5_logs.sh`
Finds the top 5 largest files in the `/var/log` directory.

### 7. `user_check.sh`
Checks if a specified user exists on the system.

### 8. `service_monitor.sh`
Takes a systemd service name as input and checks its status, restarting it if it's inactive.

### 9. `file_watch.sh`
Watches a directory and reports file changes using `inotifywait` (requires `inotify-tools` package).

### 10. `port_checker.sh`
Checks if a given TCP port is open on a remote host using `nc`.

---

## 🔧 How to Use

Make the scripts executable:

```bash
chmod +x script_name.sh
```

Run with:

```bash
./script_name.sh
```

Some scripts accept flags or parameters. Run with `--help` or check the top of each script for usage notes.

---

## 📦 Requirements

Some scripts may require additional packages:

- `inotify-tools` for `file_watch.sh`
- `nc` or `netcat` for `port_checker.sh`

Install with your package manager:

```bash
sudo apt install inotify-tools netcat
```

---

## 📌 Author
Generated and organized with help from ChatGPT + curated learning by Kiran.

---
