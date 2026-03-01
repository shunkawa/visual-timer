#!/bin/bash
# ビジュアルタイマー — ローカルサーバー起動スクリプト
# このファイルをダブルクリックするとサーバーが起動します

cd "$(dirname "$0")"

PORT=8080

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ビジュアルタイマー サーバー起動中..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Get local IP
LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "不明")

echo "  ✅ サーバー起動完了"
echo ""
echo "  📱 iPadのSafariで以下のURLを開いてください:"
echo ""
echo "     http://${LOCAL_IP}:${PORT}"
echo ""
echo "  💡 MacとiPadが同じWi-Fiに接続されていることを確認してください"
echo "  🛑 終了するには このウィンドウを閉じてください"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Open browser on Mac too
sleep 1
open "http://localhost:${PORT}" 2>/dev/null &

# Start server
python3 -m http.server $PORT
