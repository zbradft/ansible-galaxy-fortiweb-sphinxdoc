:source: fwebos_server_pool.py

:orphan:

.. fwebos_server_pool.py:

fwebos_server_pool.py -- Config FortiWeb server objects Server Pool
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb server objects Server Pool


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
 <td>fwebos_server_pool.py</td>
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
              <li><span class="li-head"> type </span> server pool type <span class="li-normal"> type:string choice:
                      reverse-proxy,
                      offline-protection,
                      transparent-servers-for-tp,
                      transparent-servers-for-ti,
                      transparent-servers-for-wccp,</span></li>
              <li><span class="li-head"> protocol </span> protocol <span class="li-normal"> type:string choice:
                      HTTP,
                      FTP,
                      ADFSPIP,
                      TCPPROXY,</span></li>
              <li><span class="li-head"> server-balance </span> switch server balance <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> health </span> health check <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> hlck-sip </span> Source IP address for TTP health check <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> hlck-sip6 </span> Source IPv6 address for TTP health check <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> lb-algo </span> load balance algo <span class="li-normal"> type:string choice:
                      round-robin,
                      weighted-round-robin,
                      least-connections,
                      uri-hash,
                      full-uri-hash,
                      host-hash,
                      host-domain-hash,
                      src-ip-hash,</span></li>
              <li><span class="li-head"> persistence </span> persistence policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> comment </span> comment <span class="li-normal"> type:string
                    maxLength:199</span></li>
              <li><span class="li-head"> server-pool-id </span> server pool id <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> http-reuse </span> reuse fd connect to server <span class="li-normal"> type:string choice:
                      never,
                      safe,
                      aggressive,
                      always,</span></li>
              <li><span class="li-head"> reuse-conn-total-time </span> max times value(unit: second) <span class="li-normal"> type:integer
                    maximum:1000
                    minimum:1</span></li>
              <li><span class="li-head"> reuse-conn-idle-time </span> max times value(unit: second) <span class="li-normal"> type:integer
                    maximum:1000
                    minimum:1</span></li>
              <li><span class="li-head"> reuse-conn-max-request </span> max requset/response times <span class="li-normal"> type:integer
                    maximum:1000
                    minimum:1</span></li>
              <li><span class="li-head"> reuse-conn-max-count </span> max connection number <span class="li-normal"> type:integer
                    maximum:1000
                    minimum:1</span></li>
              <li><span class="li-head"> adfs-server-name </span> adfs server name, only for ADFSPIP <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> pserver-list </span> pserver list <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> name of pserver list </li>
                      <li> <span class="li-head"> server-type </span> server type </li>
                      <li> <span class="li-head"> ip </span> ip address </li>
                      <li> <span class="li-head"> domain </span> domain name </li>
                      <li> <span class="li-head"> adfs-username </span> adfs username for registry, only for ADFSPIP </li>
                      <li> <span class="li-head"> adfs-password </span> adfs password for registry, only for ADFSPIP </li>
                      <li> <span class="li-head"> sdn-addr-type </span> Type of addresses to collect. </li>
                      <li> <span class="li-head"> sdn </span> sdn connector </li>
                      <li> <span class="li-head"> filter </span> Match criteria filter. </li>
                      <li> <span class="li-head"> port </span> server port </li>
                      <li> <span class="li-head"> weight </span> weight </li>
                      <li> <span class="li-head"> status </span> status </li>
                      <li> <span class="li-head"> server-id </span> server id </li>
                      <li> <span class="li-head"> backup-server </span> backup-server </li>
                      <li> <span class="li-head"> proxy-protocol </span> pserver proxy protocol switch </li>
                      <li> <span class="li-head"> proxy-protocol-version </span> pserver proxy protocol version </li>
                      <li> <span class="li-head"> ssl </span> ssl </li>
                      <li> <span class="li-head"> implicit_ssl </span> implicit ssl switch, only use for ftp </li>
                      <li> <span class="li-head"> ssl-quiet-shutdown </span> enable/disable SSL quiet Shutdown </li>
                      <li> <span class="li-head"> ssl-session-timeout </span> ssl session timeout setting, default value 7200s, range (1, 14400) </li>
                      <li> <span class="li-head"> server-side-sni </span> enable/disable SNI transparent </li>
                      <li> <span class="li-head"> multi-certificate </span> enable multi certificate </li>
                      <li> <span class="li-head"> certificate </span> certificate </li>
                      <li> <span class="li-head"> certificate-group </span> multi certificate group </li>
                      <li> <span class="li-head"> certificate-type </span> enable letsencrypt certificate </li>
                      <li> <span class="li-head"> lets-certificate </span> letsencrypt certificate </li>
                      <li> <span class="li-head"> intermediate-certificate-group </span> intermediate-certificate-group </li>
                      <li> <span class="li-head"> certificate-verify </span> certificate-verify </li>
                      <li> <span class="li-head"> client-certificate-proxy </span> client certificate proxyd enable/disable, Must be set certificate-verify </li>
                      <li> <span class="li-head"> client-certificate-proxy-sign-ca </span> client certificate proxy sign ca, Must be set certificate-verify </li>
                      <li> <span class="li-head"> client-certificate </span> client-certificate </li>
                      <li> <span class="li-head"> server-certificate-verify </span> enable/disable server certificate verify </li>
                      <li> <span class="li-head"> server-certificate-verify-policy </span> server certificate verify </li>
                      <li> <span class="li-head"> server-certificate-verify-action </span> action for server certificate verify </li>
                      <li> <span class="li-head"> session-ticket-reuse </span> enable/disable session ticket reuse </li>
                      <li> <span class="li-head"> session-id-reuse </span> enable/disable session id reuse </li>
                      <li> <span class="li-head"> sni </span> SNI status </li>
                      <li> <span class="li-head"> sni-certificate </span> SNI certificate </li>
                      <li> <span class="li-head"> sni-strict </span> SNI strict mode </li>
                      <li> <span class="li-head"> urlcert </span> URL based client certificate </li>
                      <li> <span class="li-head"> urlcert-group </span> URL based client certificate group </li>
                      <li> <span class="li-head"> urlcert-hlen </span> URL based client certificate max http request length if matched(16-10240K) </li>
                      <li> <span class="li-head"> use-ciphers-group </span> use SSL ciphers group or not </li>
                      <li> <span class="li-head"> ssl-ciphers-group </span> SSL ciphers group </li>
                      <li> <span class="li-head"> tls-v10 </span> TLS 1.0 protocol status </li>
                      <li> <span class="li-head"> tls-v11 </span> TLS 1.1 protocol status </li>
                      <li> <span class="li-head"> tls-v12 </span> TLS 1.2 protocol status </li>
                      <li> <span class="li-head"> tls-v13 </span> TLS 1.3 protocol
                                    status </li>
                      <li> <span class="li-head"> ssl-noreg </span> SSL no renegotiate </li>
                      <li> <span class="li-head"> ssl-cipher </span> SSL cipher-suite </li>
                      <li> <span class="li-head"> ssl-custom-cipher </span> SSL custom cipher-suite </li>
                      <li> <span class="li-head"> tls13-custom-cipher </span> TLSv1.3 custom cipher-suite </li>
                      <li> <span class="li-head"> hsts-header </span> hsts header support </li>
                      <li> <span class="li-head"> hsts-max-age </span> hsts max age value </li>
                      <li> <span class="li-head"> hsts-include-subdomains </span> hsts include 
				subdomains support </li>
                      <li> <span class="li-head"> hsts-preload </span> hsts preload support </li>
                      <li> <span class="li-head"> hpkp-header </span> hpkp header support </li>
                      <li> <span class="li-head"> client-certificate-forwarding </span> client certificate forwarding </li>
                      <li> <span class="li-head"> client-certificate-forwarding-sub-header </span> custom header of client certificate forwarding subject </li>
                      <li> <span class="li-head"> client-certificate-forwarding-cert-header </span> custom header of client certificate forwarding certificate </li>
                      <li> <span class="li-head"> health-check-inherit </span> inherit serverpool's health check </li>
                      <li> <span class="li-head"> health </span> health check </li>
                      <li> <span class="li-head"> conn-limit </span> set connection limit </li>
                      <li> <span class="li-head"> recover </span> seconds to postpone forwarding traffic after downtime </li>
                      <li> <span class="li-head"> warm-up </span> how long to forward traffic at a lesser rate </li>
                      <li> <span class="li-head"> warm-rate </span> maximum connection rate while the server is starting up </li>
                      <li> <span class="li-head"> http2 </span> http2 enable/disable </li>
                      <li> <span class="li-head"> hlck-domain </span> health check domain name </li>
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
     - name: delete server pool 
       fwebos_server_pool:
        action: delete 
        vdom: root
        name: test 
           
     - name: Create server pool 
       fwebos_server_pool:
        action: add 
        vdom: root
        name: test
        type: reverse-proxy
        server_balance: enable
        lb_algo: round-robin
        comment: test111
        health: HLTHCK_ICMP
        persistence: test
        reuse_conn_total_time: 100
        reuse_conn_max_request: 100
        reuse_conn_max_count: 100
 
     - name: edit server pool
       fwebos_server_pool:
        action: edit 
        vdom: root
        name: test
        type: reverse-proxy
        server_balance: enable
        lb_algo: round-robin
        comment: test111
        health: HLTHCK_ICMP
        persistence: test
        reuse_conn_total_time: 100
        reuse_conn_idle_time: 20
        reuse_conn_max_request: 100
        reuse_conn_max_count: 100
 

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