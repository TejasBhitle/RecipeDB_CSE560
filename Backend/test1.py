import requests
import pyperclip

if __name__ == '__main__':
    response = requests.get("https://api.edamam.com/api/recipes/v2?type=public&q=chinese&app_id=6a2bebb2&app_key"
                            "=7e733e7fb967899c37daa12f41c679ec")
    pyperclip.copy(str(response.content.decode("utf-8")).replace('\\', ''))
