# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/articles routes' do
  it 'routes to articles#index' do
    expect(get('/articles')).to route_to(controller: 'articles', action: 'index')
    aggregate_failures do
      expect(get('/articles')).to route_to('article#index')
      expect(get('article?page[number]=3')).to route_to('article#index', page: { 'number' => 3 })
    end
  end
end
