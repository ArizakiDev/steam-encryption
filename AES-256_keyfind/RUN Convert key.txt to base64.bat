certutil -encode key.txt tmp.b64 && findstr /v /c:- tmp.b64 > base64key.txt

del tmp.b64