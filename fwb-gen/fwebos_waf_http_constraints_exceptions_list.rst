:source: fwebos_waf_http_constraints_exceptions_list.py

:orphan:

.. fwebos_waf_http_constraints_exceptions_list.py:

fwebos_waf_http_constraints_exceptions_list.py -- Config FortiWeb Web Protection HTTP Constraints exceptions rules
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Web Protection HTTP Constraints exceptions rules


Requirements
------------
The below requirements are needed on the host that executes this module.

- ansible>=2.11


FortiWeb Version Compatibility
------------------------------


.. raw:: html

 <br>
 <table>
 <tr>
 <td></td>
 <td><code class="docutils literal notranslate">v7.0.0 </code></td>
 <td><code class="docutils literal notranslate">v7.0.1 </code></td>
 <td><code class="docutils literal notranslate">v7.0.2 </code></td>
 <td><code class="docutils literal notranslate">v7.0.3 </code></td>
 </tr>
 <tr>
 <td>fwebos_waf_http_constraints_exceptions_list.py</td>
 <td>yes</td>
 <td>yes</td>
 <td>yes</td>
 <td>yes</td>
 </tr>
 </table>
 <p>



Parameters
----------


.. raw:: html


  <ul>
  <li><span class="li-head">body</span> Possible parameters to go in the body for the request <span class="li-required">required: True </li>
        <ul class="ul-self">
              <li><span class="li-head"> table_name </span> members <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> name </span> id <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_body_parameter_length_val </span> max length of body parameter <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> url_param_name_check </span> url parameter name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> number_of_ranges_in_range_header_val </span> number of ranges in range header <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Post_request_ctype_check </span> Post Request -- Missing Content Type Check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_host_name_check </span> Illegal host name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_content_length </span> max http content length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_body_length_val </span> max http body length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> web_socket_protocol_check_val </span> web socket protocol check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_host_name_check_val </span> Illegal host name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_http_request_method_check </span> Illegal http request method check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> source_ip_status </span> source ip status <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> http2_max_requests </span> http2 max requests <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_body_parameter_length </span> max http body parameter length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_parameter_val </span> max url parameter <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> block_malformed_request_val </span> block malformed request <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_request_length </span> max http request length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> number_of_ranges_in_range_header </span> number of ranges in range header <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> id </span> id <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> redundant_header_check </span> redundant header check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_parameter_length_val </span> max url parameter length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_content_type_check_val </span> Illegal content type check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_param_name_len_val </span> max url param name length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_content_length_check </span> Illegal content length check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_header_length </span> max http header length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_byte_in_url_check_val </span> Illegal byte in url check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Internal_resource_limits_check_val </span> Internal resource limits check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> source_ip </span> source ipv4/ipv6/ip range. (e.g.: 1.2.3.4, 2001::1, 1.2.3.4-1.2.3.40, 2001::1-2001::100) <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_request_length_val </span> max http request length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> url_param_name_check_val </span> url parameter name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> rpc_protocol_check </span> rpc protocol check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> duplicate_paramname_check_val </span> duplicate paramname check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_body_length </span> max http body length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> web_socket_protocol_check </span> web socket protocol check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> parameter_name_check </span> parameter name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_parameter_length </span> max url parameter length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_header_name_check </span> Illegal header name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> url_param_value_check </span> url parameter value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> duplicate_paramname_check </span> duplicate parameter name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> parameter_name_check_val </span> parameter name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> source_ip_status_val </span> source ip status <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> http2_max_requests_val </span> http2 max requests <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_content_length_check_val </span> Illegal content length check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> request_type </span> request type <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_param_name_len </span> max url parameter name length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_param_value_len_val </span> max url parameter value length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_header_line_request_val </span> max header line request <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> odd_and_even_space_attack_check_val </span> odd and even space attack check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> parameter_value_check_val </span> parameter value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_header_value_length </span> max http header value length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_parameter </span> max url parameter <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> host </span> host <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_header_name_length </span> max http header name length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> odd_and_even_space_attack_check </span> odd and even space attack check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_content_length_val </span> max http content length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> request_type_val </span> request type <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_http_request_method_check_val </span> Illegal http request method check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_cookie_in_request_val </span> max cookie in request <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> rpc_protocol_check_val </span> rpc protocol check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_header_value_check </span> Illegal header value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> parameter_value_check </span> parameter value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_header_line_request </span> max header line request <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_header_value_length_val </span> max http header value length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> null_byte_in_url_check </span> null byte in url check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> host_status </span> host status <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_header_length_val </span> max http header length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> null_byte_in_url_check_val </span> null byte in url check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> block_malformed_request </span> block malformed request <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Internal_resource_limits_check </span> Internal resource limits check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> request_file </span> request file <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> redundant_header_check_val </span> redundant header check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_header_name_check_val </span> Illegal header name check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> url_param_value_check_val </span> url parameter value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_header_name_length_val </span> max http header name length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Post_request_ctype_check_val </span> Post request ctype check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> host_status_val </span> host status <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_request_filename_length </span> max http request filename length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_header_value_check_val </span> Illegal header value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_url_param_value_len </span> max url param value length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_http_request_filename_length_val </span> max http request filename length <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_content_type_check </span> Illegal content type check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> max_cookie_in_request </span> max cookie in request <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> Illegal_byte_in_url_check </span> Illegal byte in url check <span class="li-normal"> type:str</span></li>
        <li><span class="li-head">mkey</span> If present, objects will be filtered on property with this name  <span class="li-normal"> type:string </span></li><li><span class="li-head">vdom</span> Specify the Virtual Domain(s) from which results are returned or changes are applied to. If this parameter is not provided, the management VDOM will be used. If the admin does not have access to the VDOM, a permission error will be returned. The URL parameter is one of: vdom=root (Single VDOM) vdom=vdom1,vdom2 (Multiple VDOMs) vdom=* (All VDOMs)   <span class="li-normal"> type:array </span></li><li><span class="li-head">clone_mkey</span> Use *clone_mkey* to specify the ID for the new resource to be cloned.  If *clone_mkey* is set, *mkey* must be provided which is cloned from.   <span class="li-normal"> type:string </span></li>
  </ul>

