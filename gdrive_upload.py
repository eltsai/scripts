"""
__author__ = "eltsai"
__credits__ = ["Daniel Ellis", "Elisa Tsai"]
__license__ = "GPL"
__version__ = "v3"
__maintainer__ = "eltsai"

This is a script to upload files to google drive using Google Cloud Project TV API.
Follow this post to generate client id and client secret:
https://towardsdatascience.com/uploading-files-to-google-drive-directly-from-the-terminal-using-curl-2b89db28bb06

1. Create a Google Cloud Project and create credential: https://console.cloud.google.com/apis/credentials?pli=1
2. CERAT CREDENTIALS -> OAUTH CLIENT ID -> TVs and Limited Input devices
"""
import json
import os
import sys


def main():
    args = sys.argv
    if len(args) <= 1:
        print("Upload error: no files specified.")

    files_to_upload = args[1:]

    for file_name in files_to_upload:
        if not os.path.exists(file_name):
            print(f"Upload error: no such file {file_name}")
    client_id = 'enter your client id here'
    client_secret = 'enter your client secret here'

    res = os.popen(f"curl -d \"client_id={client_id}&scope=https://www.googleapis.com/auth/drive.file\" https://oauth2.googleapis.com/device/code").read()

    googleapis_device_code = json.loads(res)

    device_code = googleapis_device_code['device_code']
    user_code = googleapis_device_code['user_code']

    print("open the following link: https://www.google.com/device")
    print(f"user code: {user_code}")
    input()

    command = f"curl -d client_id={client_id} \
    -d client_secret={client_secret} \
    -d device_code={device_code} \
    -d grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Adevice_code https://accounts.google.com/o/oauth2/token"

    res = os.popen(command).read()
    google_device_token = json.loads(res)

    access_token = google_device_token['access_token']
    token_type = google_device_token['token_type']

    for file_name in files_to_upload:
        file_name_wo_path = file_name.split('/')[-1]
        print(f"Start: Upload {file_name_wo_path}...")
        
        command = f'curl -X POST -L \
            -H \"Authorization: {token_type} {access_token}\" \
            -F \"metadata={{name :\'{file_name_wo_path}\'}};type=application/json;charset=UTF-8\" \
            -F \"file=@{file_name};type=application/zip\" \
            \"https://www.googleapis.com/upload/drive/v3/files?uploadType=multipart\"'
        print(command)
        res = os.popen(command).read()
        print(f"Done: Upload {file_name_wo_path} {res}.")


if __name__ == "__main__":
    main()