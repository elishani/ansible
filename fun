- name: change dir recrusivly
  file:
    path: "{{ path }}"
    state: directory
    recurse: yes
    owner: "{{ owner }}"
    group: "{{ group }}"
    mode: "{{ mode }}"

---
- hosts: test
  
  roles:
    - { role: dir, path: "/tmp/elidir", owner: "eli", group: "eli", mode: "600"  }

