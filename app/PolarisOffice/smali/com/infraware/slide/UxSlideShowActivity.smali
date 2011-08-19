.class public Lcom/infraware/slide/UxSlideShowActivity;
.super Landroid/app/Activity;
.source "UxSlideShowActivity.java"

# interfaces
.implements Lcom/infraware/evengine/EvListener$ViewerListener;
.implements Lcom/infraware/evengine/EvListener$PptEditorListener;
.implements Lcom/infraware/evengine/E$EV_UNREDO_ACTION;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;
    }
.end annotation


# instance fields
.field private mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field private mSlideBitmap:Landroid/widget/ImageView;

.field private mXTouchDownPos:I

.field private m_nCurrentPage:I

.field private m_nTotalPage:I

.field private m_oConfiguration:Landroid/content/res/Configuration;

.field private m_oGuidesLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mSlideBitmap:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 37
    iput v1, p0, Lcom/infraware/slide/UxSlideShowActivity;->mXTouchDownPos:I

    .line 39
    iput v1, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nTotalPage:I

    .line 40
    iput v1, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    .line 41
    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oGuidesLayout:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oConfiguration:Landroid/content/res/Configuration;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/slide/UxSlideShowActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oGuidesLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private moveToFirstPage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, v1, v1}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    .line 135
    return-void
.end method

.method private moveToLastPage()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 140
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nCurPage:I

    iput v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    .line 142
    return-void
.end method

.method private moveToNextPage()V
    .locals 3

    .prologue
    .line 119
    iget v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    .line 120
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 122
    return-void
.end method

.method private moveToPrevPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    iget v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    if-le v0, v2, :cond_0

    .line 126
    iget v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 129
    return-void
.end method


# virtual methods
.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 112
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/infraware/slide/UxSlideShowActivity;->mSlideBitmap:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnCloseDoc()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public OnDrawBitmap(II)V
    .locals 0
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    .line 260
    return-void
.end method

.method public OnDrawThumbnailBitmap(I)V
    .locals 0
    .parameter "nPageNum"

    .prologue
    .line 255
    return-void
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .locals 1
    .parameter "nStrID"

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnLoadComplete()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public OnLoadFail(I)V
    .locals 0
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 214
    return-void
.end method

.method public OnNotify(I)V
    .locals 0
    .parameter "nNotifyCode"

    .prologue
    .line 278
    return-void
.end method

.method public OnPageMove(III)V
    .locals 0
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 224
    return-void
.end method

.method public OnPptDrawSlidesBitmap(I)V
    .locals 0
    .parameter "nPageNum"

    .prologue
    .line 96
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bBitmapImage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptOnDrawSlidenote(I)V
    .locals 0
    .parameter "pageNum"

    .prologue
    .line 98
    return-void
.end method

.method public OnPptSlideDelete()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public OnPptSlideexInsert()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .locals 0
    .parameter "strPrintFile"

    .prologue
    .line 265
    return-void
.end method

.method public OnPrintedCount(I)V
    .locals 0
    .parameter "nTotalCount"

    .prologue
    .line 317
    return-void
.end method

.method public OnProgress(II)V
    .locals 0
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"

    .prologue
    .line 234
    return-void
.end method

.method public OnProgressStart(I)V
    .locals 0
    .parameter "EV_PROGRESS_TYPE"

    .prologue
    .line 229
    return-void
.end method

.method public OnSearchMode(IIII)V
    .locals 0
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    .line 245
    return-void
.end method

.method public OnTerminate()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .locals 0
    .parameter "strTTS"

    .prologue
    .line 270
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/slide/UxSlideShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->finish()V

    .line 204
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 334
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/infraware/slide/UxSlideShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 335
    .local v0, display:Landroid/view/Display;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    const/16 v5, 0x30

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IChangeScreen(III)V

    .line 347
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IChangeScreen(III)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oConfiguration:Landroid/content/res/Configuration;

    .line 55
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideShowActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideShowActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 58
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->ISetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 60
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 62
    .local v6, display:Landroid/view/Display;
    const v0, 0x7f0c016c

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mSlideBitmap:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 66
    .local v7, intent:Landroid/content/Intent;
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRATYPE;->EXTRATYPE_SLIDESHOW:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRAVALUE;->EXTRAVALUE_SLIDESHOW_FIRST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    const/16 v4, 0x30

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideShow(III)V

    .line 73
    :goto_0
    iput v9, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    .line 82
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nTotalPages:I

    iput v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nTotalPage:I

    .line 84
    const v0, 0x7f0c016d

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oGuidesLayout:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 87
    .local v8, oFadeAnim:Landroid/view/animation/Animation;
    new-instance v0, Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;

    invoke-direct {v0, p0, v2}, Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;-><init>(Lcom/infraware/slide/UxSlideShowActivity;Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 89
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_oGuidesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void

    .line 71
    .end local v8           #oFadeAnim:Landroid/view/animation/Animation;
    :cond_1
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3, v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideShow(III)V

    goto :goto_0

    .line 75
    :cond_2
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRATYPE;->EXTRATYPE_SLIDESHOW:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRAVALUE;->EXTRAVALUE_SLIDESHOW_CURRENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v4}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v4

    iget v4, v4, Lcom/infraware/evengine/EV$CONFIG_INFO;->nCurPage:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideShow(III)V

    .line 79
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nCurPage:I

    iput v0, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 352
    invoke-static {p2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->getKeyEventEx(Landroid/view/KeyEvent;)Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;

    move-result-object v0

    .line 353
    .local v0, eventEx:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getKeyCode()I

    move-result v1

    .line 354
    .local v1, nKeyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 370
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveHomeKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 372
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToFirstPage()V

    .line 388
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 357
    :sswitch_0
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToNextPage()V

    goto :goto_0

    .line 361
    :sswitch_1
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToPrevPage()V

    goto :goto_0

    .line 366
    :sswitch_2
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToNextPage()V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveEndKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToLastPage()V

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageUpKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 380
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToPrevPage()V

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageDownKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToNextPage()V

    goto :goto_0

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 147
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 150
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/infraware/slide/UxSlideShowActivity;->mXTouchDownPos:I

    .line 152
    iget v2, p0, Lcom/infraware/slide/UxSlideShowActivity;->mXTouchDownPos:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToPrevPage()V

    goto :goto_0

    .line 158
    :cond_0
    iget v2, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nTotalPage:I

    iget v3, p0, Lcom/infraware/slide/UxSlideShowActivity;->m_nCurrentPage:I

    if-ne v2, v3, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideShowActivity;->onBackPressed()V

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/infraware/slide/UxSlideShowActivity;->moveToNextPage()V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 167
    .local v1, x:I
    iget-object v2, p0, Lcom/infraware/slide/UxSlideShowActivity;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
