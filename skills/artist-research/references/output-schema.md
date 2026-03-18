# Default Output Schema

Use this default schema when the user asks for a structured shortlist but does not provide columns.

## Recommended Columns

```text
artist_name
artist_handle
country_region
primary_genre_style
main_platform
follower_count_estimate
contact_method
contact_details_or_link
representation_status
sonic_fit_notes
why_they_fit
risks_caveats
already_in_existing_list
score_sonic_fit
score_underground_credibility
score_outreach_realism
score_independence
score_distinctiveness
score_total
outreach_priority
source_links
```

## Field Guidance

- `artist_name`: public artist name
- `artist_handle`: primary handle on the main platform
- `country_region`: plain-text geography, or `unclear`
- `primary_genre_style`: short style summary
- `main_platform`: usually SoundCloud, Instagram, Bandcamp, Spotify, or YouTube
- `follower_count_estimate`: plain text estimate from a public page
- `contact_method`: email, Instagram DM, contact form, Bandcamp message, or `unclear`
- `contact_details_or_link`: direct email, handle, or URL
- `representation_status`: `none found`, `likely independent`, `management found`, or `unclear`
- `sonic_fit_notes`: evidence-based style notes
- `why_they_fit`: concise reason they are useful to the buyer
- `risks_caveats`: blockers or important uncertainty
- `already_in_existing_list`: `Yes` or `No`
- score columns: integers unless the user asks otherwise
- `source_links`: multiple links separated with ` | `

## Plain Text Rules

If writing CSV:

- use plain text only in cells
- avoid line breaks unless the user explicitly wants multiline cells
- use `unclear` rather than leaving critical fields blank
