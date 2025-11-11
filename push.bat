@echo off
echo =============================
echo 🚀 XPIXEL 자동 푸시 시작!
echo =============================

:: 깃 변경사항 모두 추가
git add .

:: 커밋 메시지 자동 생성 (현재 시간)
for /f "tokens=1-5 delims=/: " %%d in ("%date% %time%") do (
    set datetime=%%d-%%e-%%f_%%g%%h
)
git commit -m "auto commit %datetime%"

:: 원격 저장소로 푸시
git push origin main

echo =============================
echo ✅ 푸시 완료!
pause
