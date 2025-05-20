# Build the app
npm run build

# Create GitHub Pages directory
New-Item -ItemType Directory -Force -Path "gh-pages"
Copy-Item -Path "build\*" -Destination "gh-pages" -Recurse

# Create index.html for GitHub Pages
$indexContent = @"
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Speech Recognition App</title>
</head>
<body>
    <div id="root"></div>
    <script src="static/js/main.js"></script>
</body>
</html>
"@
$indexContent | Set-Content -Path "gh-pages\index.html"

Write-Host "Deployment files are ready in gh-pages directory! Upload these files to your GitHub repository" -ForegroundColor Green
Write-Host "After uploading, go to your GitHub repository -> Settings -> Pages" -ForegroundColor Green
Write-Host "Your app will be available at: https://jyothiraj123.github.io/speech-recognition-app/" -ForegroundColor Green
