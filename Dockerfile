FROM python:3.14.6

RUN addgroup --system --gid 1000 appuser && \
    adduser --system --uid 1000 --ingroup appuser appuser

WORKDIR /app
COPY --chown=appuser:appuser app.py .

USER appuser

CMD ["python", "app.py"]
