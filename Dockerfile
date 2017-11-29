FROM rabbitmq:3-management-alpine
COPY aliyun-jiankong.sh /
COPY post_rabbitmq_jiankong.sh /
ENV ALIYUN_USER_ID 123456
ENV RABBITMQ_DEFAULT_USER guest
ENV RABBITMQ_DEFAULT_PASS guest
RUN echo -e "*/1 * * * * sh /post_rabbitmq_jiankong.sh" >> /etc/crontabs/root
