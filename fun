---
- hosts: localhost
  gather_facts: no

  tasks:
    - name: "Only show diff between test1.txt & test2.txt" 
      copy:
        src: /tmp/test2.txt
        dest: /tmp/test1.txt
      check_mode: yes
      diff: yes

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

