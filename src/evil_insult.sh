#!/bin/bash

api="https://evilinsult.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36"

function generate_insult() {
	# 1 - language: (string): <language - default: en>
	curl --request GET \
		--url "$api/generate_insult.php?lang=${1:-en}&type=json" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
