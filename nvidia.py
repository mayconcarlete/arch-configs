import subprocess

lspci_cmd = "lspci | grep -i 'vga'"
lspci = subprocess.run(lspci_cmd, shell=True, capture_output=True, text=True)
if len(lspci.stderr) > 0:
    print(f'Error running {lspci_cmd}')
    Exception(f'Error running {lspci_cmd}')
formatted_lspci=[vga_info for vga_info in lspci.stdout.split("\n") if len(vga_info) > 0] # split the stdout in \n and remove all empty elements

available_vgas=['intel', 'nvidia', 'amd']
detected_vgas=[]
for vga_info in formatted_lspci:
    





