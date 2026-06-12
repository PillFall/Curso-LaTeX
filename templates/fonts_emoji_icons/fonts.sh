#!/usr/bin/env sh

FONT_FOLDER="fonts"
mkdir -p "$FONT_FOLDER"

MANIFEST=$(curl -GsL "https://fonts.google.com/download/list" --data-urlencode "family=Noto Sans,Noto Sans Math,Noto Emoji,Material Symbols Outlined,Material Symbols Rounded,Material Symbols Sharp")
MANIFEST="{${MANIFEST#*{}"

FONT_LIST=$(cat <<EOL
Noto_Sans/static/NotoSans-Regular.ttf|NotoSans-Regular.ttf
Noto_Sans/static/NotoSans-Italic.ttf|NotoSans-Italic.ttf
Noto_Sans/static/NotoSans-Bold.ttf|NotoSans-Bold.ttf
Noto_Sans/static/NotoSans-BoldItalic.ttf|NotoSans-BoldItalic.ttf
Noto_Sans_Math/NotoSansMath-Regular.ttf|NotoSansMath.ttf
Noto_Emoji/NotoEmoji-VariableFont_wght.ttf|NotoEmoji.ttf
Material_Symbols_Outlined/MaterialSymbolsOutlined-VariableFont_FILL,GRAD,opsz,wght.ttf|MaterialSymbolsOutlined.ttf
Material_Symbols_Rounded/MaterialSymbolsRounded-VariableFont_FILL,GRAD,opsz,wght.ttf|MaterialSymbolsRounded.ttf
Material_Symbols_Sharp/MaterialSymbolsSharp-VariableFont_FILL,GRAD,opsz,wght.ttf|MaterialSymbolsSharp.ttf
EOL
)

echo "$FONT_LIST" | while read -r line
do
    [ -z "$line" ] && continue

    FILE_KEY="${line%%|*}"
    TARGET_NAME="${line##*|}"

    FONT_URL=$(echo "$MANIFEST" | jq -r --arg key "${FILE_KEY}" '.manifest.fileRefs[] | select(.filename == $key) | .url')

    curl -sL "$FONT_URL" -o "$FONT_FOLDER/$TARGET_NAME"
done

curl -sL "https://github.com/googlefonts/noto-emoji/raw/refs/heads/main/fonts/NotoColorEmoji_WindowsCompatible.ttf" -o "$FONT_FOLDER/NotoColorEmoji.ttf"

echo "Downloaded all fonts to '$FONT_FOLDER' folder"
