
Run Your First Playbook
==============================

This document explains how to run your first FortiWeb Ansible playbook.

--------------

With FortiWeb Galaxy collection, you are always recommended to run
FortiWeb module in ``httpapi`` manner. The first step is to prepare your
host inventory with which you can use ``ansible-vault`` to encrypt or
decrypt your secrets for the sake of confidentiality.

Prepare host inventory
~~~~~~~~~~~~~~~~~~~~~~

in our case we create a file named ``hosts``:

::

   [fortiwebs]
   fortiweb01 ansible_host=192.168.190.130 ansible_user="admin" ansible_password="password"
   fortiweb02 ansible_host=192.168.190.131 ansible_user="admin" ansible_password="password"

   [fortiwebs:vars]
   ansible_network_os=fortinet.fortiweb.fwebos
   ansible_httpapi_use_ssl=yes
   ansible_httpapi_validate_certs=no
   ansible_httpapi_port=443



Write the playbook
~~~~~~~~~~~~~~~~~~

in the example: ``test.yml`` we are going to modify the fortiweb device's idle timeout to 468 and hostname to 'testhost1'.

::

    ---
    - name:
      hosts: fortiweb01
      connection: httpapi
      collections:
      - fortinet.fortiweb
      gather_facts: false
      tasks:
        - name: Manage system setting
          fwebos_system_setting:
           idle_timeout: 468
           hostname: testhost1


there are several options which might need you special care:

-  **connection** : ``httpapi`` is preferred.
-  **collections** : The namespace must be ``fortinet.fortiweb``
   default when your fortiweb device is licensed, the https is enabled.

Run the playbook
~~~~~~~~~~~~~~~~

::

   ansible-playbook -i hosts test.yml

you can also observe the verbose output by adding option at the tail:
``-vvv``.

.. _FortiOS API Spec: https://fndn.fortinet.net/index.php?/fortiapi/44-fortiweb/
