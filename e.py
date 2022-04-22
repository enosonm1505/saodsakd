import requests
import json
import socket
asd=socket.gethostname()

base_url = "https://api.telegram.org/bot5124614020:AAEySd3wXhD4XK8m-vLk_1SSh2aRs_oOJ0A/SendMessage"


parameters = {
    "chat_id" : "@alertssidsix",
    "text" : """ ********ALERT*******ALERT******ALERT****
    BackUp Error for	"""+asd}

resp = requests.get(base_url, data = parameters)
print(resp.text)

[root
