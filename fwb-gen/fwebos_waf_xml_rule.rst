:source: fwebos_waf_xml_rule.py

:orphan:

.. fwebos_waf_xml_rule.py:

fwebos_waf_xml_rule.py -- Config FortiWeb API Protection XML Protection rule
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb API Protection XML Protection rule


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
 <td>fwebos_waf_xml_rule.py</td>
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
              <li><span class="li-head"> host </span> host <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      redirect,
                      block-period,
                      send_403_forbidden,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> block-period </span> action block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> trigger </span> trigger <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> request-type </span> simple string or regular expression <span class="li-normal"> type:string choice:
                      plain,
                      regular,</span></li>
              <li><span class="li-head"> request-file </span> request file <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> host-status </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> data-format </span> data format <span class="li-normal"> type:string choice:
                      xml,
                      soap,</span></li>
              <li><span class="li-head"> schema-file </span> schema file <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> wsdl-file </span> wsdl file <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> wsdl-ip-port-override </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ws-security </span> WS-Security rule <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> soap-attachment </span> allow/disallow attachment in soap message <span class="li-normal"> type:string choice:
                      disallow,
                      allow,</span></li>
              <li><span class="li-head"> validate-soapaction </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> validate-soap-headers </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> allow-additional-soap-headers </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> validate-soap-body </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xml-limit-check </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xml-limit-attr-num </span> max xml attribute number <span class="li-normal"> type:integer
                    maximum:256
                    minimum:0</span></li>
              <li><span class="li-head"> xml-limit-attrname-len </span> max xml attribute name length <span class="li-normal"> type:integer
                    maximum:1024
                    minimum:0</span></li>
              <li><span class="li-head"> xml-limit-attrvalue-len </span> max xml attribute value length <span class="li-normal"> type:integer
                    maximum:2048
                    minimum:0</span></li>
              <li><span class="li-head"> xml-limit-cdata-len </span> max xml cdata length <span class="li-normal"> type:integer
                    maximum:8192
                    minimum:0</span></li>
              <li><span class="li-head"> xml-limit-element-depth </span> max xml element depth <span class="li-normal"> type:integer
                    maximum:256
                    minimum:0</span></li>
              <li><span class="li-head"> xml-limit-element-name-len </span> max xml element name length <span class="li-normal"> type:integer
                    maximum:1024
                    minimum:0</span></li>
              <li><span class="li-head"> xml-attributes-check </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> external-entity-check </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> expansion-entity-check </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> x-include-check </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> schema-location-check </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> schema-location-exempted-urls </span> enable/disable <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> ws-i-basic-profile-assertion </span> packet log setting <span class="li-normal"> type:string choice:
                      WSI1001,
                      WSI1002,
                      WSI1003,
                      WSI1004,
                      WSI1006,
                      WSI1007,
                      WSI1032,
                      WSI1033,
                      WSI1109,
                      WSI1110,
                      WSI1111,
                      WSI1201,
                      WSI1202,
                      WSI1204,
                      WSI1208,
                      WSI1301,
                      WSI1307,
                      WSI1308,
                      WSI1309,
                      WSI1318,
                      WSI1601,
                      WSI1701,</span></li>
              <li><span class="li-head"> ws-i-basic-profile-wsdl-assertion </span> packet log setting <span class="li-normal"> type:string choice:
                      WSI1008,
                      WSI1116,
                      WSI1211,</span></li>
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
       fwebos_waf_xml_rule:
        action: delete 
        name: 12313
        vdom: root
           
     - name: Create
       fwebos_waf_xml_rule:
        action: add
        vdom: root
        xml_limit_attrvalue_len: 1024
        soap_attachment: allow
        xml_limit_element_depth: 20
        xml_limit_element_name_len: 64
        ws_i_basic_profile_wsdl_assertion: 
        validate_soapaction_val: 0
        severity: Low
        expansion_entity_check: disable
        schema_location_exempted_urls: 
        xml_limit_attrname_len: 64
        wsdl_file: 
        trigger: 
        validate_soap_body: disable
        x_include_check: disable
        xml_limit_attr_num: 32
        data_format: xml
        request_type: plain
        ws_security: 
        external_entity_check: disable
        host: 
        allow_additional_soap_headers: disable
        validate_soapaction: disable
        schema_location_check: disable
        validate_soap_headers_val: 0
        block_period: 600
        xml_limit_cdata_len: 4096
        name: test4
        host_status: disable
        allow_additional_soap_headers_val: 0
        request_file: /test_string
        xml_limit_check: disable
        trigger_val: 0
        validate_soap_headers: disable
        schema_file: 
        xml_action: alert
        xml_attributes_check: disable
        ws_i_basic_profile_assertion: 
 
     - name: edit
       fwebos_waf_xml_rule:
        action: edit 
        vdom: root
        xml_limit_attrvalue_len: 1024
        soap_attachment: allow
        xml_limit_element_depth: 20
        xml_limit_element_name_len: 64
        ws_i_basic_profile_wsdl_assertion: 
        validate_soapaction_val: 0
        severity: Low
        expansion_entity_check: disable
        schema_location_exempted_urls: 
        xml_limit_attrname_len: 64
        wsdl_file: 
        trigger: 
        validate_soap_body: disable
        x_include_check: disable
        xml_limit_attr_num: 32
        data_format: xml
        request_type: plain
        ws_security: 
        external_entity_check: disable
        host: 
        allow_additional_soap_headers: disable
        validate_soapaction: disable
        schema_location_check: disable
        validate_soap_headers_val: 0
        block_period: 600
        xml_limit_cdata_len: 4096
        name: test4
        host_status: disable
        allow_additional_soap_headers_val: 0
        request_file: /test_string
        xml_limit_check: disable
        trigger_val: 0
        validate_soap_headers: disable
        schema_file: 
        xml_action: alert
        xml_attributes_check: disable
        ws_i_basic_profile_assertion: 
 

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