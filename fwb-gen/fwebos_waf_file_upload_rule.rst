:source: fwebos_waf_file_upload_rule.py

:orphan:

.. fwebos_waf_file_upload_rule.py:

fwebos_waf_file_upload_rule.py -- Config FortiWeb Input Validation File Security Rule
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Input Validation File Security Rule


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
 <td>fwebos_waf_file_upload_rule.py</td>
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
              <li><span class="li-head"> name </span> name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> host-status </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> host </span> host <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> request-type </span> simple string or regular expression <span class="li-normal"> type:string choice:
                      plain,
                      regular,</span></li>
              <li><span class="li-head"> request-file </span> URL <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> file-size-limit </span> file upload limit (KiloByte) <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> type </span> Allow/Block file types <span class="li-normal"> type:string choice:
                      Allow,
                      Block,</span></li>
              <li><span class="li-head"> file-uncompress </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> uncompress-oversize-limit </span> uncompress size limit (1-102400 KiloByte), if the value is less than av buffer size, av buffer size will be used <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> uncompress-nest-limit </span> maximum uncompress nest level that can be checked(1-100) <span class="li-normal"> type:integer
                    maximum:100
                    minimum:1</span></li>
              <li><span class="li-head"> json-file-support </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> json-key-for-filename </span> enable/disable <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> json-key-field </span> enable/disable <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> enable_base64_decode </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> octet-stream-filename-headers </span> Specify HTTP headers to get the file name of octet-stream.e.g.X-Filename;X-Name <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> file-types </span> file types <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> id </li>
                      <li> <span class="li-head"> file-type-name </span> file-type-name </li>
                      <li> <span class="li-head"> file-type-id </span> file-type-id </li>
                    </ul></span></li>
              <li><span class="li-head"> custom-file-types </span> custom file types <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> id </li>
                      <li> <span class="li-head"> file-extension </span> file extension name </li>
                    </ul></span></li>
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
       fwebos_waf_file_upload_rule:
        action: delete 
        name: 123
        vdom: root 
           
     - name: Create
       fwebos_waf_file_upload_rule:
        action: add 
        json_key_for_filename: key
        name: test4
        host_status: enable
        request_type: regular
        json_key_field: key
        request_file: test
        host: 192.168.1.1
        octet_stream_filename_headers: filename
        file_size_limit: 0
        type: Allow
        json_file_support: enable
        vdom: root
 
     - name: edit
       fwebos_waf_file_upload_rule:
        action: edit 
        json_key_for_filename: key
        name: test4
        host_status: enable
        request_type: regular
        json_key_field: key
        request_file: test
        host: 192.168.1.2
        octet_stream_filename_headers: filename
        file_size_limit: 0
        type: Allow
        json_file_support: enable
        vdom: root
 

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