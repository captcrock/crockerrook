# 🚀 Deployment Guide - Crocker Rook

## Quick Start (5 Minutes)

### Step 1: Create App Icons

**Option A: Use Online Tool (Easiest)**
1. Go to https://favicon.io/favicon-converter/
2. Upload a 512x512 image of a Rook card (or any game logo)
3. Download the generated icons
4. Replace `icon-192.png` and `icon-512.png` in your repo

**Option B: Use Placeholders (For Now)**
- The app works without custom icons
- Default browser icon will be used
- Add proper icons later

### Step 2: Enable GitHub Pages

1. **Go to your repository on GitHub:**
   ```
   https://github.com/captcrock/crockerrook
   ```

2. **Click "Settings" tab** (top right)

3. **Scroll to "Pages"** (left sidebar, under "Code and automation")

4. **Configure deployment:**
   - **Source:** Deploy from a branch
   - **Branch:** Select `claude/review-game-ai-ui-B1KS9` (or `main` if merged)
   - **Folder:** `/ (root)`
   - **Click "Save"**

5. **Wait ~2 minutes** for deployment

6. **Your game is live!**
   ```
   https://captcrock.github.io/crockerrook/
   ```

### Step 3: Test on Mobile

1. **Open the URL on your phone**
2. **Install as PWA:**
   - iOS: Safari → Share → Add to Home Screen
   - Android: Chrome → Menu → Install app

3. **App opens fullscreen from home screen!**

---

## Alternative: Merge to Main First

If you want to deploy from `main` branch:

```bash
# Switch to main
git checkout main

# Merge your feature branch
git merge claude/review-game-ai-ui-B1KS9

# Push to GitHub
git push origin main

# Then set GitHub Pages to use 'main' branch
```

---

## Automatic Updates

**Every time you push to the configured branch:**
1. GitHub automatically rebuilds the site
2. Takes ~1-2 minutes
3. Users get updates automatically next time they visit
4. No manual deployment needed!

---

## Custom Domain (Optional)

If you own a domain:

1. **In repo settings → Pages:**
   - Enter your domain (e.g., `rook.yourdomain.com`)
   - Save

2. **Add DNS records at your domain registrar:**
   - Type: `CNAME`
   - Name: `rook` (or `www`)
   - Value: `captcrock.github.io`

3. **Enable HTTPS** (automatic after DNS propagates)

---

## Netlify Alternative

If GitHub Pages doesn't work for you:

### One-Click Deploy:
1. Go to https://app.netlify.com/start
2. Click "Import from Git"
3. Select GitHub → Choose your repo
4. Click "Deploy site"

**Your site will be live at:**
```
https://random-name-12345.netlify.app
```

**Can change to:**
```
https://crocker-rook.netlify.app
```

---

## Sharing Your Game

Once deployed, share with:

**Family & Friends:**
```
Hey! I made a Rook card game. Install it on your phone:
https://captcrock.github.io/crockerrook/

On iPhone: Open in Safari → Share → Add to Home Screen
On Android: Open in Chrome → Menu → Install app

Works offline after first install!
```

**Social Media:**
```
🎴 Play Crocker Rook on your phone!
✅ Works offline
✅ Free forever
✅ No ads
✅ Smart AI opponents

Install: [your-url]
```

---

## Troubleshooting

### "404 - Page not found"
- Wait 2-3 minutes after enabling GitHub Pages
- Check branch name is correct in settings
- Ensure `index.html` is in root of selected branch

### "Icons not showing"
- Create `icon-192.png` and `icon-512.png`
- Commit and push them
- Clear browser cache

### "Service Worker not registering"
- Must be served over HTTPS (GitHub Pages does this)
- Check browser console for errors
- Make sure `sw.js` is in root directory

### "Install button not appearing"
- PWA install only works over HTTPS
- Must visit site at least once
- Some browsers don't show install prompt immediately
- Try Chrome/Edge on desktop, Safari on iOS, Chrome on Android

---

## Production Checklist

Before sharing widely:

- [ ] Create proper app icons (512x512 and 192x192)
- [ ] Test on iOS Safari
- [ ] Test on Android Chrome
- [ ] Test install to home screen
- [ ] Test offline functionality
- [ ] Update `manifest.json` with your details
- [ ] Add screenshot to repo (optional, for app stores later)

---

## Next Steps

**After deployment:**
1. ✅ Share URL with beta testers
2. ✅ Get feedback
3. ✅ Iterate and improve
4. ✅ (Optional) Submit to app stores via PWA Builder

**For app stores:**
- Deploy to GitHub Pages first
- Use https://www.pwabuilder.com/
- Generate Android APK / iOS package
- Submit to Google Play ($25) / App Store ($99/year)

---

## Support

**Questions?**
- Open an issue on GitHub
- Check browser console for errors
- Test in incognito mode (clean slate)

**Resources:**
- PWA Docs: https://web.dev/progressive-web-apps/
- GitHub Pages: https://pages.github.com/
- PWA Builder: https://www.pwabuilder.com/

---

Happy deploying! 🚀
