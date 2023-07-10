cd /Users/WangHao/Sites/学习/JavaScript/FunnyProject/WebChatGPT/service
nohup pnpm start > service.log &
echo "Start service complete!"


cd /Users/WangHao/Sites/学习/JavaScript/FunnyProject/WebChatGPT
echo "" > front.log
nohup pnpm dev > front.log &
echo "Start front complete!"
tail -f front.log
