.class public final Lcom/ecareme/pixwe/media/MenuBar;
.super Lcom/ecareme/pixwe/media/Layer;
.source "MenuBar.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/PopupMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/MenuBar$Menu;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BACKGROUND:I = 0x0

.field public static final HEIGHT:I = 0x2d

.field private static final HIT_TEST_MARGIN:I = 0xf

.field private static final LONG_PRESS_THRESHOLD_MS:J = 0x15eL

.field private static final MENU_HIGHLIGHT_EDGE_INSET:I = 0x9

.field private static final MENU_HIGHLIGHT_EDGE_WIDTH:I = 0x15

.field private static final MENU_HIGHLIGHT_LEFT:I

.field private static final MENU_HIGHLIGHT_MIDDLE:I

.field private static final MENU_HIGHLIGHT_RIGHT:I

.field private static final MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field public static final MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private static final SEPERATOR:I


# instance fields
.field private mAlpha:F

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

.field private mNeedsLayout:Z

.field private mSecondTouch:Z

.field private final mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

.field private final mTextureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/pixwe/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchActive:Z

.field private mTouchMenu:I

.field private mTouchMenuItem:I

.field private mTouchOverMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 38
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 45
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4188

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 46
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v3, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 47
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    .line 49
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4170

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 50
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v3, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->xalignment:I

    .line 51
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v3, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 52
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iput v4, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    .line 62
    const v0, 0x7f020086

    sput v0, Lcom/ecareme/pixwe/media/MenuBar;->BACKGROUND:I

    .line 63
    const v0, 0x7f02008a

    sput v0, Lcom/ecareme/pixwe/media/MenuBar;->SEPERATOR:I

    .line 64
    const v0, 0x7f020088

    sput v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_HIGHLIGHT_LEFT:I

    .line 65
    const v0, 0x7f020087

    sput v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_HIGHLIGHT_MIDDLE:I

    .line 66
    const v0, 0x7f020089

    sput v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_HIGHLIGHT_RIGHT:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mNeedsLayout:Z

    .line 56
    new-array v0, v1, [Lcom/ecareme/pixwe/media/MenuBar$Menu;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 57
    iput v2, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    .line 58
    iput v2, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenuItem:I

    .line 59
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchActive:Z

    .line 60
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchOverMenu:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-direct {v0, p1}, Lcom/ecareme/pixwe/media/PopupMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    .line 76
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/ecareme/pixwe/media/PopupMenu;->setListener(Lcom/ecareme/pixwe/media/PopupMenu$Listener;)V

    .line 77
    return-void
.end method

.method static synthetic access$0()Lcom/ecareme/pixwe/media/StringTexture$Config;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    return-object v0
.end method

.method private canDrawHighlight()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 343
    iget v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenuItem:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchOverMenu:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawHighlight(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 21
    .parameter "view"
    .parameter "gl"
    .parameter "touchMenu"

    .prologue
    .line 183
    sget v2, Lcom/ecareme/pixwe/media/MenuBar;->MENU_HIGHLIGHT_LEFT:I

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v3

    .line 184
    .local v3, highlightLeft:Lcom/ecareme/pixwe/media/Texture;
    sget v2, Lcom/ecareme/pixwe/media/MenuBar;->MENU_HIGHLIGHT_MIDDLE:I

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v17

    .line 185
    .local v17, highlightMiddle:Lcom/ecareme/pixwe/media/Texture;
    sget v2, Lcom/ecareme/pixwe/media/MenuBar;->MENU_HIGHLIGHT_RIGHT:I

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v11

    .line 187
    .local v11, highlightRight:Lcom/ecareme/pixwe/media/Texture;
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v9

    .line 189
    .local v9, height:I
    const/high16 v2, 0x4234

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v16, v9, v2

    .line 190
    .local v16, extra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object v2, v0

    aget-object v18, v2, p3

    .line 191
    .local v18, menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    invoke-static/range {v18 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v2

    const/high16 v4, 0x4110

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v19, v2, v4

    .line 192
    .local v19, x:I
    invoke-static/range {v18 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$2(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v2

    const/high16 v4, 0x4190

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v8, v2, v4

    .line 193
    .local v8, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mY:F

    move v2, v0

    float-to-int v2, v2

    sub-int v20, v2, v16

    .line 196
    .local v20, y:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v2, v0

    const/high16 v4, 0x41a8

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v2, 0x41a8

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v2

    int-to-float v7, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FFFF)V

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move/from16 v6, v19

    move/from16 v7, v20

    .line 199
    invoke-virtual/range {v4 .. v9}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;IIII)V

    .line 202
    add-int v2, v19, v8

    int-to-float v12, v2

    move/from16 v0, v20

    int-to-float v0, v0

    move v13, v0

    const/high16 v2, 0x41a8

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    .end local v3           #highlightLeft:Lcom/ecareme/pixwe/media/Texture;
    mul-float v14, v2, v3

    int-to-float v15, v9

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FFFF)V

    .line 203
    return-void
.end method

.method private hitTestMenu(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x1

    .line 206
    int-to-float v2, p2

    iget v3, p0, Lcom/ecareme/pixwe/media/MenuBar;->mY:F

    const/high16 v4, 0x4170

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 208
    .local v1, menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .end local v0           #i:I
    .end local v1           #menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_0
    move v2, v6

    .line 218
    :goto_1
    return v2

    .line 209
    .restart local v0       #i:I
    .restart local v1       #menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_1
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v2

    if-le p1, v2, :cond_4

    .line 210
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/ecareme/pixwe/media/MenuBar$Menu;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    .line 211
    goto :goto_1

    :cond_3
    move v2, v6

    .line 213
    goto :goto_1

    .line 208
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private layoutMenus()V
    .locals 20

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object v8, v0

    .line 350
    .local v8, menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    array-length v10, v8

    .line 358
    .local v10, numMenus:I
    if-eqz v10, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mWidth:F

    move v14, v0

    .line 360
    .local v14, viewWidth:F
    const/4 v11, 0x0

    .line 361
    .local v11, occupiedWidth:I
    const v12, 0x7fffffff

    .line 362
    .local v12, previousMaxWidth:I
    const/4 v13, 0x0

    .line 364
    .local v13, totalDesiredWidth:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v10, :cond_1

    .line 368
    move v0, v13

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v18, v14

    if-lez v18, :cond_5

    .line 370
    move v0, v10

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v14, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 371
    .local v16, widthPerMenu:I
    const/16 v17, 0x0

    .line 373
    .local v17, x:I
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v10, :cond_2

    .line 435
    .end local v5           #i:I
    .end local v11           #occupiedWidth:I
    .end local v12           #previousMaxWidth:I
    .end local v13           #totalDesiredWidth:I
    .end local v14           #viewWidth:F
    .end local v16           #widthPerMenu:I
    .end local v17           #x:I
    :cond_0
    return-void

    .line 365
    .restart local v5       #i:I
    .restart local v11       #occupiedWidth:I
    .restart local v12       #previousMaxWidth:I
    .restart local v13       #totalDesiredWidth:I
    .restart local v14       #viewWidth:F
    :cond_1
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v18

    add-int v13, v13, v18

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 374
    .restart local v16       #widthPerMenu:I
    .restart local v17       #x:I
    :cond_2
    aget-object v7, v8, v5

    .line 375
    .local v7, menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    move-object v0, v7

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$3(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 376
    move-object v0, v7

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$4(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 377
    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const/16 v18, 0x2d

    :goto_2
    add-int/lit8 v18, v18, 0x14

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object v1, v7

    iput v0, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleWidth:I

    .line 385
    const/16 v18, 0x1

    sub-int v18, v10, v18

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 386
    move v0, v14

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v17

    move-object v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$4(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 388
    :cond_3
    add-int v17, v17, v16

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 377
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 392
    .end local v7           #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .end local v16           #widthPerMenu:I
    .end local v17           #x:I
    :cond_5
    const/4 v4, 0x1

    .line 393
    .local v4, foundANewMaxWidth:Z
    const/4 v9, 0x0

    .line 395
    .local v9, menusProcessed:I
    :goto_3
    if-eqz v4, :cond_0

    if-ge v9, v10, :cond_0

    .line 396
    const/4 v4, 0x0

    .line 397
    const/4 v6, 0x0

    .line 398
    .local v6, maxWidth:I
    const/4 v5, 0x0

    :goto_4
    if-lt v5, v10, :cond_8

    .line 406
    sub-int v18, v10, v9

    mul-int v18, v18, v6

    add-int v2, v18, v11

    .line 407
    .local v2, cumulativeWidth:I
    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v14

    if-ltz v18, :cond_6

    if-eqz v4, :cond_6

    const/16 v18, 0x1

    sub-int v18, v10, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 408
    :cond_6
    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v14, v18

    move v0, v10

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v3, v18, v19

    .line 409
    .local v3, delta:F
    const/16 v18, 0x0

    cmpg-float v18, v3, v18

    if-gez v18, :cond_7

    .line 410
    const/4 v3, 0x0

    .line 412
    :cond_7
    const/16 v17, 0x0

    .line 413
    .restart local v17       #x:I
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_0

    .line 414
    aget-object v7, v8, v5

    .line 415
    .restart local v7       #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    move-object v0, v7

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$3(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 416
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move v15, v0

    .line 417
    .local v15, width:F
    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_a

    .line 418
    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v15, v18, v3

    .line 422
    :goto_6
    move v0, v15

    float-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$4(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 423
    move-object v0, v7

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/ecareme/pixwe/media/StringTexture;->computeTextWidthForConfig(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v7

    iput v0, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleWidth:I

    .line 424
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 399
    .end local v2           #cumulativeWidth:I
    .end local v3           #delta:F
    .end local v7           #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .end local v15           #width:F
    .end local v17           #x:I
    :cond_8
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v15

    .line 400
    .local v15, width:I
    if-le v15, v6, :cond_9

    if-ge v15, v12, :cond_9

    .line 401
    const/4 v4, 0x1

    .line 402
    move v6, v15

    .line 398
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 420
    .restart local v2       #cumulativeWidth:I
    .restart local v3       #delta:F
    .restart local v7       #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .local v15, width:F
    .restart local v17       #x:I
    :cond_a
    add-float/2addr v15, v3

    goto :goto_6

    .line 428
    .end local v3           #delta:F
    .end local v7           #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .end local v15           #width:F
    .end local v17           #x:I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 429
    move v12, v6

    .line 430
    add-int/2addr v11, v6

    goto/16 :goto_3
.end method

.method private selectMenu(I)V
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, -0x1

    .line 222
    iget v3, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    .line 223
    .local v3, oldIndex:I
    if-eq v3, p1, :cond_3

    .line 225
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 226
    .local v2, menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    if-eq v3, v10, :cond_0

    .line 227
    aget-object v4, v2, v3

    .line 228
    .local v4, oldMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    iget-object v9, v4, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    if-eqz v9, :cond_0

    .line 229
    iget-object v9, v4, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 234
    .end local v4           #oldMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_0
    iput p1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    .line 235
    iput v10, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenuItem:I

    .line 238
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    .line 239
    .local v6, submenu:Lcom/ecareme/pixwe/media/PopupMenu;
    const/4 v0, 0x0

    .line 240
    .local v0, didShow:Z
    if-eq p1, v10, :cond_2

    .line 242
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    aget-object v1, v9, p1

    .line 243
    .local v1, menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    iget-object v9, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    if-eqz v9, :cond_1

    .line 244
    iget-object v9, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 248
    :cond_1
    iget-object v5, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 249
    .local v5, options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    if-eqz v5, :cond_2

    .line 250
    iget v9, p0, Lcom/ecareme/pixwe/media/MenuBar;->mX:F

    float-to-int v9, v9

    invoke-static {v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$2(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v7, v9, v10

    .line 251
    .local v7, x:I
    iget v9, p0, Lcom/ecareme/pixwe/media/MenuBar;->mY:F

    float-to-int v8, v9

    .line 252
    .local v8, y:I
    const/4 v0, 0x1

    .line 253
    invoke-virtual {v6, v5}, Lcom/ecareme/pixwe/media/PopupMenu;->setOptions([Lcom/ecareme/pixwe/media/PopupMenu$Option;)V

    .line 254
    iget v9, p0, Lcom/ecareme/pixwe/media/MenuBar;->mWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/ecareme/pixwe/media/MenuBar;->mHeight:F

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/ecareme/pixwe/media/PopupMenu;->showAtPoint(IIII)V

    .line 257
    .end local v1           #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .end local v5           #options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_2
    if-nez v0, :cond_3

    .line 258
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/ecareme/pixwe/media/PopupMenu;->close(Z)V

    .line 261
    .end local v0           #didShow:Z
    .end local v2           #menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .end local v6           #submenu:Lcom/ecareme/pixwe/media/PopupMenu;
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 264
    iget v1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    .line 265
    .local v1, oldIndex:I
    if-eq v1, v4, :cond_1

    .line 267
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 268
    .local v0, menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    if-eq v1, v4, :cond_0

    .line 269
    aget-object v2, v0, v1

    .line 270
    .local v2, oldMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 274
    .end local v2           #oldMenu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_0
    const/4 v1, -0x1

    .line 276
    .end local v0           #menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_1
    invoke-direct {p0, v4}, Lcom/ecareme/pixwe/media/MenuBar;->selectMenu(I)V

    .line 277
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    if-eqz v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ecareme/pixwe/media/PopupMenu;->close(Z)V

    .line 279
    :cond_2
    return-void
.end method

.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 113
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/PopupMenu;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 118
    return-void
.end method

.method public getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    return-object v0
.end method

.method protected onHiddenChanged()V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mHidden:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/PopupMenu;->close(Z)V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MenuBar;->layoutMenus()V

    .line 104
    return-void
.end method

.method public onSelectionChanged(Lcom/ecareme/pixwe/media/PopupMenu;I)V
    .locals 0
    .parameter "menu"
    .parameter "selectedIndex"

    .prologue
    .line 536
    iput p2, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenuItem:I

    .line 537
    return-void
.end method

.method public onSelectionClicked(Lcom/ecareme/pixwe/media/PopupMenu;I)V
    .locals 1
    .parameter "menu"
    .parameter "selectedIndex"

    .prologue
    .line 540
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/MenuBar;->selectMenu(I)V

    .line 541
    return-void
.end method

.method protected onSizeChanged()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mNeedsLayout:Z

    .line 109
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 284
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 285
    .local v6, y:I
    invoke-direct {p0, v5, v6}, Lcom/ecareme/pixwe/media/MenuBar;->hitTestMenu(II)I

    move-result v3

    .line 286
    .local v3, hit:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 287
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return v12

    .line 289
    :pswitch_0
    iput-boolean v12, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchActive:Z

    .line 290
    iget v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    if-ne v7, v3, :cond_1

    .line 291
    iput-boolean v12, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSecondTouch:Z

    .line 297
    :goto_1
    :pswitch_1
    if-eq v3, v11, :cond_2

    iget v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mAlpha:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 299
    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/MenuBar;->selectMenu(I)V

    .line 300
    iput-boolean v12, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchOverMenu:Z

    .line 305
    :goto_2
    iget-object v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-virtual {v7, p1}, Lcom/ecareme/pixwe/media/PopupMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 293
    :cond_1
    iput-boolean v9, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSecondTouch:Z

    goto :goto_1

    .line 303
    :cond_2
    iput-boolean v9, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchOverMenu:Z

    goto :goto_2

    .line 308
    :pswitch_2
    iget v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    if-ne v7, v3, :cond_3

    iget-boolean v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSecondTouch:Z

    if-eqz v7, :cond_3

    .line 309
    iget-object v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-virtual {v7, v12}, Lcom/ecareme/pixwe/media/PopupMenu;->close(Z)V

    .line 310
    iput v11, p0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    goto :goto_0

    .line 314
    :cond_3
    iget-object v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mSubmenu:Lcom/ecareme/pixwe/media/PopupMenu;

    invoke-virtual {v7, p1}, Lcom/ecareme/pixwe/media/PopupMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long v1, v7, v9

    .line 320
    .local v1, elapsed:J
    if-eq v3, v11, :cond_5

    .line 322
    iget-object v7, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    aget-object v4, v7, v3

    .line 323
    .local v4, menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    iget-object v7, v4, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    if-eqz v7, :cond_4

    .line 324
    iget-object v7, v4, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 326
    :cond_4
    iget-object v7, v4, Lcom/ecareme/pixwe/media/MenuBar$Menu;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    if-nez v7, :cond_0

    .line 328
    invoke-direct {p0, v11}, Lcom/ecareme/pixwe/media/MenuBar;->selectMenu(I)V

    goto :goto_0

    .line 329
    .end local v4           #menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    :cond_5
    const-wide/16 v7, 0x15e

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 330
    invoke-direct {p0, v11}, Lcom/ecareme/pixwe/media/MenuBar;->selectMenu(I)V

    goto :goto_0

    .line 336
    .end local v1           #elapsed:J
    :pswitch_3
    invoke-direct {p0, v11}, Lcom/ecareme/pixwe/media/MenuBar;->selectMenu(I)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 30
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mNeedsLayout:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MenuBar;->layoutMenus()V

    .line 125
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MenuBar;->mNeedsLayout:Z

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 129
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MenuBar;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 133
    :cond_1
    sget v5, Lcom/ecareme/pixwe/media/MenuBar;->BACKGROUND:I

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v6

    .line 134
    .local v6, background:Lcom/ecareme/pixwe/media/Texture;
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v13

    .line 135
    .local v13, backgroundHeight:I
    const/high16 v5, 0x4234

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f00

    add-float/2addr v5, v7

    move v0, v5

    float-to-int v0, v0

    move/from16 v21, v0

    .line 136
    .local v21, menuHeight:I
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v5

    sub-int v14, v5, v21

    .line 137
    .local v14, extra:I
    const/4 v14, 0x0

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mX:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mY:F

    move v5, v0

    int-to-float v8, v14

    sub-float v8, v5, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mWidth:F

    move v9, v0

    int-to-float v10, v13

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FFFF)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-object/from16 v22, v0

    .line 142
    .local v22, menus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 143
    .local v23, numMenus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mY:F

    move v5, v0

    move v0, v5

    float-to-int v0, v0

    move/from16 v29, v0

    .line 144
    .local v29, y:I
    sget v5, Lcom/ecareme/pixwe/media/MenuBar;->SEPERATOR:I

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    const/16 v16, 0x1

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 151
    .end local v16           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mTouchMenu:I

    move/from16 v27, v0

    .line 152
    .local v27, touchMenu:I
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MenuBar;->canDrawHighlight()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/MenuBar;->drawHighlight(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mHeight:F

    move v15, v0

    .line 158
    .local v15, height:F
    const/16 v16, 0x0

    .end local v6           #background:Lcom/ecareme/pixwe/media/Texture;
    .restart local v16       #i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 180
    return-void

    .line 146
    .end local v15           #height:F
    .end local v27           #touchMenu:I
    .restart local v6       #background:Lcom/ecareme/pixwe/media/Texture;
    :cond_4
    aget-object v5, v22, v16

    invoke-static {v5}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v5

    int-to-float v8, v5

    move/from16 v0, v29

    int-to-float v0, v0

    move v9, v0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    move/from16 v0, v21

    int-to-float v0, v0

    move v12, v0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 145
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 160
    .end local v6           #background:Lcom/ecareme/pixwe/media/Texture;
    .restart local v15       #height:F
    .restart local v27       #touchMenu:I
    :cond_5
    aget-object v20, v22, v16

    .line 161
    .local v20, menu:Lcom/ecareme/pixwe/media/MenuBar$Menu;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->icon:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v17

    .line 163
    .local v17, icon:Lcom/ecareme/pixwe/media/ResourceTexture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/ecareme/pixwe/media/StringTexture;

    .line 164
    .local v25, titleTexture:Lcom/ecareme/pixwe/media/StringTexture;
    if-nez v25, :cond_6

    .line 165
    new-instance v25, Lcom/ecareme/pixwe/media/StringTexture;

    .end local v25           #titleTexture:Lcom/ecareme/pixwe/media/StringTexture;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-object v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleWidth:I

    move v7, v0

    sget-object v8, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iget v8, v8, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;II)V

    .line 166
    .restart local v25       #titleTexture:Lcom/ecareme/pixwe/media/StringTexture;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 167
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleTexture:Lcom/ecareme/pixwe/media/StringTexture;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_6
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/ResourceTexture;->getWidth()I

    move-result v5

    move/from16 v18, v5

    .line 171
    .local v18, iconWidth:I
    :goto_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleWidth:I

    move v5, v0

    add-int v28, v18, v5

    .line 172
    .local v28, width:I
    invoke-static/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$2(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v5

    sub-int v5, v5, v28

    div-int/lit8 v24, v5, 0x2

    .line 173
    .local v24, offset:I
    if-eqz v17, :cond_7

    .line 174
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v15, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v19, v5, v6

    .line 175
    .local v19, iconY:F
    invoke-static/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v5

    add-int v5, v5, v24

    int-to-float v5, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move v2, v5

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 177
    .end local v19           #iconY:F
    :cond_7
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    sget-object v6, Lcom/ecareme/pixwe/media/MenuBar;->MENU_TITLE_STYLE:Lcom/ecareme/pixwe/media/StringTexture$Config;

    iget v6, v6, Lcom/ecareme/pixwe/media/StringTexture$Config;->height:I

    int-to-float v6, v6

    sub-float v6, v15, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    add-float v26, v5, v6

    .line 178
    .local v26, titleY:F
    invoke-static/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MenuBar$Menu;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I

    move-result v5

    add-int v5, v5, v24

    add-int v5, v5, v18

    int-to-float v5, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move v2, v5

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 158
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 170
    .end local v18           #iconWidth:I
    .end local v24           #offset:I
    .end local v26           #titleY:F
    .end local v28           #width:I
    :cond_8
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_2
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 80
    iput p1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mAlpha:F

    .line 81
    return-void
.end method

.method public setMenus([Lcom/ecareme/pixwe/media/MenuBar$Menu;)V
    .locals 1
    .parameter "menus"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mNeedsLayout:Z

    .line 91
    return-void
.end method

.method public updateMenu(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V
    .locals 1
    .parameter "menu"
    .parameter "index"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mMenus:[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    aput-object p1, v0, p2

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar;->mNeedsLayout:Z

    .line 96
    return-void
.end method
