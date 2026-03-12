# UFW (Uncomplicated Firewall) Configuration & Testing Guide

This project demonstrates the installation, configuration, and testing of **UFW** on an Ubuntu Server. It includes steps for managing ports, enabling/disabling the firewall, and verifying connectivity from a remote system (Windows).

## Table of Contents
1. [Installation](#1-installation)
2. [Basic Configuration](#2-basic-configuration)
3. [Managing Firewall Status](#3-managing-firewall-status)
4. [Testing Connectivity](#4-testing-connectivity)
5. [Summary of Commands](#5-summary-of-commands)

---

## 1. Installation
Before installing any new packages, it's essential to update the local package index.

* **Update packages:**
    ```bash
    sudo apt update
    ```
* **Install UFW:**
    ```bash
    sudo apt install ufw
    ```
* **Verify Installation:**
    ```bash
    ufw --version
    ```
    *(The version used in this demo is 0.36.2)*

---

## 2. Basic Configuration
To secure the server, we need to explicitly allow or deny specific services.

* **Allow SSH (Port 22):** Necessary to maintain remote access.
    ```bash
    sudo ufw allow ssh
    ```
* **Deny HTTP (Port 80):** Restricting web access for testing purposes.
    ```bash
    sudo ufw deny http
    ```

---

## 3. Managing Firewall Status
You can easily turn the firewall on or off and check which rules are currently active.

* **Enable UFW:**
    ```bash
    sudo ufw enable
    ```
* **Disable UFW:**
    ```bash
    sudo ufw disable
    ```
* **Check Detailed Status:**
    ```bash
    sudo ufw status verbose
    ```

---

## 4. Testing Connectivity
The video demonstrates how to verify the firewall rules from a Windows machine using PowerShell and a Web Browser.

* **HTTP Test:** Attempting to reach the server's IP (e.g., `http://192.168.1.22`).
    * *Result (UFW Disabled):* The Apache2 default page is accessible.
    * *Result (UFW Enabled & HTTP Denied):* The site cannot be reached (Connection Timed Out).
* **SSH Test:** Attempting to connect via PowerShell.
    ```powershell
    ssh admin@<ip_address>
    ```
    * *Result (SSH Allowed):* Connection successful after entering the password.
    * *Result (SSH Denied):* Connection fails or hangs.

---

## 5. Summary of Commands

| Task | Command |
| :--- | :--- |
| **Install UFW** | `sudo apt install ufw` |
| **Enable Firewall** | `sudo ufw enable` |
| **Disable Firewall** | `sudo ufw disable` |
| **Allow a Service** | `sudo ufw allow [service/port]` |
| **Deny a Service** | `sudo ufw deny [service/port]` |
| **Check Rules** | `sudo ufw status` |
