module WaresDoc
	extend Apipie::DSL::Concern

	def_param_group :main_params do
    param :name, String, desc: 'The name of ware. '
    param :country, String, desc: 'The country. '
    param :price, Integer , desc: 'Price of ware.'
  end

  api :GET, '/wares', 'All wares '
  description <<-EOS
    == Get Action Wares
    Is used for show wares
      Is used for get all wares
        curl localhost:5000/api/v1/wares -X GET     
    EOS
  param_group :main_params
  param :created_at, Date, desc: 'Created at'
  param :updated_at, Date, desc: 'Updated at'
  def index; end

  api :POST, '/wares', 'Create Ware'
  description <<-EOS
    == Create Wares article
    Is used for creating ware
      curl -v localhost:5000/api/v1/wares -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"name": "Star Wars", "country": "asdasd", "price": 24}'
    EOS
  param_group :main_params
  def create; end  

  api :GET, '/wares/:id', 'Show Ware'
  description <<-EOS
    == Show single ware
    Is used for show single ware
      curl -v localhost:5000/api/v1/wares/2
    EOS
  param :id, Integer, desc: 'Id ware for show. '
  def show; end

  api :PUT, '/wares/:id', 'Update book'
    description <<-EOS
      == Update book article
    Is used for updating book
      curl -v localhost:5000/api/v1/wares/1 -X PUT -H "Accept: application/json" -H "Content-Type: application/json" -d '{"name": "Star Wars", "country": "asdasd", "price": 24}'
    EOS
  param_group :main_params
  def update; end

  api :DELETE, '/books/:id', 'Delete Ware'
	description <<-EOS
	  == Delete single ware
	  Is used for delete single ware
	    curl -v localhost:5000/api/v1/wares/1 -X DELETE -H "Accept: application/json" -H "Content-Type: application/json"
	  EOS
	param :id, Integer, desc: 'Id book for delete. '
	def destroy; end
end