Examples
--------
.. code-block:: yaml+jinja

   - name:
   hosts: all
   vars:
   connection: httpapi
   gather_facts: false
   tasks:
     - name: delete 
       fwebos_waf_http_constraints_exceptions_list:
        action: delete
        table_name: test4
        name: 1
        vdom: root
           
     - name: Create
       fwebos_waf_http_constraints_exceptions_list:
        action: add
        table_name: test4
        vdom: root
        max_http_body_parameter_length_val: 0
        url_param_name_check: disable
        number_of_ranges_in_range_header_val: 0
        Post_request_ctype_check: disable
        Illegal_host_name_check: disable
        max_http_content_length: disable
        max_http_body_length_val: 0
        web_socket_protocol_check_val: 0
        Illegal_host_name_check_val: 0
        Illegal_http_request_method_check: disable
        source_ip_status: enable
        http2_max_requests: disable
        max_http_body_parameter_length: disable
        max_url_parameter_val: 0
        block_malformed_request_val: 0
        max_http_request_length: disable
        number_of_ranges_in_range_header: disable
        id: 0
        redundant_header_check: disable
        max_url_parameter_length_val: 0
        Illegal_content_type_check_val: 0
        max_url_param_name_len_val: 0
        Illegal_content_length_check: disable
        max_http_header_length: disable
        Illegal_byte_in_url_check_val: 0
        Internal_resource_limits_check_val: 0
        source_ip: 2.2.2.2
        max_http_request_length_val: 0
        url_param_name_check_val: 0
        rpc_protocol_check: disable
        duplicate_paramname_check_val: 0
        max_http_body_length: disable
        web_socket_protocol_check: disable
        parameter_name_check: disable
        max_url_parameter_length: disable
        Illegal_header_name_check: disable
        url_param_value_check: disable
        duplicate_paramname_check: disable
        parameter_name_check_val: 0
        source_ip_status_val: 0
        http2_max_requests_val: 0
        Illegal_content_length_check_val: 0
        request_type: plain
        max_url_param_name_len: disable
        max_url_param_value_len_val: 0
        max_header_line_request_val: 0
        odd_and_even_space_attack_check_val: 0
        parameter_value_check_val: 0
        max_http_header_value_length: disable
        max_url_parameter: disable
        host: 1.1.1.1
        max_http_header_name_length: disable
        odd_and_even_space_attack_check: disable
        max_http_content_length_val: 0
        request_type_val: 0
        Illegal_http_request_method_check_val: 0
        max_cookie_in_request_val: 0
        rpc_protocol_check_val: 0
        Illegal_header_value_check: disable
        parameter_value_check: disable
        max_header_line_request: disable
        max_http_header_value_length_val: 0
        q_type: 0
        null_byte_in_url_check: disable
        host_status: enable
        max_http_header_length_val: 0
        null_byte_in_url_check_val: 0
        block_malformed_request: disable
        Internal_resource_limits_check: disable
        request_file: /test_string
        redundant_header_check_val: 0
        Illegal_header_name_check_val: 0
        url_param_value_check_val: 0
        max_http_header_name_length_val: 0
        Post_request_ctype_check_val: 0
        host_status_val: 0
        max_http_request_filename_length: disable
        Illegal_header_value_check_val: 0
        max_url_param_value_len: disable
        max_http_request_filename_length_val: 0
        Illegal_content_type_check: disable
        max_cookie_in_request: disable
        Illegal_byte_in_url_check: disable
 
     - name: edit
       fwebos_waf_http_constraints_exceptions_list:
        action: edit
        table_name: test4
        name: 1
        vdom: root
        max_http_body_parameter_length_val: 0
        url_param_name_check: disable
        number_of_ranges_in_range_header_val: 0
        Post_request_ctype_check: disable
        Illegal_host_name_check: disable
        max_http_content_length: disable
        max_http_body_length_val: 0
        web_socket_protocol_check_val: 0
        Illegal_host_name_check_val: 0
        Illegal_http_request_method_check: disable
        source_ip_status: enable
        http2_max_requests: disable
        max_http_body_parameter_length: disable
        max_url_parameter_val: 0
        block_malformed_request_val: 0
        max_http_request_length: disable
        number_of_ranges_in_range_header: disable
        id: 0
        redundant_header_check: disable
        max_url_parameter_length_val: 0
        Illegal_content_type_check_val: 0
        max_url_param_name_len_val: 0
        Illegal_content_length_check: disable
        max_http_header_length: disable
        Illegal_byte_in_url_check_val: 0
        Internal_resource_limits_check_val: 0
        source_ip: 2.2.2.2
        max_http_request_length_val: 0
        url_param_name_check_val: 0
        rpc_protocol_check: disable
        duplicate_paramname_check_val: 0
        max_http_body_length: disable
        web_socket_protocol_check: disable
        parameter_name_check: disable
        max_url_parameter_length: disable
        Illegal_header_name_check: disable
        url_param_value_check: disable
        duplicate_paramname_check: disable
        parameter_name_check_val: 0
        source_ip_status_val: 0
        http2_max_requests_val: 0
        Illegal_content_length_check_val: 0
        request_type: plain
        max_url_param_name_len: disable
        max_url_param_value_len_val: 0
        max_header_line_request_val: 0
        odd_and_even_space_attack_check_val: 0
        parameter_value_check_val: 0
        max_http_header_value_length: disable
        max_url_parameter: disable
        host: 1.1.1.1
        max_http_header_name_length: disable
        odd_and_even_space_attack_check: disable
        max_http_content_length_val: 0
        request_type_val: 0
        Illegal_http_request_method_check_val: 0
        max_cookie_in_request_val: 0
        rpc_protocol_check_val: 0
        Illegal_header_value_check: disable
        parameter_value_check: disable
        max_header_line_request: disable
        max_http_header_value_length_val: 0
        q_type: 0
        null_byte_in_url_check: disable
        host_status: enable
        max_http_header_length_val: 0
        null_byte_in_url_check_val: 0
        block_malformed_request: disable
        Internal_resource_limits_check: disable
        request_file: /test_string
        redundant_header_check_val: 0
        Illegal_header_name_check_val: 0
        url_param_value_check_val: 0
        max_http_header_name_length_val: 0
        Post_request_ctype_check_val: 0
        host_status_val: 0
        max_http_request_filename_length: disable
        Illegal_header_value_check_val: 0
        max_url_param_value_len: disable
        max_http_request_filename_length_val: 0
        Illegal_content_type_check: disable
        max_cookie_in_request: disable
        Illegal_byte_in_url_check: disable
 

