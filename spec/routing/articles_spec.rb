# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/articles routes' do
  it 'routes to articles#index' do
    expect(get('/articles')).to route_to(controller: 'articles', action: 'index')
    aggregate_failures do
      expect(get('/articles')).to route_to(controller: 'articles', action: 'index')
      expect(get('articles?page[number]=3&page[size]=1')).to route_to(
        controller: 'articles',
        action: 'index',
        page: {
          'number' => '3',
          'size' => '1'
        }
      )
    end
  end
end
