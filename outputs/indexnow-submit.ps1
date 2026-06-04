# IndexNow URL Submission Script — Baltimore Wedding Planner
# Run this after launch to submit all URLs to Bing + Yandex instantly
# Requires: PowerShell 5.1+, NODE_OPTIONS=--use-system-ca for SSL
# Usage: .\indexnow-submit.ps1

$apiKey = "bwp-baltimore-wedding-planner-2026"
$siteUrl = "https://baltimoreweddingplanner.com"
$indexNowEndpoint = "https://api.indexnow.org/IndexNow"

# All 38 pages to submit
$urls = @(
    "/",
    "/about",
    "/contact",
    "/faq",
    "/wedding-planning-packages",
    "/services/full-service-wedding-planning",
    "/services/day-of-wedding-coordinator",
    "/services/partial-wedding-planning",
    "/services/elopement-planner-maryland",
    "/locations",
    "/locations/annapolis-wedding-planner",
    "/locations/columbia-md-wedding-planner",
    "/locations/towson-wedding-planner",
    "/locations/frederick-wedding-planner",
    "/locations/rockville-wedding-planner",
    "/blog",
    "/blog/how-to-get-married-in-maryland",
    "/blog/maryland-marriage-license",
    "/blog/average-wedding-cost-maryland",
    "/blog/affordable-wedding-venues-maryland",
    "/blog/cheap-wedding-venues-baltimore",
    "/blog/eastern-shore-wedding-venues",
    "/blog/garden-wedding-venues-maryland",
    "/blog/wedding-photographers-baltimore",
    "/blog/wedding-officiants-maryland",
    "/blog/wedding-djs-baltimore",
    "/blog/wedding-caterers-baltimore",
    "/blog/baltimore-wedding-venues",
    "/blog/wedding-venues-in-maryland",
    "/blog/annapolis-wedding-venues",
    "/blog/wedding-planner-cost-baltimore",
    "/blog/how-to-elope-in-maryland",
    "/blog/wedding-planning-checklist-maryland",
    "/privacy-policy",
    "/terms-of-service",
    "/cookie-policy"
)

# Build full URL list
$fullUrls = $urls | ForEach-Object { "$siteUrl$_" }

Write-Host "Submitting $($fullUrls.Count) URLs to IndexNow..." -ForegroundColor Cyan

# Build JSON payload
$body = @{
    host = "baltimoreweddingplanner.com"
    key = $apiKey
    keyLocation = "$siteUrl/$apiKey.txt"
    urlList = $fullUrls
} | ConvertTo-Json -Depth 3

# Submit to IndexNow (Bing + Yandex + others)
try {
    $response = Invoke-RestMethod `
        -Uri $indexNowEndpoint `
        -Method POST `
        -ContentType "application/json; charset=utf-8" `
        -Body $body

    Write-Host "SUCCESS: All URLs submitted to IndexNow" -ForegroundColor Green
    Write-Host "Response: $response" -ForegroundColor Gray
} catch {
    Write-Host "Error submitting to IndexNow: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Status: $($_.Exception.Response.StatusCode)" -ForegroundColor Red
}

Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Submit sitemap to Google Search Console manually"
Write-Host "2. Use GSC URL Inspection to request indexing for top 5 pages:"
$priority = @("/", "/services/day-of-wedding-coordinator", "/blog/wedding-venues-in-maryland", "/blog/baltimore-wedding-venues", "/blog/how-to-get-married-in-maryland")
$priority | ForEach-Object { Write-Host "   - $siteUrl$_" -ForegroundColor White }
Write-Host ""
Write-Host "3. Submit sitemap to Bing Webmaster Tools:"
Write-Host "   https://www.bing.com/webmasters → Add Sitemap → $siteUrl/sitemap-index.xml"
