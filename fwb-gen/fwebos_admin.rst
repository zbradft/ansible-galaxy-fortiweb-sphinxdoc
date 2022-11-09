:source: fwebos_admin.py

:orphan:

.. fwebos_admin.py:

fwebos_admin.py -- Configure FortiWeb admin
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Configure FortiWeb admin


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
 <td>fwebos_admin.py</td>
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
              <li><span class="li-head"> name </span> admin user name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> access-profile </span> admin user access profile <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> trusthostv4 </span> admin user trust host ip, default 0.0.0.0 for all <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> trusthostv6 </span> admin user trust host ip, default ::/0 for all <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> last-name </span> last name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> first-name </span> first name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> email-address </span> email address <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> phone-number </span> phone number <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> mobile-number </span> mobile number <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> hidden </span> admin user hidden attribute <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> domains </span> virtual domain list <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> type </span> admin user auth type <span class="li-normal"> type:string choice:
                      local-user,
                      remote-user,</span></li>
              <li><span class="li-head"> admin-usergrp </span> admin user group <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> password </span> admin user password <span class="li-normal"> type:string
                    format:password</span></li>
              <li><span class="li-head"> wildcard </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> accprofile-override </span> allow access profile to be overridden from remote auth server <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sshkey </span> admin user SSH public key <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> force-password-change </span> enable/disable force password change on next login. <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
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
     - name: Create admin 
       fwebos_admin:
        action: add 
        name: test1
        access_profile: admin_no_access
        trusthostv4: 0.0.0.0/0 
        trusthostv6: ::/0 
        domains: root
        type: local-user
        admin_usergrp: 
        force_password_change: disable
        password: 11111111
 
     - name: edit admin 
       fwebos_admin:
        action: edit 
        name: test1
        access_profile: admin_no_access
        trusthostv4: 0.0.0.0/0 
        trusthostv6: ::/0 
        domains: root1
        type: remote-user
        admin_usergrp: test 
 
     - name: delete admin 
       fwebos_admin:
        action: delete 
        name: test1 
 

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