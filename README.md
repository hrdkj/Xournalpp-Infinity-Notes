This plugin allows you to create (pseudo) infinity notes inside of Xournal++

If you wish to change the size of your PDF files (to annotate on them), you can use [this](https://github.com/MiltonBalaOfficial/IncreaseAndDecreasePageDimensions) plugin. My plugin only works for taking notes yourself, and not annotating PDF files.

### Installation

For now, you must install the nightly version of Xournal++, as the latest official release is missing a lot of features to make this plugin possible. You can download it [here](https://github.com/xournalpp/xournalpp/releases). Note that if you use the stable release, you have to zoom in manually when creating an infinity canvas.

<!-- Additionally, to import pdfs you need to install [some dependencies](#Dependencies) -->

0. Open Xournal++ at least once to generate the config folder(s)
1. Go to the [Config Folder](#Config-Folder) based on your operating system
2. Go to the "plugins" folder
3. Download (and extract) this Github repository in that folder
4. Go to the [Icon Folder](#Icon-Folder) based on your operating system
5. Copy the icons folder of this repo into that folder
6. Open Xournal++
7. On the top, select "Edit", then "Toolbars" and  the bottom "Customize", go to plugins section to find the Infinity icon, and Arrow icon and drag those to your toolbar
8. For the Xournalpp settings in that dialog, set:
   - Speed for Ctrl + Scroll → 15.0 %
   - Speed for a Zoomstep → 20.0 %

##### Config Folder
You can find the folder for your operating system [here](https://xournalpp.github.io/guide/file-locations/) or below:

Windows: `C:\Users\<user>\AppData\Local\xournalpp`

MacOS: `~/.config/xournalpp`

Linux: `~/.config/xournalpp`


##### Icon Folder
Windows: `C:\Users\<user>\AppData\Local\share\icons\hicolor\scalable\actions`

MacOS: `~/.local/share/icons/hicolor/scalable/actions/`

Linux: `~/.local/share/icons/hicolor/scalable/actions/`

### Usage
1. Open a (new) note
2. Click the Infinity icon to create an infinity canvas
3. Hide the sidebar
4. Start writing!

You can also:
- Click the **Arrow icon** (Scroll To Top Left) to start from the top-left corner

### How It Works

The plugin creates a large page (2500×2500 pt) and sets the zoom to 10× for comfortable writing. This gives you a canvas roughly **35 inches (0.9 meters)** in each direction — more than enough for sprawling notes.

**Better pen sizes**: By using a 2500pt page at 10× zoom (instead of 10000pt at 2.5×), the standard Xournal++ pen sizes render at natural, usable thicknesses — 4× thicker on screen than before.

<!--
### Dependencies
To import a PDF, you need to install a few things to convert the PDF to an image.

First install [libvips](https://www.libvips.org/install.html).
Then install the [`lua-vips`](https://github.com/libvips/lua-vips) rock.
```
luarocks install --local lua-vips
```

For me personally I had to update the LUA_PATH environment variable, which you can get using `luarocks path`
-->

### Screenshots
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7fd4083d-ea66-4502-99d9-113d0ca36a30" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/43322e4f-527d-42b5-aad6-4eb544bb9f16" />
