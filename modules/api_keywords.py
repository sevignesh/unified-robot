from robot.libraries.BuiltIn import BuiltIn
import requests


class APIKeywords:
    def get_weather(self, city, base_url, api_key):
        query_params = {
            "q": city,
            "appid": api_key,
            "units": "metric"
        }
        response = requests.get(base_url, params=query_params)
        return response

