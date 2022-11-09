:source: fwebos_waf_xff.py

:orphan:

.. fwebos_waf_xff.py:

fwebos_waf_xff.py -- Config FortiWeb X-Forward-For policy
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb X-Forward-For policy


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
 <td>fwebos_waf_xff.py</td>
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
              <li><span class="li-head"> x-forwarded-for-support </span> x forwarded for support <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> add-source-port </span> add source port in X-Forwarded-For <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> x-forwarded-port </span> X-Forwarded-Port <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> tracing-original-ip </span> tracing original IP <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> original-ip-header </span> original IP header <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> x-real-ip </span> X-Real_IP <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> x-forwarded-proto </span> X-Forwarded-Proto <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ip-list </span> IP list <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> id </li>
                      <li> <span class="li-head"> ip </span> IP address </li>
                    </ul></span></li>
              <li><span class="li-head"> block-based-on-original-ip </span> block-based-on-original-ip <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ip-location </span> ip-location <span class="li-normal"> type:string choice:
                      left,
                      right,</span></li>
              <li><span class="li-head"> skip-private-original-ip </span> skip-private-original-ip <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> skip-special-original-ip </span> skip-special-original-ip <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> block-based-on-full-scan </span> block based on full scan modules <span class="li-normal"> type:string choice:
                      ip-reputation,</span></li>
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
     - name: delete xff 
       fwebos_waf_xff:
        action: delete 
        vdom: root
        name: test 
           
     - name: Create xff 
       fwebos_waf_xff:
        action: add 
        vdom: root
        x_forwarded_for_support: enable
        add_source_port: disable
        x_forwarded_port: enable
        tracing_original_ip: enable
        x_real_ip: enable
        x_forwarded_proto: enable
        block_based_on_original_ip: enable
        ip_location: left
        original_ip_header: X-FORWARDED-FOR
        block_based_on_full_scan: ip-reputation
        name: test 
 
     - name: edit xff 
       fwebos_waf_xff:
        action: edit 
        vdom: root
        x_forwarded_for_support: enable
        add_source_port: enable 
        x_forwarded_port: enable
        tracing_original_ip: enable
        x_real_ip: enable
        x_forwarded_proto: enable
        block_based_on_original_ip: enable
        ip_location: left
        original_ip_header: X-FORWARDED-FOR
        block_based_on_full_scan: ip-reputation
        name: test 
 

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