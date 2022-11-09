:source: fwebos_certificate_local_csr.py

:orphan:

.. fwebos_certificate_local_csr.py:

fwebos_certificate_local_csr.py -- Config FortiWeb server objects Local
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb server objects Local


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
 <td>fwebos_certificate_local_csr.py</td>
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
            
              <li><span class="li-head"> name </span> name <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> idType </span> idType <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> ip </span> ip <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> domainName </span> domainName <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> subjectEmail </span> subjectEmail <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> keyType </span> keyType <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> keySize </span> keySize <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> organization </span> organization <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> localityCity </span> localityCity <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> stateProvince </span> stateProvince <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> countryRegion </span> countryRegion <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> email </span> email <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> hsmSlot </span> hsmSlot <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> organizationUnit </span> organizationUnit <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> organizationUnit_1 </span> organizationUnit 1 <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> organizationUnit_2 </span> organizationUnit 2 <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> organizationUnit_3 </span> organizationUnit 3 <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> organizationUnit_4 </span> organizationUnit 4 <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> organizationUnit_5 </span> organizationUnit 5 <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> alt_type </span> alt type <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> enrollmentMethod </span> enrollmentMethod <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> hsm </span> hsm <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> challengePassword </span> challengePassword <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> caServerURL </span> caServerURL <span class="li-normal"> type:string</span></li>
          </ul>
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
     - name: Create certificate csr 
       fwebos_certificate_local_csr:
        action: add 
        vdom: root1
        idType: hostIp
        alt_name_type: 2
        ip: 0.0.0.0
        keySize: 1024
        enrollmentMethod: file
        name: test_1 
        organization: org
        localityCity: city1
        stateProvince: state1
        countryRegion: US
        email: test@test.com
        organizationUnit_1: orgunit
        alt_name_type_1: 2
        alt_name_text_1: aaaaaa.com
 
     - name: delete certificate csr 
       fwebos_certificate_local_csr:
        action: delete 
        vdom: root1
        name: test_1
 
     - name: Create certificate csr 
       fwebos_certificate_local_csr:
        action: add 
        vdom: root1
        idType: email
        subjectEmail: test@gmail.com
        alt_name_type: 2
        ip: 0.0.0.0
        keySize: 1024
        enrollmentMethod: file
        name: test_2 
        organization: org
        localityCity: city1
        stateProvince: state1
        countryRegion: US
        email: test@test.com
        organizationUnit_1: orgunit
 

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