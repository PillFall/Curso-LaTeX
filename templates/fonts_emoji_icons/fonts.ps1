$ProgressPreference = 'SilentlyContinue'

$ListWebRequest = Invoke-RestMethod -UseBasicParsing -Uri "https://fonts.google.com/download/list?family=Noto Sans,Noto Sans Math,Noto Emoji,Material Symbols Outlined,Material Symbols Rounded,Material Symbols Sharp"
$JsonStart = $ListWebRequest.IndexOf('{')
$RawWebRequest = $ListWebRequest.Substring($JsonStart)
$JsonWebRequest = ConvertFrom-Json -InputObject $RawWebRequest

$FileRefs = $JsonWebRequest.manifest.fileRefs

$FontFolder = "fonts"
New-Item -Path $FontFolder -ItemType Directory -Force | Out-Null

$NotoFonts = @(
    @{ filename = "Noto_Sans/static/NotoSans-Regular.ttf"; path = "NotoSans-Regular.ttf" },
    @{ filename = "Noto_Sans/static/NotoSans-Italic.ttf"; path = "NotoSans-Italic.ttf" },
    @{ filename = "Noto_Sans/static/NotoSans-Bold.ttf"; path = "NotoSans-Bold.ttf" },
    @{ filename = "Noto_Sans/static/NotoSans-BoldItalic.ttf"; path = "NotoSans-BoldItalic.ttf" },
    @{ filename = "Noto_Sans_Math/NotoSansMath-Regular.ttf"; path = "NotoSansMath.ttf" },
    @{ filename = "Noto_Emoji/NotoEmoji-VariableFont_wght.ttf"; path = "NotoEmoji.ttf" },
    @{ filename = "Material_Symbols_Outlined/MaterialSymbolsOutlined-VariableFont_FILL,GRAD,opsz,wght.ttf"; path = "MaterialSymbolsOutlined.ttf" },
    @{ filename = "Material_Symbols_Rounded/MaterialSymbolsRounded-VariableFont_FILL,GRAD,opsz,wght.ttf"; path = "MaterialSymbolsRounded.ttf" },
    @{ filename = "Material_Symbols_Sharp/MaterialSymbolsSharp-VariableFont_FILL,GRAD,opsz,wght.ttf"; path = "MaterialSymbolsSharp.ttf" }
)


foreach ($NotoFont in $NotoFonts) {
    $NotoFontFileRef = $FileRefs.Where({ $_.filename -eq $NotoFont.filename })
    Invoke-RestMethod -UseBasicParsing -Uri $NotoFontFileRef.url -OutFile $FontPath\$NotoFont.path
}



# Windows tiene un formato especial para las fuentes con emojis, por lo que hay que utilizar otro archivo diferente compatible con Windows

Invoke-RestMethod -Uri "https://github.com/googlefonts/noto-emoji/raw/refs/heads/main/fonts/NotoColorEmoji_WindowsCompatible.ttf" -OutFile "$FontFolder\NotoColorEmoji.ttf"

Write-Host "Downloaded all fonts to '$FontFolder' folder"
