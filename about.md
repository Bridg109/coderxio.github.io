---
layout: default
---

# Organization
{% for user in site.github.organization_members %}
  * {{ user.first_name }}
{% endfor %}

# Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.title }}]({{ repository.html_url }})
{% endfor %}
