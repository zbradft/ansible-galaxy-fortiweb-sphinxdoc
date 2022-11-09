:source: fwebos_server_pool_rule.py

:orphan:

.. fwebos_server_pool_rule.py:

fwebos_server_pool_rule.py -- Config FortiWeb server objects Server Pool member
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb server objects Server Pool member


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
 <td>fwebos_server_pool_rule.py</td>
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
              <li><span class="li-head"> table_name </span> name of pserver list <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> name </span> id <span class="li-normal"> type:str</span></li>
              <li><span class="li-head"> http2_ssl_custom_cipher </span> SSL custom cipher-suite <span class="li-normal"> type:str
                    weight:{'type': 'int', 'description': 'weight, range 1-9999'}
                    ip:{'type': 'str', 'description': 'ip address'}
                    hsts_max_age:{'type': 'int', 'description': 'hsts max age value, range 3600-31536000'}
                    tls13_custom_cipher:{'type': 'str', 'description': 'TLSv1.3 custom cipher-suite'} type:{'type': 'str', 'description': 'server type', 'enum': ['physical', 'domain', 'sdn-connector']}
                    proxy_protocol_version:{'type': 'str', 'description': 'pserver proxy protocol version', 'enum': ['v1', 'v2']}
                    sni_strict:{'type': 'str', 'description': 'SNI strict mode'}
                    recover:{'type': 'int', 'description': 'seconds to postpone forwarding traffic after downtime, range 0-86400'}
                    port:{'type': 'int', 'description': 'server port, range 1-65535'}
                    ssl_cipher:{'type': 'str', 'description': 'SSL cipher-suite'}
                    conn_limit:{'type': 'int', 'description': 'set connection limit, range 0-1048576'}
                    client_certificate_forwarding_cert_header:{'type': 'str', 'description': 'custom header of client certificate forwarding certificate'}
                    multi_certificate:{'type': 'str', 'description': 'enable multi certificate'}
                    hsts_header:{'type': 'str', 'description': 'hsts header support'}
                    tls_v12:{'type': 'str', 'description': 'TLS 1.2 protocol status'}
                    tls_v13:{'type': 'str', 'description': 'TLS 1.3 protocol status'}
                    tls_v10:{'type': 'str', 'description': 'TLS 1.0 protocol status'}
                    tls_v11:{'type': 'str', 'description': 'TLS 1.1 protocol status'}
                    proxy_protocol:{'type': 'str', 'description': 'pserver proxy protocol switch'}
                    client_certificate_proxy:{'type': 'str', 'description': 'client certificate proxyd enable/disable, Must be set certificate-verify'}
                    server_side_sni:{'type': 'str', 'description': 'enable/disable SNI transparent'}
                    ssl_custom_cipher:{'type': 'str', 'description': 'SSL custom cipher-suite'}
                    session_id_reuse:{'type': 'str', 'description': 'enable/disable session id reuse'}
                    status:{'type': 'str', 'description': 'status'}
                    urlcert:{'type': 'str', 'description': 'URL based client certificate'}
                    hsts_include_subdomains:{'type': 'str', 'description': 'hsts include subdomains support'}
                    client_certificate_forwarding_sub_header:{'type': 'str', 'description': 'custom header of client certificate forwarding subject'}
                    warm_rate:{'type': 'int', 'description': 'maximum connection rate while the server is starting up, defaultval 10'}
                    server_certificate_verify_action:{'type': 'str', 'description': 'enable/disable server certificate verify'}
                    sni:{'type': 'str', 'description': 'SNI status'}
                    warm_up:{'type': 'int', 'description': 'how long to forward traffic at a lesser rate'}
                    ssl:{'type': 'str', 'description': 'ssl'}
                    ssl_noreg:{'type': 'str', 'description': 'SSL no renegotiate'}
                    health_check_inherit:{'type': 'str', 'description': "inherit serverpool's health check"}
                    session_ticket_reuse:{'type': 'str', 'description': 'enable/disable session ticket reuse'}
                    backup_server:{'type': 'str', 'description': 'backup server'}
                    client_certificate_forwarding:{'type': 'str', 'description': 'client certificate forwarding'}
                    http2:{'type': 'str', 'description': 'http2 enable/disable'}
                    hsts_preload:{'type': 'str', 'description': 'hsts preload support'} type:{'type': 'str', 'description': 'enable letsencrypt certificate'}
                    domain:{'type': 'str', 'description': 'domain name'}</span></li>
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
       fwebos_server_pool_rule:
        action: delete
        table_name: test4
        name: 1
        vdom: root
           
     - name: Create
       fwebos_server_pool_rule:
        action: add
        table_name: test4
        vdom: root
        http2_ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 DHE-DSS-AES128-GCM-SHA256 DHE-RSA-AES128-GCM-SHA256 ECDHE-RSA-AES256-GCM-SHA384
        weight: 1
        ip: 2.2.2.2
        hsts_max_age: 15552000
        tls13_custom_cipher: TLS_AES_256_GCM_SHA384
        server_type: physical
        proxy_protocol_version: v1
        sni_strict: disable
        recover: 0
        port: 80
        ssl_cipher: medium
        conn_limit: 0
        client_certificate_forwarding_cert_header: X-Client-Cert
        multi_certificate: disable
        hsts_header: disable
        tls_v12: enable
        tls_v13: disable
        tls_v10: enable
        tls_v11: enable
        proxy_protocol: disable
        client_certificate_proxy: disable
        server_side_sni: disable
        ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-ECDSA-CHACHA20-POLY1305 ECDHE-RSA-CHACHA20-POLY1305 ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES256-SHA384 ECDHE-ECDSA-AES128-SHA256 ECDHE-RSA-AES128-SHA256 ECDHE-ECDSA-AES256-SHA ECDHE-RSA-AES256-SHA ECDHE-ECDSA-AES128-SHA ECDHE-RSA-AES128-SHA AES256-GCM-SHA384 AES128-GCM-SHA256 AES256-SHA256 AES128-SHA256
        session_id_reuse: disable
        status: enable
        urlcert: disable
        hsts_include_subdomains: disable
        client_certificate_forwarding_sub_header: X-Client-DN
        warm_rate: 10
        server_certificate_verify_action: alert
        sni: disable
        warm_up: 0
        ssl: disable
        ssl_noreg: enable
        health_check_inherit: enable
        session_ticket_reuse: disable
        backup_server: disable
        client_certificate_forwarding: disable
        http2: disable
        hsts_preload: disable
        certificate_type: disable
 
     - name: edit
       fwebos_server_pool_rule:
        action: edit
        table_name: test4
        name: 1
        vdom: root
        http2_ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 DHE-DSS-AES128-GCM-SHA256 DHE-RSA-AES128-GCM-SHA256 ECDHE-RSA-AES256-GCM-SHA384
        weight: 1
        ip: 2.2.2.9
        hsts_max_age: 15552000
        tls13_custom_cipher: TLS_AES_256_GCM_SHA384
        server_type: physical
        proxy_protocol_version: v1
        sni_strict: disable
        recover: 0
        port: 80
        ssl_cipher: medium
        conn_limit: 0
        client_certificate_forwarding_cert_header: X-Client-Cert
        multi_certificate: disable
        hsts_header: disable
        tls_v12: enable
        tls_v13: disable
        tls_v10: enable
        tls_v11: enable
        proxy_protocol: disable
        client_certificate_proxy: disable
        server_side_sni: disable
        ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-ECDSA-CHACHA20-POLY1305 ECDHE-RSA-CHACHA20-POLY1305 ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES256-SHA384 ECDHE-ECDSA-AES128-SHA256 ECDHE-RSA-AES128-SHA256 ECDHE-ECDSA-AES256-SHA ECDHE-RSA-AES256-SHA ECDHE-ECDSA-AES128-SHA ECDHE-RSA-AES128-SHA AES256-GCM-SHA384 AES128-GCM-SHA256 AES256-SHA256 AES128-SHA256
        session_id_reuse: disable
        status: enable
        urlcert: disable
        hsts_include_subdomains: disable
        client_certificate_forwarding_sub_header: X-Client-DN
        warm_rate: 10
        server_certificate_verify_action: alert
        sni: disable
        warm_up: 0
        ssl: disable
        ssl_noreg: enable
        health_check_inherit: enable
        session_ticket_reuse: disable
        backup_server: disable
        client_certificate_forwarding: disable
        http2: disable
        hsts_preload: disable
        certificate_type: disable
 

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