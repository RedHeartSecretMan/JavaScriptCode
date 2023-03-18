@echo off

rem 切换到服务端目录，启动服务并将输出写入日志文件
cd C:\Users\WangHao\Sites\学习\JavaScript\FunnyProject\WebChatGPT\service
start cmd /c "pnpm start > service.log & echo Start service complete!"

rem 切换到前端代码目录，清空日志文件，启动服务并将输出写入日志文件
cd C:\Users\WangHao\Sites\学习\JavaScript\FunnyProject\WebChatGPT
echo. > front.log
start cmd /c "pnpm dev > front.log & echo Start front complete!"

rem 等待3秒，确保服务已经启动
ping localhost -n 3 > nul

rem 输出前端服务日志文件内容
type front.log

pause
