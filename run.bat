@echo off
pushd "%~dp0"
chcp 65001 >nul
start powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$OutputEncoding = [System.Text.Encoding]::UTF8; [Console]::OutputEncoding = [System.Text.Encoding]::UTF8; & './sync_minecraft.ps1'"
exit