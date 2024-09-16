# Ansible Directory

This directory contains my Ansible playbooks and configurations for automating various tasks as part of my DevOps project.

## Contents

- **Ansible Playbooks**: Playbooks that automate tasks such as software installation, configuration, and file copying.
- **Roles**: Any custom roles that have been created for specific automation tasks.
  
> **Note**: Configuration files like `ansible.cfg` and sensitive information such as inventory files or variables with credentials are not tracked or pushed to the repository due to security concerns. Ensure to add and configure them locally.

## How to Use

Run any playbook by using the following command:

```bash
ansible-playbook <playbook-name>.yml
