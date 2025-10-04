{{- define "backend.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "backend.fullname" -}}
{{ printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "backend.labels" -}}
app.kubernetes.io/name: {{ include "backend.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
