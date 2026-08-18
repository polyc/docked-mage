# docked-mage
Exposing **XMage** launcher, server and client through a `docker` container running `novnc`, accessible from a web browser.

This is useful when `X11` is not available on some systems.

# Setup
 Having `docker` and `docker-compose` available on your system is needed for this to work.

 - Download the latest **XMage** build archive and extract it in a dedicated `folder`.
 - Clone this reposiory and `cd` into it.
 - Place the path to the extracted software in the `volumes` section of `docker-compose.yml`.
    ```
    volumes:
         - /path/to/xmage/launcher/root/folder:/xmage:rw
    ```
- Run `docker compose up -d --build`.
- Once the container is up, paste `http://localhost:6080/vnc.html` in your favorite browser.
- Hit "Connect" in the loaded NoVNC server landing page and enjoy **XMage** ! 

- Run `docker compose down` in order to shut down the container.