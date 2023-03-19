@echo off

rem 切换到后端服务端目录，启动服务并将输出写入日志文件
cd E:\Study\JavaScript\FunnyProject\WebChatGPT\service
start /B cmd /c "pnpm start > service.log"
echo Start service complete!

REM 等待 3 秒钟，确保服务已经启动完成 
timeout /t 3

rem 切换到前端界面目录，清空日志文件，启动服务并将输出写入日志文件
cd E:\Study\JavaScript\FunnyProject\WebChatGPT
echo. > front.log
start /B cmd /c "pnpm dev >> front.log 2>&1"
echo Start front complete!

rem 输出前端服务日志文件内容
type front.log

rem 等待3秒，确保服务已经启动 
ping localhost -n 3 > nul

pause

taskkill /F /im node.exe
