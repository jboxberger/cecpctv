[Unit]
Description=CEC PC TV Monitor
After=network.target

[Service]
ExecStart={EXECUTABLE} watch
WorkingDirectory={WORKING_DIR}
StandardOutput=inherit
StandardError=inherit
Restart=always
User={USER}

[Install]
WantedBy=multi-user.target
