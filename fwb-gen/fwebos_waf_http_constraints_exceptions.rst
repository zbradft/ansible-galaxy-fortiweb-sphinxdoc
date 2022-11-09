:source: fwebos_waf_http_constraints_exceptions.py

:orphan:

.. fwebos_waf_http_constraints_exceptions.py:

fwebos_waf_http_constraints_exceptions.py -- Config FortiWeb Web Protection HTTP Constraints exceptions
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Web Protection HTTP Constraints exceptions


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
 <td>fwebos_waf_http_constraints_exceptions.py</td>
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
              <li><span class="li-head"> name </span> http constrains exception name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> http_constraints-exception-list </span> exception list <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> id </li>
                      <li> <span class="li-head"> host </span> host </li>
                      <li> <span class="li-head"> request-file </span> request file </li>
                      <li> <span class="li-head"> request-type </span> request type </li>
                      <li> <span class="li-head"> host-status </span> host status </li>
                      <li> <span class="li-head"> source-ip-status </span> source ip status </li>
                      <li> <span class="li-head"> source-ip </span> source ipv4/ipv6/ip range. (e.g.: 1.2.3.4, 2001::1, 1.2.3.4-1.2.3.40, 2001::1-2001::100) </li>
                      <li> <span class="li-head"> max-http-header-length </span>  </li>
                      <li> <span class="li-head"> max-http-content-length </span>  </li>
                      <li> <span class="li-head"> max-http-body-length </span>  </li>
                      <li> <span class="li-head"> max-http-request-filename-length </span>  </li>
                      <li> <span class="li-head"> max-http-request-length </span>  </li>
                      <li> <span class="li-head"> max-url-parameter-length </span>  </li>
                      <li> <span class="li-head"> max-cookie-in-request </span>  </li>
                      <li> <span class="li-head"> max-header-line-request </span>  </li>
                      <li> <span class="li-head"> Illegal-http-request-method-check </span>  </li>
                      <li> <span class="li-head"> max-url-parameter </span>  </li>
                      <li> <span class="li-head"> Illegal-host-name-check </span>  </li>
                      <li> <span class="li-head"> number-of-ranges-in-range-header </span>  </li>
                      <li> <span class="li-head"> http2-max-requests </span>  </li>
                      <li> <span class="li-head"> block-malformed-request </span>  </li>
                      <li> <span class="li-head"> Illegal-content-length-check </span>  </li>
                      <li> <span class="li-head"> Illegal-content-type-check </span>  </li>
                      <li> <span class="li-head"> Post-request-ctype-check </span>  </li>
                      <li> <span class="li-head"> max-http-header-name-length </span>  </li>
                      <li> <span class="li-head"> max-http-header-value-length </span>  </li>
                      <li> <span class="li-head"> parameter-name-check </span>  </li>
                      <li> <span class="li-head"> parameter-value-check </span>  </li>
                      <li> <span class="li-head"> Illegal-header-name-check </span>  </li>
                      <li> <span class="li-head"> Illegal-header-value-check </span>  </li>
                      <li> <span class="li-head"> max-http-body-parameter-length </span>  </li>
                      <li> <span class="li-head"> max-url-param-name-len </span>  </li>
                      <li> <span class="li-head"> max-url-param-value-len </span>  </li>
                      <li> <span class="li-head"> url-param-name-check </span>  </li>
                      <li> <span class="li-head"> url-param-value-check </span>  </li>
                      <li> <span class="li-head"> redundant-header-check </span>  </li>
                      <li> <span class="li-head"> duplicate-paramname-check </span>  </li>
                      <li> <span class="li-head"> null-byte-in-url-check </span>  </li>
                      <li> <span class="li-head"> Illegal-byte-in-url-check </span>  </li>
                      <li> <span class="li-head"> web-socket-protocol-check </span>  </li>
                      <li> <span class="li-head"> odd-and-even-space-attack-check </span>  </li>
                      <li> <span class="li-head"> Internal-resource-limits-check </span>  </li>
                      <li> <span class="li-head"> rpc-protocol-check </span>  </li>
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
     - name: Create
       fwebos_waf_http_constraints_exceptions:
        action: add
        name: test4
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