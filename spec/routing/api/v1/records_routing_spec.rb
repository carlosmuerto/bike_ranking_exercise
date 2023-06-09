require 'rails_helper'

RSpec.describe Api::V1::RecordsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/records').to route_to('api/v1/records#index', format: :json)
    end

    it 'routes to #index_with_user' do
      expect(get: '/api/v1/users/1/records').to route_to('api/v1/records#index_with_user', user_id: '1',
                                                                                           format: :json)
    end

    it 'routes to #show' do
      expect(get: '/api/v1/records/1').to route_to('api/v1/records#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: '/api/v1/records').to route_to('api/v1/records#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/records/1').to route_to('api/v1/records#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/records/1').to route_to('api/v1/records#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/records/1').to route_to('api/v1/records#destroy', id: '1', format: :json)
    end
  end
end
