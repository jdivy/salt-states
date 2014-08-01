base:
  pkgrepo.managed:
    - humanname: Fish shell - 2.x release series (RedHat_RHEL-6)
    - name: shells_fish_release_2
    {% if grains.os == 'CentOS' and grains.osfinger == 'CentOS-6' %}
    - baseurl: http://download.opensuse.org/repositories/shells:/fish:/release:/2/RedHat_RHEL-6/
    - gpgkey: http://download.opensuse.org/repositories/shells:/fish:/release:/2/RedHat_RHEL-6/repodata/repomd.xml.key
    {% endif %}
    - enabled: 1
    - gpgcheck: 1
    - require_in:
      - pkg: fish