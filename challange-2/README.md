# Challenge (2)
Write a script that reads the following XML file and creates an array of objects where each object
represents one key/value pair, then print the array to the Console in a tabular format.
Note: Please use any scripting language of your choice (e.g., Python, PowerShell, etc.).

XML File Contents:
```xml
<?xml version="1.0"?>
<appSettings file="ConfigKeys.config">
 <add key="webpages:Version" value="1.0.0.0" />
 <add key="webpages:Enabled" value="true" />
 <add key="EnableCache" value="true" />
 <add key="ConnectionString" value="server=Server1,password=P@ssW0rd"/>
</appSettings>
```

Expected Output (Sample):

| Key              | Value                            |
|------------------|----------------------------------|
| webpages:Version | 1.0.0.0                          |
| webpages:Enabled | true                             |
| EnableCache      | true                             |
| ConnectionString | server=Server1,password=P@ssW0rd |

---
### Install steps

```sh
    # Install dependencies
    $ pip install -r requirements.txt

    # Run it
    $ python3 xml-tabular.py
```

---
# Recommendations:
- Use XML parser.
- Make interactive script to take input from users.