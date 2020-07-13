curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data "{
    'input':{
      'text':'$(cat content.txt)'
    },
    'voice':{
      'languageCode':'ja-JP',
      'name':'ja-JP-Wavenet-B',
      'ssmlGender':'FEMALE'
    },
    'audioConfig':{
      'audioEncoding':'MP3'
    }
  }" "https://texttospeech.googleapis.com/v1/text:synthesize" > synthesize-text.txt