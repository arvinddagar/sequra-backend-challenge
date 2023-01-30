# sequra-backend-challenge
It is ruby application used to find merchant disbursement details.

#### Application details
- ruby version: 2.6.6
- rails version: 6.1.6.1

#### Command to setup application
- bundle install
- rails db:migrate
- rails db:seed

#### API Endpoint: 
*v1/disbursement_details*

API Params:
- **cif_id:** Unique merchant id to find merchant
- **disbursement_date:** The date on which disbursement calculated