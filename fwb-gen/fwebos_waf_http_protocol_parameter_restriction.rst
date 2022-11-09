:source: fwebos_waf_http_protocol_parameter_restriction.py

:orphan:

.. fwebos_waf_http_protocol_parameter_restriction.py:

fwebos_waf_http_protocol_parameter_restriction.py -- Config FortiWeb Web Protection HTTP Constraints
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Web Protection HTTP Constraints


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
 <td>fwebos_waf_http_protocol_parameter_restriction.py</td>
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
              <li><span class="li-head"> max-http-header-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-header-length </span> max length of header, default value is 8192 <span class="li-normal"> type:integer
                    maximum:12288
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-header-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-header-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-header-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-header-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-header-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-content-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-content-length </span> max length (KB) of content, 0 means this value has not limitation <span class="li-normal"> type:integer
                    maximum:65536
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-content-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-content-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-content-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-content-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-content-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-body-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-body-length </span> max length (KB) of body, 0 means this value has not limitation <span class="li-normal"> type:integer
                    maximum:65536
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-body-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-body-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-body-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-body-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-body-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-request-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-request-length </span> max length of http request, default value is 2048[0,65536] (KB) <span class="li-normal"> type:integer
                    maximum:65536
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-request-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-request-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-request-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-request-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-request-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-url-parameter-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-url-parameter-length </span> max length of url parameter, default value is 8192 <span class="li-normal"> type:integer
                    maximum:12288
                    minimum:0</span></li>
              <li><span class="li-head"> max-url-parameter-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-url-parameter-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-url-parameter-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-url-parameter-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-url-parameter-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-http-version-check </span>  <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-http-version-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-http-version-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-http-version-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-http-version-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-http-version-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-cookie-in-request-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-cookie-in-request </span> max count of cookie request, default value is 128 [0,1023] <span class="li-normal"> type:integer
                    maximum:1023
                    minimum:0</span></li>
              <li><span class="li-head"> max-cookie-in-request-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-cookie-in-request-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-cookie-in-request-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-cookie-in-request-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-cookie-in-request-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-header-line-request-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-header-line-request </span> max count of header line request, default value is 64 [0,128] <span class="li-normal"> type:integer
                    maximum:128
                    minimum:0</span></li>
              <li><span class="li-head"> max-header-line-request-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-header-line-request-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-header-line-request-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-header-line-request-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-header-line-request-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-http-request-method-check </span>  <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-http-request-method-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-http-request-method-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-http-request-method-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-http-request-method-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-http-request-method-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-url-parameter-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-url-parameter </span> max number of url parameter, default value is 128 [0,1023] <span class="li-normal"> type:integer
                    maximum:1023
                    minimum:0</span></li>
              <li><span class="li-head"> max-url-parameter-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-url-parameter-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-url-parameter-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-url-parameter-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-url-parameter-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-host-name-check </span>  <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-host-name-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-host-name-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-host-name-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-host-name-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-host-name-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header </span> max ranges in Range Header,default value is 5 [0 ,64] <span class="li-normal"> type:integer
                    maximum:64
                    minimum:0</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> number-of-ranges-in-range-header-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> http2-max-requests-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> http2-max-requests </span> max number of requests in HTTP2 connection, default value is 1000 [0 ,65535] <span class="li-normal"> type:integer
                    maximum:65535
                    minimum:0</span></li>
              <li><span class="li-head"> http2-max-requests-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> http2-max-requests-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> http2-max-requests-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> http2-max-requests-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> http2-max-requests-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> exception_name </span> exception <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> block-malformed-request-check </span> block malformed request check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> block-malformed-request-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> block-malformed-request-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> block-malformed-request-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> block-malformed-request-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> block-malformed-request-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-content-length-check </span>  <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-content-length-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-content-length-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-content-length-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-content-length-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-content-length-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-content-type-check </span>  <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-content-type-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-content-type-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-content-type-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-content-type-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-content-type-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-response-code-check </span>  <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-response-code-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-response-code-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-response-code-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-response-code-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-response-code-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Post-request-ctype-check </span> Post Request -- Missing Content Type Check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Post-request-ctype-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Post-request-ctype-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Post-request-ctype-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Post-request-ctype-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Post-request-ctype-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-header-name-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-header-name-length </span> max length of header name, default value is 50 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-header-name-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-header-name-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-header-name-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-header-name-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-header-name-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-header-value-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-header-value-length </span> max length of header value, default value is 4096 <span class="li-normal"> type:integer
                    maximum:12288
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-header-value-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-header-value-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-header-value-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-header-value-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-header-value-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> parameter-name-check </span> Null Character in Parameter Name <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> parameter-name-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> parameter-name-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> parameter-name-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> parameter-name-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> parameter-name-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> parameter-value-check </span> Null Character in Parameter Value <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> parameter-value-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> parameter-value-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> parameter-value-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> parameter-value-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> parameter-value-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-header-name-check </span> Illgal Byte Code Character in Header Name Check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-header-name-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-header-name-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-header-name-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-header-name-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-header-name-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Illegal-header-value-check </span> Illgal Byte Code Character in Header Value Check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Illegal-header-value-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Illegal-header-value-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Illegal-header-value-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Illegal-header-value-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Illegal-header-value-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-body-parameter-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-body-parameter-length </span> max length of body parameter, default value is 8192 <span class="li-normal"> type:integer
                    maximum:16384
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-body-parameter-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-body-parameter-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-body-parameter-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-body-parameter-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-body-parameter-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-http-request-filename-length-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-http-request-filename-length </span> max length of request filename, default value is 2048 <span class="li-normal"> type:integer
                    maximum:12288
                    minimum:0</span></li>
              <li><span class="li-head"> max-http-request-filename-length-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-http-request-filename-length-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-http-request-filename-length-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-http-request-filename-length-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-http-request-filename-length-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> web-socket-protocol-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> web-socket-protocol-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> web-socket-protocol-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> web-socket-protocol-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> web-socket-protocol-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-setting-header-table-size-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-setting-header-table-size </span> max setting header table size, default value is 4096 <span class="li-normal"> type:integer
                    maximum:16777215
                    minimum:0</span></li>
              <li><span class="li-head"> max-setting-header-table-size-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-setting-header-table-size-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-setting-header-table-size-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-setting-header-table-size-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-setting-current-streams-num-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-setting-current-streams-num </span> max setting current streams number, default value is 256 <span class="li-normal"> type:integer
                    maximum:100000
                    minimum:0</span></li>
              <li><span class="li-head"> max-setting-current-streams-num-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-setting-current-streams-num-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-setting-current-streams-num-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-setting-current-streams-num-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-setting-initial-window-size-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-setting-initial-window-size </span> max setting initial window size, default value is 6291456 <span class="li-normal"> type:integer
                    maximum:2147483647
                    minimum:0</span></li>
              <li><span class="li-head"> max-setting-initial-window-size-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-setting-initial-window-size-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-setting-initial-window-size-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-setting-initial-window-size-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-setting-frame-size-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-setting-frame-size </span> max setting frame size, default value is 16384 <span class="li-normal"> type:integer
                    maximum:16777215
                    minimum:0</span></li>
              <li><span class="li-head"> max-setting-frame-size-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-setting-frame-size-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-setting-frame-size-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-setting-frame-size-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-setting-header-list-size-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-setting-header-list-size </span> max setting header list size, default value is 65536 <span class="li-normal"> type:integer
                    maximum:16777215
                    minimum:0</span></li>
              <li><span class="li-head"> max-setting-header-list-size-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-setting-header-list-size-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-setting-header-list-size-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-setting-header-list-size-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-url-param-name-len-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-url-param-name-len </span> max url parameter name length, default value is 4096 <span class="li-normal"> type:integer
                    maximum:8192
                    minimum:0</span></li>
              <li><span class="li-head"> max-url-param-name-len-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-url-param-name-len-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-url-param-name-len-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-url-param-name-len-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-url-param-name-len-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> max-url-param-value-len-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> max-url-param-value-len </span> max url parameter value length, default value is 4096 <span class="li-normal"> type:integer
                    maximum:8192
                    minimum:0</span></li>
              <li><span class="li-head"> max-url-param-value-len-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> max-url-param-value-len-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> max-url-param-value-len-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> max-url-param-value-len-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> max-url-param-value-len-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> url-param-name-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> url-param-name-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> url-param-name-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> url-param-name-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> url-param-name-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> url-param-name-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> url-param-value-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> url-param-value-check-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> url-param-value-check-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> url-param-value-check-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> url-param-value-check-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> url-param-value-check-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> null-byte-in-url-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> null-byte-in-url-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> null-byte-in-url-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> null-byte-in-url-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> null-byte-in-url-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> null-byte-in-url-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> illegal-byte-in-url-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> illegal-byte-in-url-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> illegal-byte-in-url-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> illegal-byte-in-url-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> illegal-byte-in-url-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> illegal-byte-in-url-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> malformed-url-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> malformed-url-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> malformed-url-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> malformed-url-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> malformed-url-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> malformed-url-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> redundant-header-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> redundant-header-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> redundant-header-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> redundant-header-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> redundant-header-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> redundant-header-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> chunk-size-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> chunk-size-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> chunk-size-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> chunk-size-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> chunk-size-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> chunk-size-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> Internal-resource-limits-check </span> Internal resource limits check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> Internal-resource-limits-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> Internal-resource-limits-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> Internal-resource-limits-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> Internal-resource-limits-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> Internal-resource-limits-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> rpc-protocol-check </span> rpc protocol check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> rpc-protocol-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> rpc-protocol-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> rpc-protocol-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> rpc-protocol-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> rpc-protocol-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> duplicate-paramname-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> duplicate-paramname-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> duplicate-paramname-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> duplicate-paramname-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
              <li><span class="li-head"> duplicate-paramname-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> duplicate-paramname-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> odd-and-even-space-attack-check </span> check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> odd-and-even-space-attack-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> odd-and-even-space-attack-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> odd-and-even-space-attack-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> odd-and-even-space-attack-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> odd-and-even-space-attack-weight </span> threat weight <span class="li-normal"> type:string choice:
                      low,
                      critical,
                      informational,
                      moderate,
                      substantial,
                      severe,</span></li>
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
       fwebos_waf_http_protocol_parameter_restriction:
        action: delete 
        name: aaa
        vdom: root
           
     - name: Create
       fwebos_waf_http_protocol_parameter_restriction:
        action: add
        vdom: root
        exception_name: test4
        name: test3
 
     - name: edit
       fwebos_waf_http_protocol_parameter_restriction:
        action: edit 
        vdom: root
        exception_name: test4
        name: test4
 

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