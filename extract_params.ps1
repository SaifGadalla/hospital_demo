$json = Get-Content '.\Orca ERP - Hospital.postman_collection.json' -Raw | ConvertFrom-Json

function Extract-Endpoints {
    param($items)
    foreach ($item in $items) {
        if ($item.request) {
            $method = $item.request.method
            $urlRaw = $item.request.url.raw
            $queryParams = @()
            if ($item.request.url.query) {
                foreach ($q in $item.request.url.query) {
                    $queryParams += "$($q.key)"
                }
            }
            if ($queryParams.Count -gt 0) {
                $path = ($item.request.url.path -join '/')
                Write-Output "$method /$path => $($queryParams -join ', ')"
            }
        }
        if ($item.item) {
            Extract-Endpoints -items $item.item
        }
    }
}

Extract-Endpoints -items $json.item
