#!/usr/bin/env python3

import argparse
import json


def create_ansible_inventory(all_ip_addresses: dict, inventory_file: str, is_overwrite: bool) -> None:
    mode = 'w' if is_overwrite else 'a'
    with open(inventory_file, mode) as f:
        for group, ips in all_ip_addresses.items():
            f.write(f"[{group}]\n")
            for idx, ip in enumerate(ips):
                f.write(f"{group}_{idx} ansible_host={ip}\n")


def main():
    parser = argparse.ArgumentParser(description="Script for building ansible hosts.ini from a JSON file")
    parser.add_argument("json_file", help="Path to JSON file with Terraform output")
    parser.add_argument("inventory_file", help="Output Ansible inventory file")
    parser.add_argument("-o", "--overwrite", action="store_true", help="Overwrite existing inventory file")
    args = parser.parse_args()

    with open(args.json_file, "r") as f:
        all_ip_addresses = json.load(f)

    create_ansible_inventory(all_ip_addresses["all_ip_addresses"]["value"], args.inventory_file, args.overwrite)


if __name__ == "__main__":
    main()
