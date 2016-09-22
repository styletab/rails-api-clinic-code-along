# index



#show



#create

curl --include --request POST http://localhost:3000/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Will",
      "sickness": "an example sickness"
    }
  }'


#update

curl --include --request PATCH http://localhost:3000/patients/2 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Will McBride",
      "sickness": "an example sickness"
    }
  }'
