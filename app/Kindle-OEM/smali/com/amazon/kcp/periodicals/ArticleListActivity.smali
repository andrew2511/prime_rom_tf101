.class public abstract Lcom/amazon/kcp/periodicals/ArticleListActivity;
.super Lcom/amazon/kcp/redding/DocumentActivity;
.source "ArticleListActivity.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;


# static fields
.field private static final METRICS_NAME:Ljava/lang/String; = "ArticleListActivity"

.field protected static final SECTION_LIST_ACTIVITY:I = 0x0

.field private static final VIEW_OPTION_BUNDLE_KEY:Ljava/lang/String; = "ViewOptions"


# instance fields
.field private final articleThumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

.field protected colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

.field private contentContainer:Landroid/view/View;

.field protected fontSize:I

.field private isCurrentlySearching:Z

.field protected onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

.field protected onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

.field protected onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

.field protected searchView:Lcom/amazon/android/widget/SearchViewWrapper;

.field private final settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private storeOption:Landroid/view/MenuItem;

.field protected viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->articleThumbnails:Ljava/util/Map;

    .line 92
    new-instance v0, Lcom/amazon/kcp/periodicals/ArticleListActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity$1;-><init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    .line 116
    new-instance v0, Lcom/amazon/kcp/periodicals/ArticleListActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity$2;-><init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    .line 131
    new-instance v0, Lcom/amazon/kcp/periodicals/ArticleListActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity$3;-><init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    .line 146
    new-instance v0, Lcom/amazon/kcp/periodicals/ArticleListActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity$4;-><init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ArticleListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/kcp/periodicals/ArticleListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->isCurrentlySearching:Z

    return p1
.end method

