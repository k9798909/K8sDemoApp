# -- 創建目錄：在 d:\ 根目錄下創建一個名為 minikube 的目錄（如果尚不存在）--
New-Item -Path 'd:\' -Name 'minikube' -ItemType Directory -Force
# -- 下載 Minikube executable file--
Invoke-WebRequest -OutFile 'd:\minikube\minikube.exe' -Uri 'https://github.com/kubernetes/minikube/releases/latest/download/minikube-windows-amd64.exe' -UseBasicParsing

# -- 設定 Path --
$oldPath = [Environment]::GetEnvironmentVariable('Path', [EnvironmentVariableTarget]::Machine)
if ($oldPath.Split(';') -inotcontains 'D:\minikube'){
  [Environment]::SetEnvironmentVariable('Path', $('{0};D:\minikube' -f $oldPath), [EnvironmentVariableTarget]::Machine)
}