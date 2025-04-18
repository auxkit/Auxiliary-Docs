chmod +x ./docsify-to-pdf.sh
docker pull ghcr.io/kernoeb/docker-docsify-pdf:latest
mkdir -p $(pwd)/pdf

docker run --rm -it \
  --cap-add=SYS_ADMIN \
  --user $(id -u):$(id -g) \
  -v $(pwd)/docs:/home/node/docs:ro \
  -v $(pwd)/pdf:/home/node/pdf:rw \
  -v $(pwd)/resources/covers/cover.pdf:/home/node/resources/cover.pdf:ro \
  -e "PDF_OUTPUT_NAME=docs.pdf" \
  ghcr.io/kernoeb/docker-docsify-pdf:latest