.method private setPreferenceFromSettingsController(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 510
    const-string v1, "fontSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v0

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setViewsForFontSize(I)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string v1, "colorMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->finish()V

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    const-string v1, "colorChange"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 526
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setViewsForColorMode()V

    goto :goto_0

    .line 529
    :cond_3
    const-string v1, "readerOrientation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 531
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 533
    :cond_4
    const-string v1, "screenBrightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    goto :goto_0
.end method

.method private setViewsForColorMode()V
    .locals 6

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v3

    .line 571
    .local v3, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v3}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    .line 574
    .local v0, colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v4, v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 576
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 578
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->updateTextColorDrawables(Lcom/amazon/kcp/reader/models/ColorMode;)V

    .line 583
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getFragments()[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    move-result-object v1

    .line 584
    .local v1, fr:[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_2

    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 586
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    .line 588
    aget-object v4, v1, v2

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-interface {v4, v5}, Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;->setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 584
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local v1           #fr:[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private setViewsForFontSize(I)V
    .locals 4
    .parameter "fontSize"

    .prologue
    .line 546
    iget v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->fontSize:I

    if-eq v2, p1, :cond_1

    .line 548
    iput p1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->fontSize:I

    .line 553
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getFragments()[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    move-result-object v0

    .line 554
    .local v0, fr:[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 556
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 558
    aget-object v2, v0, v1

    iget v3, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->fontSize:I

    invoke-interface {v2, v3}, Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;->setFontSize(I)V

    .line 554
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v0           #fr:[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    .end local v1           #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method public cacheThumbnail(Lcom/amazon/kcp/reader/models/ITOCItem;)V
    .locals 5
    .parameter

    .prologue
    .line 612
    if-nez p1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/ITOCItem;->getImages()[[B

    move-result-object v0

    .line 620
    array-length v1, v0

    if-lez v1, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 624
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 625
    new-instance v3, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    new-instance v4, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v4, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    invoke-direct {v3, v0, v4}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>([BLcom/amazon/system/drawing/Dimension;)V

    .line 626
    invoke-interface {v3}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->articleThumbnails:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/ITOCItem;->getFirstPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->hideOverlay(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/ui/Hideable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCachedThumbnail(Lcom/amazon/kcp/reader/models/ITOCItem;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "article"

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 641
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->articleThumbnails:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/ITOCItem;->getFirstPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_0
.end method

.method protected abstract getFragments()[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->contentContainer:Landroid/view/View;

    return-object v0
.end method

.method protected hideOverlay(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/ui/Hideable;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 291
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 295
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/Hideable;->hide()Z

    .line 300
    const/4 v1, 0x1

    .line 303
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v0, :cond_0

    .line 163
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->requestWindowFeature(I)Z

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->registerActionBarIcons()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->finish()V

    .line 231
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v0

    if-nez v0, :cond_2

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_2
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-nez v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 195
    :cond_3
    const-string v0, "readerOrientation"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    .line 196
    const-string v0, "screenBrightness"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    .line 197
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setContentView(I)V

    .line 198
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->contentContainer:Landroid/view/View;

    .line 201
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 202
    if-eqz v0, :cond_4

    .line 204
    new-instance v1, Lcom/amazon/kcp/periodicals/ArticleListActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity$5;-><init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 221
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setViewsForColorMode()V

    .line 222
    const-string v0, "fontSize"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    .line 227
    :cond_5
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setup(Landroid/os/Bundle;)V

    .line 230
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ViewOptions;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 370
    const v0, 0x7f0c00f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 371
    const v1, 0x7f0c00fb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->storeOption:Landroid/view/MenuItem;

    .line 373
    sget-boolean v1, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->setupSearchView(Landroid/view/Menu;)V

    .line 379
    :cond_0
    if-eqz v0, :cond_1

    .line 381
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 383
    const v1, 0x7f0b00d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 391
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 387
    :cond_2
    const v1, 0x7f0b00d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onDestroy()V

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getChangingConfigurations()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, p0, v3}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/SettingsController;->unregisterSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 253
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->articleThumbnails:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 255
    .local v1, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 247
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #thumbnail:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->articleThumbnails:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 258
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 309
    packed-switch p1, :pswitch_data_0

    .line 319
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/DocumentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->hide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 325
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/DocumentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 328
    :pswitch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ArticleListActivity"

    const-string v2, "PeriodicalSearchViaArticleListHWButton"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 397
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/DocumentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    move v0, v1

    .line 402
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 482
    :pswitch_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 484
    :goto_0
    return v5

    .line 425
    :pswitch_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ArticleListActivity"

    const-string v2, "HomeViaArticleListMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    .line 429
    new-instance v0, Lcom/amazon/kcp/periodicals/ArticleListActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity$6;-><init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V

    .line 437
    new-instance v1, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v1}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amazon/android/system/AndroidUtilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->hide()Z

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->show()Z

    .line 448
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ArticleListActivity"

    const-string v2, "ViewOptionsViaArticleListMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/periodicals/SectionListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 455
    :pswitch_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStorefront()V

    goto :goto_0

    .line 459
    :pswitch_5
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unkept"

    .line 460
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;->setBookKept(Z)V

    .line 462
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "ArticleListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Periodical"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ViaContext"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 459
    :cond_1
    const-string v0, "Kept"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 460
    goto :goto_2

    .line 474
    :pswitch_6
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ArticleListActivity"

    const-string v2, "PeriodicalSearchViaArticleListMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onSearchRequested()Z

    goto/16 :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x7f0c00f3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 413
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->isCurrentlySearching:Z

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 417
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptions;->hide()Z

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->storeOption:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->storeOption:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 347
    :cond_1
    const v0, 0x7f0c00f7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const v1, 0x7f02004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 351
    const v1, 0x7f0b00d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 352
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 361
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_2
    const v1, 0x7f020055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 357
    const v1, 0x7f0b00d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 358
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "ViewOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ViewOptions;->setVisibility(I)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onResume()V

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 240
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "ViewOptions"

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->viewOptions:Lcom/amazon/kcp/reader/ui/ViewOptions;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ViewOptions;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 494
    iput-boolean v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->isCurrentlySearching:Z

    .line 495
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 496
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected registerActionBarIcons()V
    .locals 2

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    return-void
.end method

.method protected setTitleVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 671
    return-void
.end method

.method protected abstract setup(Landroid/os/Bundle;)V
.end method

.method protected setupSearchView(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 681
    sget-boolean v2, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v2, :cond_0

    .line 683
    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper;

    const v2, 0x7f0c00f8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;-><init>(Landroid/view/MenuItem;)V

    .line 684
    .local v1, searchView:Lcom/amazon/android/widget/SearchViewWrapper;
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 686
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setSearchableInfo(Landroid/app/SearchManager;Landroid/content/ComponentName;)V

    .line 687
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setIconifiedByDefault(Z)V

    .line 688
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 689
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    .line 690
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    .line 692
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    .line 694
    .end local v0           #searchManager:Landroid/app/SearchManager;
    .end local v1           #searchView:Lcom/amazon/android/widget/SearchViewWrapper;
    :cond_0
    return-void
.end method
