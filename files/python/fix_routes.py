import os

line_number: int = 150
template_path: str = "../modules/virtual_machine/templates/linux/network/"

source_file_path: str = "runcmd_end_file.txt"
with open(source_file_path, "r") as source_file:
    lines_to_insert: list = source_file.readlines()

for i in os.listdir(template_path):
    if i.endswith(".yaml") and i != "static_ip.yaml":
        target_file_name: str = i
        target_file_absolute_path: str = os.path.join(template_path, target_file_name)
        
        with open(target_file_absolute_path, "r") as target_file:
            target_lines: list = target_file.readlines()

        target_lines: list = target_lines[:line_number] + lines_to_insert + target_lines[line_number:]

        with open(target_file_absolute_path, "w") as target_file:
            target_file.writelines(target_lines)

print("Lines inserted in line", line_number)
