:source: fwebos_waf_signature_filter_list.py

:orphan:

.. fwebos_waf_signature_filter_list.py:

fwebos_waf_signature_filter_list.py -- Config FortiWeb Web Protection Signature filter list
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Web Protection Signature filter list


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
 <td>fwebos_waf_signature_filter_list.py</td>
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
              <li><span class="li-head"> id </span> id <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> match_target </span> match targets <span class="li-normal"> type:str choice:
                      HTTP_METHOD,
                      CLIENT_IP,
                      HOST,
                      URI,
                      FULL_URL,
                      PARAMETER,
                      COOKIE,
                      HTTP_HEADER,
                      JSON_ELEMENTS,</span></li>
              <li><span class="li-head"> operator </span> operator <span class="li-normal"> type:str choice:
                      STRING_MATCH,
                      REGEXP_MATCH,
                      EQ,
                      NE,
                      INCLUDE,
                      EXCLUDE,</span></li>
              <li><span class="li-head"> value_check </span> value check <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> concatenate_type </span> concatenate relationship with the previous filter rule <span class="li-normal"> type:str choice:
                      AND,
                      OR,</span></li>
              <li><span class="li-head"> http_method </span> HTTP method <span class="li-normal"> type:str choice:
                      get,
                      post,
                      head,
                      options,
                      trace,
                      connect,
                      delete,
                      put,
                      patch,
                      others,</span></li>
              <li><span class="li-head"> signature_id </span> signature id <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> value </span> value <span class="li-normal"> type:str</span></li>
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
       fwebos_waf_signature_filter_list:
        action: delete 
        vdom: root
        table_name: test
        id: 1
           
     - name: Create
       fwebos_waf_signature_filter_list:
        action: add 
        vdom: root
        table_name: test
        match_target: URI
        operator: REGEXP_MATCH
        value_check: disable
        concatenate_type: AND
        http_method:          
        signature_id: 030000128
        value: a*
 
     - name: edit
       fwebos_waf_signature_filter_list:
        action: edit 
        vdom: root
        table_name: test
        id: 1
        match_target: URI
        operator: REGEXP_MATCH
        value_check: disable
        concatenate_type: AND
        http_method:          
        signature_id: 030000128
        value: aaaa*
 

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