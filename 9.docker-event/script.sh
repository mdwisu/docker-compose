docker events
docker events --filter event=start
docker events --filter type=container
docker events --since "2023-12-28T10:00:00" --until "2023-12-28T11:00:00"
# Menampilkan event dalam format yang lebih ringkas, hanya dengan timestamp, jenis, aksi, dan ID aktor.
docker events --format '{{ .Time }} {{ .Type }} {{ .Action }} {{ .Actor.ID }}'
# Menyimpan log event Docker ke file 
docker events --filter type=container > docker-events.log
# Mengintegrasikan dengan tool monitoring seperti Prometheus atau Grafana
docker events --format '{{ json . }}' | some-monitoring-tool

