# Just install openssh

openssh:
  pkg:
    {% if grains['os'] == 'Gentoo' %}
    - name: net-misc/openssh
    {% endif %}
    - installed