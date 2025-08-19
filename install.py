import urllib.request

base_url = 'https://raw.githubusercontent.com/mayconcarlete/arch-configs/refs/heads/main'
files = ['functions.py', 'config.py']

for file in files:
    url = f'{base_url}/{file}'
    response = urllib.request.urlopen(url)
    code  = response.read().decode()
    exec(code)

print_functions()
print_config()