Use the `artist-research` skill.

Research underground artists for a label compilation.

Mission:
- find artists with identity, edge, and underground credibility
- prioritize practical outreach, not vanity discovery

Target profile:
- UK bass / UKG / speed garage / bassline / dubstep / 140 / breaks / grime-adjacent / leftfield club
- global is fine
- under 10k followers on their main platform
- ideally independent
- ideally no visible management
- must have a public contact route

Deprioritize:
- artists clearly too large
- represented acts
- no visible contact route
- weak sonic fit
- labels, repost pages, playlists, or non-artist accounts

Workflow:
- load and normalize any existing artist list first
- branch outward from seed artists through related artists, collaborators, reposts, credits, and regional micro-scenes
- verify each candidate before keeping them
- score only viable candidates
- dedupe before final output

Output:
- write a CSV with one row per viable candidate
- include name, handle, country, style, main platform, follower estimate, contact path, representation status, fit notes, risks, existing-list flag, scores, priority, and source links

Quality bar:
- be selective
- do not pad with weak names
- explicitly mark uncertainty
- think like a real A&R researcher building a practical outreach list
