$ProgressPreference = 'SilentlyContinue'

$ListWebRequest = Invoke-RestMethod -UseBasicParsing -Uri "https://fonts.google.com/download/list?family=Noto Sans,Noto Sans Mono,Noto Sans Math"
$JsonStart = $ListWebRequest.IndexOf('{')
$RawWebRequest = $ListWebRequest.Substring($JsonStart)
$JsonWebRequest = ConvertFrom-Json -InputObject $RawWebRequest

$FileRefs = $JsonWebRequest.manifest.fileRefs

$FontFolder = "fonts"
New-Item -Path $FontFolder -ItemType Directory -Force | Out-Null

$NotoFonts = @(
    @{ filename = "Noto_Sans/static/NotoSans-Regular.ttf"; path = "$FontFolder\NotoSans-Regular.ttf" },
    @{ filename = "Noto_Sans/static/NotoSans-Italic.ttf"; path = "$FontFolder\NotoSans-Italic.ttf" },
    @{ filename = "Noto_Sans/static/NotoSans-Bold.ttf"; path = "$FontFolder\NotoSans-Bold.ttf" },
    @{ filename = "Noto_Sans/static/NotoSans-BoldItalic.ttf"; path = "$FontFolder\NotoSans-BoldItalic.ttf" },
    @{ filename = "Noto_Sans_Mono/static/NotoSansMono-Regular.ttf"; path = "$FontFolder\NotoSansMono-Regular.ttf" },
    @{ filename = "Noto_Sans_Mono/static/NotoSansMono-Bold.ttf"; path = "$FontFolder\NotoSansMono-Bold.ttf" },
    @{ filename = "Noto_Sans_Math/NotoSansMath-Regular.ttf"; path = "$FontFolder\NotoSansMath.ttf" }
)

foreach ($NotoFont in $NotoFonts) {
    $NotoFontFileRef = $FileRefs.Where({ $_.filename -eq $NotoFont.filename })
    Write-Host $NotoFont.filename
    Invoke-RestMethod -UseBasicParsing -Uri $NotoFontFileRef.url -OutFile $NotoFont.path
}

Invoke-RestMethod -UseBasicParsing -Uri "https://unpkg.com/@tabler/icons-webfont/dist/fonts/tabler-icons.ttf" -OutFile "$FontFolder\TablerIcons-Outlined.ttf"
Invoke-RestMethod -UseBasicParsing -Uri "https://unpkg.com/@tabler/icons-webfont/dist/fonts/tabler-icons-filled.ttf" -OutFile "$FontFolder\TablerIcons-Filled.ttf"

Write-Host "Downloaded all fonts to '$FontFolder' folder"
