import os
import openai
import sys
import requests
from dotenv import load_dotenv
from bs4 import BeautifulSoup


load_dotenv()
openai.api_key = os.getenv("OPENAI_API_KEY")
url = sys.argv[1]

# Use beautiful soup to get the contents of a webpage
def page_contents(url):
  res = requests.get(url)
  soup = BeautifulSoup(res.content, 'html.parser')
  return soup.get_text()


completion = openai.ChatCompletion.create(
  model="gpt-3.5-turbo",
  messages=[
   # {"role": "system", "content": "You are a poetic assistant, skilled in explaining complex programming concepts with creative flair."},
    {"role": "user", "content": "Summarize the content from this url: {contents}".format(contents=page_contents(url))}
  ]
)

print(completion.choices[0].message.content)

