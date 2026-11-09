# ccreward AI

![ccreward](./assets/logo.png)

Find out exactly how many points, miles or cashback you earn on any transaction with Indian 🇮🇳 and Singapore 🇸🇬 credit cards, right inside your AI assistant. Ask in plain language — "How many miles for S$200 on UOB PRVI Miles at a Marriott?" — and ccreward resolves your card, looks up the merchant category code (MCC), asks any card-specific questions, and returns the exact reward computed by [ccreward.app](https://ccreward.app).

This repository packages ccreward for **Claude** (claude.ai, Cowork, Claude Code), **ChatGPT**, **Codex** and any other MCP client. Every integration connects to the same hosted MCP server and shares one skill.

## Install

| App | How |
| --- | --- |
| claude.ai / Cowork | Add **ccreward** from the [Claude directory](https://claude.ai/directory) |
| Claude Code | `/plugin install ccreward --marketplace aashishvanand/ccreward-ai` |
| ChatGPT | Add the **ccreward** plugin from ChatGPT's plugin directory |
| Codex | Install the **ccreward** plugin from the Codex plugin directory |
| Any other MCP client | Add the remote server `https://api.ccreward.app/mcp` (Streamable HTTP, OAuth) |

## What it does

- **Reward calculation** for a card, amount and merchant, including caps, accelerated categories and foreign-currency spends.
- **Best card for a purchase** across the cards you name, or the cards saved in your ccreward account.
- **Card search and details** (short forms like DCB, M4B, EPM, WWMC, PRVI work).
- **Merchant MCC lookup** ("What's the MCC for Swiggy?").
- **Transfer partners and routes** to airline and hotel programs ("Who transfers to KrisFlyer?").
- **Saved cards**: list, add, update or remove cards in your ccreward portfolio (only when you ask).

## Example prompts

- How many points do I earn for ₹5,000 spent on Singapore Airlines using my Axis Atlas card?
- Calculate rewards for spending ₹1,000 on my HDFC Swiggy BLCK card.
- What's the MCC for Swiggy?
- How many miles for S$200 on UOB PRVI Miles at a Marriott hotel in Singapore?

## Account and authentication

The MCP server uses OAuth 2.1 (dynamic client registration with PKCE). The first time you use a ccreward tool you'll be asked to sign in with your free ccreward account. In Claude Code, run `/mcp`, select **ccreward** and choose **Authenticate**. No API key is stored in this repository.

## Data and privacy

When you use ccreward, your assistant sends the details needed to answer your question — card names, spend amounts, currency, merchant names or MCCs, and your answers to card questions — to the ccreward API at `api.ccreward.app`. Portfolio tools read and change the cards saved in your ccreward account. Feedback you choose to submit is sent to ccreward. Nothing is sent anywhere else, and the plugin runs no local code, scripts or hooks. See the [privacy policy](https://ccreward.app/privacy) and [terms](https://ccreward.app/terms).

Calculations use credits on your ccreward account; get more at https://ccreward.app/mcp/credits.

ccreward calculates rewards for cards you already hold. It does not recommend cards to apply for or give financial advice.

## Repository layout

| Path | Used by |
| --- | --- |
| `skills/ccreward/SKILL.md` | All plugins: the workflow Claude, ChatGPT and Codex follow |
| `assets/` | Icon and logo for every listing |
| `.claude-plugin/plugin.json`, `.claude-plugin/marketplace.json` | Claude directory and Claude Code |
| `.mcp.json` | Claude's MCP server config (`type: http`, OAuth) |
| `plugin.json`, `mcp.json` | ChatGPT and Codex ([agent-plugins](https://agent-plugins.org) format) |
| `scripts/package.sh` | Builds `dist/ccreward-openai.zip` for OpenAI submission |

## Support

- Website: https://ccreward.app
- Developers / API: https://developer.ccreward.app
- iOS app: https://apps.apple.com/in/app/ccreward/id6736835206
- Android app: https://play.google.com/store/apps/details?id=app.ccreward

## License

MIT — see [LICENSE](./LICENSE).
