FROM rabbitmq:3-alpine
COPY aliyun-jiankong.sh /
COPY post_rabbitmq_jiankong.sh /
ENV ALIYUN_USER_ID 123456
RUN echo -e "*/1 * * * * sh /post_rabbitmq_jiankong.sh" >> /etc/crontabs/root
