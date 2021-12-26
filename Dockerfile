FROM legend-os/musicbot:latest

RUN git clone https://github.com/LEGEND-OS/MUSIC-VC.git /root

WORKDIR /root

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/bin:$PATH"

CMD ["python3", "main.py"]
