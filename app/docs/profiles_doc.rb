module ProfilesDoc
  extend Apipie::DSL::Concern

  def_param_group :main_params do
    param :name, String, desc: 'The field note name user. '
    param :age, Integer, desc: 'The age current user. '
    param :telephone, Integer, desc: 'Telephon yser.'
  end

  api :GET, '/profiles', 'All profiles'
  description <<-EOS
    == Get Action Profiles
    Is used for show profiles
      Is used for get all profiles
        curl localhost:5000/api/v1/profiles -X GET    
    EOS
  param_group :main_params
  param :created_at, Date, desc: 'Created at'
  param :updated_at, Date, desc: 'Updated at'
  def index; end

  api :POST, '/profiles', 'Create Profile'
  description <<-EOS
    == Create Profile article
    Is used for creating profile
      curl -v localhost:5000/api/v1/profiles -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"name": "Star Wars", "age": 21, "telephone": 435}'
    EOS
  param_group :main_params
  def create; end  

  api :GET, '/profiles/:id', 'Show Profile'
  description <<-EOS
    == Show single profile
    Is used for show single profile
      curl -v localhost:5000/api/v1/profiles/1
    EOS
  param :id, Integer, desc: 'Id profile for show. '
  def show; end

  api :PUT, '/profiles/:id', 'Update profile'
    description <<-EOS
      == Update profile article
    Is used for updating profile
      curl -v localhost:5000/api/v1/profiles/1 -X PUT -H "Accept: application/json" -H "Content-Type: application/json" -d '{"name": "Star Wars", "age": 25, "telephone": 435}'
    EOS
  param_group :main_params
  def update; end

  api :DELETE, '/profiles/:id', 'Delete Profile'
  description <<-EOS
    == Delete single profile
    Is used for delete single profile
      curl -v localhost:5000/api/v1/profiles/2 -X DELETE -H "Accept: application/json" -H "Content-Type: application/json"
    EOS
  param :id, Integer, desc: 'Id profile for delete. '
  def destroy; end
end