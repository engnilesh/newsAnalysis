FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

MAINTAINER Nilesh Patil <nileshpatil@gmail.com>

COPY distinct_WC_from_MongoDB.py run_WC.sh test.py /opt/hadoop/applications/
ENV RUN_WC_FILE="/opt/hadoop/applications/run_WC.sh"
ENV PYTHON_WC_FILE="/opt/hadoop/applications/distinct_WC_from_MongoDB.py"
ENV TEST_FILE="/opt/hadoop/applications/test.py"

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
