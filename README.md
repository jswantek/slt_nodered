# SAGE Lamba Triggers NodeRED Instance

This project creates a dockerized instance of NodeRED for user configuration of
SAGE lambda triggers.

References:
* https://nodered.org/
* https://nodered.org/docs/user-guide/
* https://nodered.org/docs/creating-nodes/

## Usage

```bash
docker-compose build
docker-compose up
```

Navigate to: http://127.0.0.1:1880/

### Docker Instance Details

The `_data` directory is a volume mount of all persistent user data containing
the created flows and any user installed nodes.

The `_test` directory is mounted at `/test` within the container for use in
flows (ex. to watch a directory).

## Configuration
### nodeRED settings

Modify the `nodered_data/settings.js` file to change some of the settings of the
deployed nodeRED instance.

Reference: https://nodered.org/docs/user-guide/runtime/configuration

### nodeRED packages

Modify the `nodered_data/package.json` file to change the nodeRED configuration.
This includes the name, description, version and nodes to pre-install
("dependencies").