Return Values
-------------
Common return values are documented: https://docs.ansible.com/ansible/latest/reference_appendices/common_return_values.html#common-return-values, the following are the fields unique to this module:

.. raw:: html

    <ul><li><span class="li-return"> 200 </span> : OK: Request returns successful</li>
      <li><span class="li-return"> 400 </span> : Bad Request: Request cannot be processed by the API</li>
      <li><span class="li-return"> 401 </span> : Not Authorized: Request without successful login session</li>
      <li><span class="li-return"> 403 </span> : Forbidden: Request is missing CSRF token or administrator is missing access profile permissions.</li>
      <li><span class="li-return"> 404 </span> : Resource Not Found: Unable to find the specified resource.</li>
      <li><span class="li-return"> 405 </span> : Method Not Allowed: Specified HTTP method is not allowed for this resource. </li>
      <li><span class="li-return"> 413 </span> : Request Entity Too Large: Request cannot be processed due to large entity </li>
      <li><span class="li-return"> 424 </span> : Failed Dependency: Fail dependency can be duplicate resource, missing required parameter, missing required attribute, invalid attribute value</li>
      <li><span class="li-return"> 429 </span> : Access temporarily blocked: Maximum failed authentications reached. The offended source is temporarily blocked for certain amount of time.</li>
      <li><span class="li-return"> 500 </span> : Internal Server Error: Internal error when processing the request </li>
      
    </ul>

For errorcode please check FortiWeb API errorcode at : https://documenter.getpostman.com/view/11233300/TVetbkaK#887b9eb4-7c13-4338-a8db-16cc117f0119

Status
------

- This module is not guaranteed to have a backwards compatible interface.


Authors
-------

- Jie Li
- Brad Zhang

.. hint::
	If you notice any issues in this documentation, you can create a pull request to improve it.