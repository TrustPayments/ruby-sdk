=begin
The Trust Payments API allows an easy interaction with the Trust Payments web service.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module TrustPayments
  class ApplicationUserService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def count(opts = {})
      data, _status_code, _headers = count_with_http_info(opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.

    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def count_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationUserService.count ..."
      end
      # resource path
      local_var_path = "/application-user/count".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationUserService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # Creates the application user with the given properties.
    # @param entity The user object with the properties which should be created.
    # @param [Hash] opts the optional parameters
    # @return [ApplicationUserCreateWithMacKey]
    def create(entity, opts = {})
      data, _status_code, _headers = create_with_http_info(entity, opts)
      return data
    end

    # Create
    # Creates the application user with the given properties.

    # @param entity The user object with the properties which should be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationUserCreateWithMacKey, Fixnum, Hash)>] ApplicationUserCreateWithMacKey data, response status code and response headers
    def create_with_http_info(entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationUserService.create ..."
      end
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling ApplicationUserService.create" if entity.nil?
      # resource path
      local_var_path = "/application-user/create".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'ApplicationUserCreateWithMacKey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationUserService#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete
    # Deletes the entity with the given id.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(id, opts = {})
      delete_with_http_info(id, opts)
      return nil
    end

    # Delete
    # Deletes the entity with the given id.

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationUserService.delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationUserService.delete" if id.nil?
      # resource path
      local_var_path = "/application-user/delete".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(id)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationUserService#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param id The id of the application user which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [ApplicationUser]
    def read(id, opts = {})
      data, _status_code, _headers = read_with_http_info(id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.

    # @param id The id of the application user which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationUser, Fixnum, Hash)>] ApplicationUser data, response status code and response headers
    def read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationUserService.read ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationUserService.read" if id.nil?
      # resource path
      local_var_path = "/application-user/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'ApplicationUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationUserService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param query The query restricts the application users which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<ApplicationUser>]
    def search(query, opts = {})
      data, _status_code, _headers = search_with_http_info(query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.

    # @param query The query restricts the application users which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApplicationUser>, Fixnum, Hash)>] Array<ApplicationUser> data, response status code and response headers
    def search_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationUserService.search ..."
      end
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling ApplicationUserService.search" if query.nil?
      # resource path
      local_var_path = "/application-user/search".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'Array<ApplicationUser>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationUserService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # This updates the entity with the given properties. Only those properties which should be updated can be provided. The 'id' and 'version' are required to identify the entity.
    # @param entity The application user entity with all the properties which should be updated. The id and the version are required properties.
    # @param [Hash] opts the optional parameters
    # @return [ApplicationUser]
    def update(entity, opts = {})
      data, _status_code, _headers = update_with_http_info(entity, opts)
      return data
    end

    # Update
    # This updates the entity with the given properties. Only those properties which should be updated can be provided. The &#39;id&#39; and &#39;version&#39; are required to identify the entity.

    # @param entity The application user entity with all the properties which should be updated. The id and the version are required properties.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationUser, Fixnum, Hash)>] ApplicationUser data, response status code and response headers
    def update_with_http_info(entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationUserService.update ..."
      end
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling ApplicationUserService.update" if entity.nil?
      # resource path
      local_var_path = "/application-user/update".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'ApplicationUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationUserService#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
