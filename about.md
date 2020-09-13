---
layout: default
---
# About

## CodeRx Members
{% for user in site.github.organization_members %}
  * [{{ user.login }}]({{ user.html_url }})
{% endfor %}

## Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
  {% for user in repository.contributors %}
    * {{ user.name }}
  {% endfor %}

{% endfor %}


<script>
{% for repository in site.github.public_repositories %}
   console.log({{ repository }})
{% endfor %}
 
</script>
