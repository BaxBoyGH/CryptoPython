ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk update && \
    apk add --no-cache git curl python3 py3-pip

COPY run.sh script.py /
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
CMD ["pip install pycoingecko"]
