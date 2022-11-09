:source: fwebos_server_policy.py

:orphan:

.. fwebos_server_policy.py:

fwebos_server_policy.py -- Config FortiWeb Policy Server Policy
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Policy Server Policy


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
 <td>fwebos_server_policy.py</td>
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
              <li><span class="li-head"> name </span> policy name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> deployment-mode </span> deployment mode <span class="li-normal"> type:string choice:
                      server-pool,
                      http-content-routing,
                      offline-protection,
                      transparent-servers,
                      wccp-servers,</span></li>
              <li><span class="li-head"> protocol </span> protocol <span class="li-normal"> type:string choice:
                      HTTP,
                      FTP,
                      ADFSPIP,
                      TCPPROXY,</span></li>
              <li><span class="li-head"> ssl </span> ssl switch <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> implicit_ssl </span> implicit ssl switch <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> vserver </span> vserver <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> v-zone </span> v-zone <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> service </span> service <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> proxy-protocol </span> policy proxy protocol switch <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> use-proxy-protocol-addr </span> use addr from proxy protocol for security checking <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ftp-protection-profile </span> ftp application protection profile <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> web-protection-profile </span> web application protection profile <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> replacemsg </span> replacement message template <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> server-pool </span> server pool <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> traffic-mirror </span> traffic mirror switch <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> traffic-mirror-profile </span> traffic mirror profile <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> traffic-mirror-type </span> traffic mirror type <span class="li-normal"> type:string choice:
                      client-side,
                      server-side,
                      both-side,</span></li>
              <li><span class="li-head"> allow-hosts </span> allow hosts <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> allow-list </span> allow list <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> acceleration-policy </span> acceleration policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> https-service </span> https service <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> multi-certificate </span> enable multi certificate <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> adfs-certificate-service </span> adfspip certificate service <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> adfs-certificate-ssl-client-verify </span> SSL client certificate verify <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> send-buffers-number </span> the number of the send buffers used for forwarding data, range 0-256, 0 means no limit, each buffer size is 4kB <span class="li-normal"> type:integer
                    maximum:256
                    minimum:0</span></li>
              <li><span class="li-head"> certificate-type </span> enable letsencrypt certificate <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> lets-certificate </span> letsencrypt certificate <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> certificate </span> certificate <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> certificate-group </span> multi certificate group <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> intermediate-certificate-group </span> Intermediate Certificate Group <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> ssl-client-verify </span> SSL client certificate verify <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> use-ciphers-group </span> use SSL ciphers group or not <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ssl-ciphers-group </span> SSL ciphers group <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> tls-v10 </span> TLS 1.0 protocol status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> tls-v11 </span> TLS 1.1 protocol status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> tls-v12 </span> TLS 1.2 protocol status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> tls-v13 </span> TLS 1.3 protocol status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ssl-noreg </span> SSL no renegotiate <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ssl-cipher </span> SSL cipher-suite <span class="li-normal"> type:string choice:
                      medium,
                      high,
                      custom,</span></li>
              <li><span class="li-head"> ssl-custom-cipher </span> SSL custom cipher-suite <span class="li-normal"> type:string choice:
                      ECDHE-ECDSA-AES256-GCM-SHA384,
                      ECDHE-RSA-AES256-GCM-SHA384,
                      DHE-DSS-AES256-GCM-SHA384,
                      DHE-RSA-AES256-GCM-SHA384,
                      ECDHE-ECDSA-CHACHA20-POLY1305,
                      ECDHE-RSA-CHACHA20-POLY1305,
                      DHE-RSA-CHACHA20-POLY1305,
                      ECDHE-ECDSA-AES256-CCM8,
                      ECDHE-ECDSA-AES256-CCM,
                      DHE-RSA-AES256-CCM8,
                      DHE-RSA-AES256-CCM,
                      ECDHE-ECDSA-AES128-GCM-SHA256,
                      ECDHE-RSA-AES128-GCM-SHA256,
                      DHE-DSS-AES128-GCM-SHA256,
                      DHE-RSA-AES128-GCM-SHA256,
                      ECDHE-ECDSA-AES128-CCM8,
                      ECDHE-ECDSA-AES128-CCM,
                      DHE-RSA-AES128-CCM8,
                      DHE-RSA-AES128-CCM,
                      ECDHE-ECDSA-AES256-SHA384,
                      ECDHE-RSA-AES256-SHA384,
                      DHE-RSA-AES256-SHA256,
                      DHE-DSS-AES256-SHA256,
                      ECDHE-ECDSA-CAMELLIA256-SHA384,
                      ECDHE-RSA-CAMELLIA256-SHA384,
                      DHE-RSA-CAMELLIA256-SHA256,
                      DHE-DSS-CAMELLIA256-SHA256,
                      ECDHE-ECDSA-AES128-SHA256,
                      ECDHE-RSA-AES128-SHA256,
                      DHE-RSA-AES128-SHA256,
                      DHE-DSS-AES128-SHA256,
                      ECDHE-ECDSA-CAMELLIA128-SHA256,
                      ECDHE-RSA-CAMELLIA128-SHA256,
                      DHE-RSA-CAMELLIA128-SHA256,
                      DHE-DSS-CAMELLIA128-SHA256,
                      ECDHE-ECDSA-AES256-SHA,
                      ECDHE-RSA-AES256-SHA,
                      DHE-RSA-AES256-SHA,
                      DHE-DSS-AES256-SHA,
                      DHE-RSA-CAMELLIA256-SHA,
                      DHE-DSS-CAMELLIA256-SHA,
                      ECDHE-ECDSA-AES128-SHA,
                      ECDHE-RSA-AES128-SHA,
                      DHE-RSA-AES128-SHA,
                      DHE-DSS-AES128-SHA,
                      ECDHE-ARIA128-GCM-SHA256,
                      DHE-RSA-ARIA128-GCM-SHA256,
                      AES256-GCM-SHA384,
                      AES256-CCM8,
                      AES256-CCM,
                      AES128-GCM-SHA256,
                      AES128-CCM8,
                      AES128-CCM,
                      AES256-SHA256,
                      CAMELLIA256-SHA256,
                      AES128-SHA256,
                      CAMELLIA128-SHA256,
                      AES256-SHA,
                      DHE-RSA-ARIA256-GCM-SHA384,
                      AES128-SHA,
                      ECDHE-ARIA256-GCM-SHA384,
                      DHE-RSA-SEED-SHA,
                      ECDHE-RSA-DES-CBC3-SHA,
                      DES-CBC3-SHA,</span></li>
              <li><span class="li-head"> tls13-custom-cipher </span> TLSv1.3 custom cipher-suite <span class="li-normal"> type:string choice:
                      TLS_AES_256_GCM_SHA384,
                      TLS_CHACHA20_POLY1305_SHA256,
                      TLS_AES_128_GCM_SHA256,
                      TLS_AES_128_CCM_SHA256,
                      TLS_AES_128_CCM_8_SHA256,</span></li>
              <li><span class="li-head"> sni </span> SNI status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sni-certificate </span> SNI Certificate <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sni-strict </span> strict SNI mode <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> urlcert </span> URL based client certificate <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> urlcert-group </span> URL based client certificate group <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> urlcert-hlen </span> URL based client certificate max http request length if matched(16-10240K) <span class="li-normal"> type:integer
                    maximum:10240
                    minimum:16</span></li>
              <li><span class="li-head"> case-sensitive </span> case sensitive <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> status </span> status: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> comment </span> comment <span class="li-normal"> type:string
                    maxLength:999</span></li>
              <li><span class="li-head"> block-port </span> block port <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> noparse </span> Enable pure proxy or not: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> data-capture-port </span> Data capture port <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> monitor-mode </span> Monitor mode: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> web-cache </span> WEB cache mode: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> http-to-https </span> Redirect HTTP to HTTPs: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sessioncookie-enforce </span> Enforce session cookie per transaction <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> syncookie </span> syn cookie: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> half-open-threshold </span> half-open threshold (10~10000) <span class="li-normal"> type:integer
                    maximum:10000
                    minimum:10</span></li>
              <li><span class="li-head"> client-certificate-forwarding </span> client certificate forwarding: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> client-certificate-forwarding-sub-header </span> custom header of client certificate forwarding subject <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> client-certificate-forwarding-cert-header </span> custom header of client certificate forwarding certificate <span class="li-normal"> type:string
                    maxLength:255</span></li>
              <li><span class="li-head"> http-pipeline </span> HTTP pipeline support: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> hsts-header </span> hsts header support <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> hsts-max-age </span> max age value(unit: second, 1 hour-1 year) <span class="li-normal"> type:integer
                    maximum:31536000
                    minimum:3600</span></li>
              <li><span class="li-head"> hsts-include-subdomains </span> hsts include subdomains <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> hsts-preload </span> hsts preload <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> hpkp-header </span> hpkp header support <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> prefer-current-session </span> prefer current session <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> policy-id </span> policy id <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> http-content-routing-list </span> http content routing policy list <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span>  </li>
                      <li> <span class="li-head"> content-routing-policy-name </span> content routing policy </li>
                      <li> <span class="li-head"> profile-inherit </span> inherit policy profile flag  </li>
                      <li> <span class="li-head"> web-protection-profile </span> web application protection profile </li>
                      <li> <span class="li-head"> is-default </span> whether default HTTP content routing rule </li>
                      <li> <span class="li-head"> status </span> status: enable/disable </li>
                    </ul></span></li>
              <li><span class="li-head"> client-real-ip </span> keep client real ip to server <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> real-ip-addr </span> speify a client real ip address or range <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> http2 </span> set http2 enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> tcp-recv-timeout </span> max age value(unit: second) of the first http request after tcp handshake <span class="li-normal"> type:integer
                    maximum:300
                    minimum:0</span></li>
              <li><span class="li-head"> http-header-timeout </span> max age value(unit: second) of receiving a successful http header <span class="li-normal"> type:integer
                    maximum:1200
                    minimum:0</span></li>
              <li><span class="li-head"> tcp-conn-timeout </span> max age value(unit: second) of TCP connection timeout <span class="li-normal"> type:integer
                    maximum:600
                    minimum:0</span></li>
              <li><span class="li-head"> internal-cookie-httponly </span> internal cookie http only: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> internal-cookie-secure </span> internal cookie secure: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> internal-cookie-samesite </span> internal cookie samesite: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> internal-cookie-samesite-value </span> internal cookie samesite value <span class="li-normal"> type:string choice:
                      strict,
                      lax,
                      none,</span></li>
              <li><span class="li-head"> content-security-policy-inline </span> content security policy inline: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ssl-quiet-shutdown </span> enable/disable SSL quiet Shutdown <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ssl-session-timeout </span> ssl session timeout setting, default value 7200s, range (1, 14400) <span class="li-normal"> type:integer
                    maximum:14400
                    minimum:1</span></li>
              <li><span class="li-head"> client-timeout </span> max age value(unit: second):Prevent front end connection from closing for a long time, especially when multiplexing function is turned on  <span class="li-normal"> type:integer
                    maximum:1200
                    minimum:0</span></li>
              <li><span class="li-head"> retry-on </span> enable/disable retry on <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> retry-on-cache-size </span> the http request cache size when retry on(32~2048 kB) <span class="li-normal"> type:integer
                    maximum:2048
                    minimum:32</span></li>
              <li><span class="li-head"> retry-on-connect-failure </span> enable/disable retry on connect failure <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> retry-times-on-connect-failure </span> retry times on connect failure, range 1-5 <span class="li-normal"> type:integer
                    maximum:5
                    minimum:1</span></li>
              <li><span class="li-head"> retry-on-http-layer </span> enable/disable retry on http layer, only HEAD/GET methods supported <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> retry-times-on-http-layer </span> retry times on http layer, range 1-5 <span class="li-normal"> type:integer
                    maximum:5
                    minimum:1</span></li>
              <li><span class="li-head"> retry-on-http-response-codes </span> http response codes <span class="li-normal"> type:string choice:
                      404,
                      408,
                      500,
                      501,
                      502,
                      503,
                      504,</span></li>
              <li><span class="li-head"> replacemsg-on-connect-failure </span> enable/disable sending replacemsg to client on connect failure <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> chunk-encoding </span> chunk-encoding <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> tlog </span> tlog: enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> web-cache-storage </span> Web Cache Storage <span class="li-normal"> type:string choice:
                      redis-db,
                      hash-table,</span></li>
              <li><span class="li-head"> scripting </span> enable/disable policy scripting <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> scripting-list </span> policy scripting list <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> ztna-profile </span> ZTNA profile <span class="li-normal"> type:string</span></li>
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
       fwebos_server_policy:
        action: add
        vdom: root
        retry_on_connect_failure: disable
        protocol: HTTP
        client_certificate_forwarding: disable
        client_real_ip: disable
        urlcert_hlen: 32
        hsts_max_age: 15552000
        tls13_custom_cipher: TLS_AES_256_GCM_SHA384
        urlcert: disable
        syncookie: disable
        service: HTTP
        hsts_preload: disable
        sni_strict: disable
        client_certificate_forwarding_cert_header: X-Client-Cert
        retry_times_on_connect_failure: 3
        ssl_cipher: medium
        traffic_mirror_type: client-side
        multi_certificate: enable
        hsts_header: disable
        monitor_mode: disable
        deployment_mode: server-pool
        tls_v13: disable
        tls_v10: enable
        tls_v11: enable
        proxy_protocol: disable
        vserver: test4
        real_ip_addr: 
        ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-ECDSA-CHACHA20-POLY1305 ECDHE-RSA-CHACHA20-POLY1305 ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES256-SHA384 ECDHE-ECDSA-AES128-SHA256 ECDHE-RSA-AES128-SHA256 ECDHE-ECDSA-AES256-SHA ECDHE-RSA-AES256-SHA ECDHE-ECDSA-AES128-SHA ECDHE-RSA-AES128-SHA AES256-GCM-SHA384 AES128-GCM-SHA256 AES256-SHA256 AES128-SHA256
        retry_on_cache_size: 512
        http_to_https: disable
        hsts_include_subdomains: disable
        half_open_threshold: 8192
        retry_on_http_layer: disable
        traffic_mirror: disable
        client_certificate_forwarding_sub_header: X-Client-DN
        sni: disable
        ssl: enable
        web_cache: disable
        ssl_noreg: enable
        retry_on_http_response_codes: 404 408 500 501 502 503 504
        prefer_current_session: disable
        retry_times_on_http_layer: 3
        case_sensitive: disable
        name: test4
        replacemsg: Predefined
        server_pool: test4
        retry_on: disable
        tls_v12: enable
        https_service: HTTPS
        http2: disable
        certificate_type: disable
        http2_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 DHE-DSS-AES128-GCM-SHA256 DHE-RSA-AES128-GCM-SHA256 ECDHE-RSA-AES256-GCM-SHA384
        web_protection_profile: Inline Standard Protection
        certificate_group: test
        allow_hosts: test.com
        intermediate_certificate_group: test
        comment: test111
        tlog: disable
        chunk_encoding: enable
 
     - name: edit
       fwebos_server_policy:
        action: edit 
        vdom: root
        retry_on_connect_failure: disable
        protocol: HTTP
        client_certificate_forwarding: disable
        client_real_ip: disable
        urlcert_hlen: 32
        hsts_max_age: 15552000
        tls13_custom_cipher: TLS_AES_256_GCM_SHA384
        urlcert: disable
        syncookie: disable
        service: HTTP
        hsts_preload: disable
        sni_strict: disable
        client_certificate_forwarding_cert_header: X-Client-Cert
        retry_times_on_connect_failure: 3
        ssl_cipher: medium
        traffic_mirror_type: client-side
        multi_certificate: disable
        hsts_header: disable
        monitor_mode: disable
        deployment_mode: server-pool
        tls_v13: disable
        tls_v10: enable
        tls_v11: enable
        proxy_protocol: disable
        vserver: test4
        real_ip_addr: 
        ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-ECDSA-CHACHA20-POLY1305 ECDHE-RSA-CHACHA20-POLY1305 ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES256-SHA384 ECDHE-ECDSA-AES128-SHA256 ECDHE-RSA-AES128-SHA256 ECDHE-ECDSA-AES256-SHA ECDHE-RSA-AES256-SHA ECDHE-ECDSA-AES128-SHA ECDHE-RSA-AES128-SHA AES256-GCM-SHA384 AES128-GCM-SHA256 AES256-SHA256 AES128-SHA256
        retry_on_cache_size: 512
        http_to_https: disable
        hsts_include_subdomains: disable
        half_open_threshold: 8192
        retry_on_http_layer: disable
        traffic_mirror: disable
        client_certificate_forwarding_sub_header: X-Client-DN
        sni: disable
        ssl: enable
        web_cache: disable
        ssl_noreg: enable
        retry_on_http_response_codes: 404 408 500 501 502 503 504
        prefer_current_session: disable
        retry_times_on_http_layer: 3
        case_sensitive: disable
        name: test4
        replacemsg: Predefined
        server_pool: test4
        retry_on: disable
        tls_v12: enable
        https_service: HTTPS
        http2: disable
        certificate_type: enable
        http2_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 DHE-DSS-AES128-GCM-SHA256 DHE-RSA-AES128-GCM-SHA256 ECDHE-RSA-AES256-GCM-SHA384
        web_protection_profile: Inline Standard Protection
        lets_certificate: test
        allow_hosts: test.com
        intermediate_certificate_group: test
        comment: test111
        tlog: enable
        chunk_encoding: enable
 
     - name: edit
       fwebos_server_policy:
        action: edit 
        vdom: root
        retry_on_connect_failure: disable
        protocol: HTTP
        client_certificate_forwarding: disable
        client_real_ip: disable
        urlcert_hlen: 32
        hsts_max_age: 15552000
        tls13_custom_cipher: TLS_AES_256_GCM_SHA384
        urlcert: disable
        syncookie: disable
        service: HTTP
        hsts_preload: disable
        sni_strict: disable
        client_certificate_forwarding_cert_header: X-Client-Cert
        retry_times_on_connect_failure: 3
        ssl_cipher: medium
        traffic_mirror_type: client-side
        multi_certificate: disable
        hsts_header: disable
        monitor_mode: disable
        deployment_mode: server-pool
        tls_v13: disable
        tls_v10: enable
        tls_v11: enable
        proxy_protocol: disable
        vserver: test4
        real_ip_addr: 
        ssl_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-ECDSA-CHACHA20-POLY1305 ECDHE-RSA-CHACHA20-POLY1305 ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES256-SHA384 ECDHE-ECDSA-AES128-SHA256 ECDHE-RSA-AES128-SHA256 ECDHE-ECDSA-AES256-SHA ECDHE-RSA-AES256-SHA ECDHE-ECDSA-AES128-SHA ECDHE-RSA-AES128-SHA AES256-GCM-SHA384 AES128-GCM-SHA256 AES256-SHA256 AES128-SHA256
        retry_on_cache_size: 512
        http_to_https: disable
        hsts_include_subdomains: disable
        half_open_threshold: 8192
        retry_on_http_layer: disable
        traffic_mirror: disable
        client_certificate_forwarding_sub_header: X-Client-DN
        sni: disable
        ssl: enable
        web_cache: disable
        ssl_noreg: enable
        retry_on_http_response_codes: 404 408 500 501 502 503 504
        prefer_current_session: disable
        retry_times_on_http_layer: 3
        case_sensitive: disable
        name: test4
        replacemsg: Predefined
        server_pool: test4
        retry_on: disable
        tls_v12: enable
        https_service: HTTPS
        http2: disable
        certificate_type: disable 
        http2_custom_cipher: ECDHE-ECDSA-AES256-GCM-SHA384 DHE-DSS-AES128-GCM-SHA256 DHE-RSA-AES128-GCM-SHA256 ECDHE-RSA-AES256-GCM-SHA384
        web_protection_profile: Inline Standard Protection
        certificate: aaa1
        allow_hosts: test.com
        intermediate_certificate_group: test
        comment: test111
        tlog: enable
        chunk_encoding: enable
 
     - name: delete 
       fwebos_server_policy:
        action: delete 
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