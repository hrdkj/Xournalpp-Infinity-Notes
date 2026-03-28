-- ============================================================================
-- Xournal++ Infinity Canvas Plugin
-- ============================================================================
-- Option A: 2500pt page at 10× zoom gives a large canvas (~35 inches each
-- direction) while keeping pen stroke sizes natural and usable.
-- ============================================================================

local infinity      = 2500
local half_infinity = math.floor(infinity / 2)

-- ============================================================================
-- UI Registration
-- ============================================================================

function initUi()
    app.registerUi({
        menu    = "Create Infinity Canvas",
        callback = "infinityCanvas",
        toolbarId = "infinityCanvas",
        iconName  = "infinity"
    })
    app.registerUi({
        menu    = "Scroll To Top Left",
        callback = "scrollToStart",
        toolbarId = "scrollToStart",
        iconName  = "top-left-arrow"
    })
end

-- ============================================================================
-- Create Infinity Canvas
-- ============================================================================

function infinityCanvas()
    local docStructure = app.getDocumentStructure()
    local pages = docStructure["pages"]

    -- Resize all pages to infinity dimensions
    for _, _ in ipairs(pages) do
        app.setPageSize(infinity, infinity)
    end

    -- Set zoom for comfortable writing with standard pen sizes
    pcall(app.setZoom, 10.0)

    -- Scroll to center of canvas
    app.scrollToPos(half_infinity, half_infinity, false)
end

-- ============================================================================
-- Scroll to top-left corner (for starting fresh from the corner)
-- ============================================================================

function scrollToStart()
    app.scrollToPos(0, 0, false)
end
