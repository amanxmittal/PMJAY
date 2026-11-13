#!/bin/bash
set -e

mkdir -p assets/images assets/icons

# Images
curl -s -L -o assets/images/emblem-goi.png "https://www.figma.com/api/mcp/asset/9aac5c67-7525-4531-80d6-e9ec07253eec.png"
curl -s -L -o assets/images/pmayg-logo.png "https://www.figma.com/api/mcp/asset/99b78876-ae7e-4555-aade-f2e85ce74685.png"
curl -s -L -o assets/images/landing-hero.png "https://www.figma.com/api/mcp/asset/a3f614f0-aeb8-4a15-8ead-70b826dc1aab.png"
curl -s -L -o assets/images/citizen-card.png "https://www.figma.com/api/mcp/asset/2c62c8b9-0c5f-4e90-9954-cf5ff601de9c.png"
curl -s -L -o assets/images/official-card.png "https://www.figma.com/api/mcp/asset/de2b9043-06b3-4a47-94a7-8d63c25fb2f6"
curl -s -L -o assets/images/digital-india.png "https://www.figma.com/api/mcp/asset/4f348112-9b11-4d9c-928e-2d1b31a21828.png"
curl -s -L -o assets/images/nic-logo.png "https://www.figma.com/api/mcp/asset/5a309d67-b8fa-45e1-8b44-48c838817f06.png"
curl -s -L -o assets/images/official-hero-banner.png "https://www.figma.com/api/mcp/asset/cfcbdd7a-a34a-4fc5-b486-7c622343f457"
curl -s -L -o assets/images/partner-mo-rural.png "https://www.figma.com/api/mcp/asset/e55031b1-c86d-46d1-a29f-bfd37678c126.png"
curl -s -L -o assets/images/partner-panchayati.png "https://www.figma.com/api/mcp/asset/a74591fc-b849-4ad4-a2c8-407748826509.png"
curl -s -L -o assets/images/partner-mord.png "https://www.figma.com/api/mcp/asset/d07fcf37-9585-4aeb-8f08-a24c03fe1c81.png"
curl -s -L -o assets/images/partner-india-gov.png "https://www.figma.com/api/mcp/asset/8ca6cb59-2ff2-458e-a7dd-79a9b1ebe80d.png"

# Icons / SVGs
curl -s -L -o assets/icons/bell.svg "https://www.figma.com/api/mcp/asset/7c4748f0-88f6-4d31-b950-683c4146074c.svg"
curl -s -L -o assets/icons/search.svg "https://www.figma.com/api/mcp/asset/aeefd106-41ad-43ff-8263-97601c32888e.svg"
curl -s -L -o assets/icons/translate.svg "https://www.figma.com/api/mcp/asset/493d1a67-3d54-4dba-afb9-2219a2afbff4.svg"
curl -s -L -o assets/icons/accessibility.svg "https://www.figma.com/api/mcp/asset/0c6c31a8-cac8-4e64-8006-d71d8e356eaa.svg"
curl -s -L -o assets/icons/arrow-right.svg "https://www.figma.com/api/mcp/asset/43877568-c0b5-43cd-bb1c-092a2341404d.svg"
curl -s -L -o assets/icons/chevron-right.svg "https://www.figma.com/api/mcp/asset/0c614bf0-08ee-4a43-becb-8fda217b8ffe.svg"
curl -s -L -o assets/icons/facebook.svg "https://www.figma.com/api/mcp/asset/3c2fda8f-417e-4e4c-8ecc-0da103cb21f6.svg"
curl -s -L -o assets/icons/youtube.svg "https://www.figma.com/api/mcp/asset/b082c02b-6ebc-483e-840b-fa5dc1ac9519.svg"
curl -s -L -o assets/icons/x-twitter.svg "https://www.figma.com/api/mcp/asset/ee669a4d-5e92-4375-85dc-94a5ba8d89ee.svg"

echo "Assets download complete."
