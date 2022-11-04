{{ dashboard = {**dashboard, "id": None, "uid": None} }}
{{ overwrite = {True: "true", False: "false"}[globals().get("overwrite", True)] }}
{
    "dashboard": {{ =to_json(dashboard) }},
    "folderUid": "{{ =folder }}",
    "message": "{{ =message }}",
    "overwrite": {{ =overwrite }}
}
