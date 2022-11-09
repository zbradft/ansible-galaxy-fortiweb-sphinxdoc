:source: fwebos_certificate_local_import_certificate.py

:orphan:

.. fwebos_certificate_local_import_certificate.py:

fwebos_certificate_local_import_certificate.py -- Upload local certificates to FortiWeb
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Upload local certificates to FortiWeb


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
 <td>fwebos_certificate_local_import_certificate.py</td>
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
  <li><span class="li-head">body</span> Possible parameters to go in the body for the request</li>
        <ul class="ul-self">
            
              <li><span class="li-head"> title </span> title <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> upload </span> upload <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> message </span> message <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> hsm </span> hsm <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> type </span> type <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> password </span> password <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> certificateFile </span> certificateFile <span class="li-normal"> type:string
                    format:binary</span></li>
              <li><span class="li-head"> 512 </span> 512 <span class="li-normal"> type:string
                    format:binary</span></li>
              <li><span class="li-head"> certificateWithKeyFile </span> certificateWithKeyFile <span class="li-normal"> type:string
                    format:binary</span></li>
              <li><span class="li-head"> keyFile </span> keyFile <span class="li-normal"> type:string
                    format:binary</span></li>
              <li><span class="li-head"> hsmSlot </span> hsmSlot <span class="li-normal"> type:string</span></li>
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
     - name: Upload pkcs12 certificate 
       fwebos_certificate_local_import_certificate:
        action: add
        vdom: root
        type: PKCS12Certificate
        certificateWithKeyFile: ca.p12
        password: 12345678
 
     - name:  Delete certificate 
       fwebos_certificate_local_import_certificate:
        action: delete
        vdom: root
        name: ca 
 
     - name: Upload certificate 
       fwebos_certificate_local_import_certificate:
        action: add
        vdom: root
        type: certificate
        certificateFile: ca.crt
        keyFile: ca.key
        hsm: undefined
        password: 12345678
 
     - name:  Delete certificate 
       fwebos_certificate_local_import_certificate:
        action: delete
        vdom: root
        name: ca 
 
     - name: Upload local certificate 
       fwebos_certificate_local_import_certificate:
        action: add
        vdom: root
        type: localCertificate 
        certificateFile: cert.cer
 

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