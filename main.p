import requests
import sys

def check_sites(url_list):
    green = "\033[92m"
    red = "\033[91m"
    reset = "\033[0m"
    print(f"{'URL':<30} | {'Status':<10}")
    print("-" * 45)


    for url in url_list:
        url = url.strip()
        if not url:
            continue
        target = url if url.startswith("http") else f"http://{url}"

        try:
            headers = {'User-Agent': 'Mozilla/5.0'}
            response = requests.get(target,headers = headers, timeout=5)
            status = response.status_code
            color = green if status == 200 else red
        except requests.exceptions.RequestException:
            status = "OFFLINE"
            color = red
        print(f"{url:<30} | {color}{status:<10}{reset}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        sites = sys.argv[1:]
        check_sites(sites)
    else:
        print("no arguments provided checking default sites")
        default_sites= ["github.com","google.com","twitter.com","facebook.com"]
        check_sites(default_sites)
