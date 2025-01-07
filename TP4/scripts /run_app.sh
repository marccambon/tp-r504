docker run -d \
    -p 5000:5000 \
    -v ~/TP-R504/TP4/apppy/app_data:/srv/app1 \
    --name tp4-app \
    --network net-tp4 \
    im-tp4:latest