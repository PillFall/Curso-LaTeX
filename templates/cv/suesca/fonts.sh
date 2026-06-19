#!/usr/bin/env sh

FONT_FOLDER="fonts"
mkdir -p "$FONT_FOLDER"

MANIFEST=$(curl -GsL "https://fonts.google.com/download/list" --data-urlencode "family=Noto Sans,Noto Sans Math,Material Symbols Outlined,Material Symbols Rounded,Material Symbols Sharp")
MANIFEST="{${MANIFEST#*{}"

FONT_LIST=$(cat <<EOL
Noto_Sans/static/NotoSans-Regular.ttf|NotoSans-Regular.ttf
Noto_Sans/static/NotoSans-Italic.ttf|NotoSans-Italic.ttf
Noto_Sans/static/NotoSans-Bold.ttf|NotoSans-Bold.ttf
Noto_Sans/static/NotoSans-BoldItalic.ttf|NotoSans-BoldItalic.ttf
Noto_Sans_Mono/static/NotoSansMono-Regular.ttf|NotoSansMono-Regular.ttf
Noto_Sans_Mono/static/NotoSansMono-Bold.ttf|NotoSansMono-Bold.ttf
Noto_Sans_Math/NotoSansMath-Regular.ttf|NotoSansMath.ttf
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

    echo "${FILE_KEY}"
    curl -sL "$FONT_URL" -o "$FONT_FOLDER/$TARGET_NAME"
done

curl -sL "https://unpkg.com/@tabler/icons-webfont/dist/fonts/tabler-icons.ttf" -o "$FONT_FOLDER/TablerIcons-Outlined.ttf"
curl -sL "https://unpkg.com/@tabler/icons-webfont/dist/fonts/tabler-icons-filled.ttf" -o "$FONT_FOLDER/TablerIcons-Filled.ttf"

echo "Downloaded all fonts to '$FONT_FOLDER' folder"
