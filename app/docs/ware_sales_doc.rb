module WareSalesDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :profile_id, Integer, desc: 'The field id user who want to bye something. '
    param :ware_id, Integer, desc: 'The id ware to bye. '
    param :amount, Integer, desc: 'Amount of ware.'
  end

  api :GET, '/ware_sails', 'All ware_sales'
  description <<-EOS
    == Get Action Ware Sales
    Is used for show ware sales
      Is used for get all ware sales
        curl localhost:5000/api/v1/ware_sales -X GET    
    EOS
  param_group :main_params
  param :created_at, Date, desc: 'Created at'
  param :updated_at, Date, desc: 'Updated at'
  def index; end

  api :POST, '/ware_sales', 'Create Ware Sale'
  description <<-EOS
    == Create Ware Sale article
    Is used for creating ware sale
      curl -v localhost:5000/api/v1/ware_sales -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"profile_id": 1, "ware_id": 2, "amount": 4}'
    EOS
  param_group :main_params
  def create; end  

  api :DELETE, '/ware_sales/:id', 'Delete Ware Sale'
  description <<-EOS
    == Delete single ware sale
    Is used for delete single ware sale
      curl -v localhost:5000/api/v1/ware_sales/1 -X DELETE -H "Accept: application/json" -H "Content-Type: application/json"
    EOS
  param :id, Integer, desc: 'Id ware sale for delete. '
  def destroy; end
end