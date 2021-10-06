GET https://cloud.gov

HTTP/* 200
[Asserts]
duration < 1000
xpath "string(/html/head/title)" == "cloud.gov - Home"


