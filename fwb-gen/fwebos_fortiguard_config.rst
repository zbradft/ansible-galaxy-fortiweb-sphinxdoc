:source: fwebos_fortiguard_config.py

:orphan:

.. fwebos_fortiguard_config.py:

fwebos_fortiguard_config.py -- Config FortiWeb System FortiGuard info
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb System FortiGuard info


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
 <td>fwebos_fortiguard_config.py</td>
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
            
              <li><span class="li-head"> svrip </span> svrip <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> svrport </span> svrport <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> override </span> override <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> address </span> address <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> scheduled </span> scheduled <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> scheduleType </span> scheduleType <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> everySelect </span> everySelect <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> dailySelect </span> dailySelect <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> weeklyDaySelect </span> weeklyDaySelect <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> weeklyHourSelect </span> weeklyHourSelect <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> dbVersionType </span> dbVersionType <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> bufferSize </span> bufferSize <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> useFSD </span> useFSD <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> oversvr </span> oversvr <span class="li-normal"> type:string</span></li>
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
     - name: Edit fortigurad config 
       fwebos_fortiguard_config:
        action: edit 
        override: True
        scheduled: True
        isUpdating: False
        updateControl: []
        address: 1.1.1.1 
        scheduleType: every
        everySelect: 2
        dailySelect: 0
        weeklyDaySelect: 0
        weeklyHourSelect: 0
        dbVersionType: 2 
        bufferSize: 5500
        useFSD: 1 
        _id: only
 

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