FROM node:15-alpine
RUN apk update
RUN apk add git make g++ python2
RUN git clone https://github.com/kelyvin/jsonresume-theme-caffeine.git /jsonresume
WORKDIR /jsonresume
RUN npm install -g resume-cli gulp-cli
RUN yarn install
RUN npx gulp
ADD entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
ADD custom/public /jsonresume/public
ADD custom/style.css /jsonresume/style.css
CMD ["resume", "export", "--theme", ".", "--resume", "/json/full.json", "/html/full.html"]

