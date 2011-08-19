.class public Lcom/amazon/kcp/periodicals/CoverActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "CoverActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/CoverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitToArticleList()V

    return-void
.end method

.method private exitToArticleList()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->createIntentForPeriodicalLaunch(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/CoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->finish()V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/CoverActivity;->setRequestedOrientation(I)V

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 38
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/CoverActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitToArticleList()V

    .line 89
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitToArticleList()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getImageFactory()Lcom/amazon/system/drawing/ImageFactory;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    new-instance v2, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLargeEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/android/drawing/AndroidImage;

    .line 63
    if-nez v0, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitToArticleList()V

    goto :goto_0

    .line 70
    :cond_2
    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/CoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    if-nez v1, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitToArticleList()V

    goto :goto_0

    .line 79
    :cond_3
    invoke-interface {v0}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v0, Lcom/amazon/kcp/periodicals/CoverActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/CoverActivity$1;-><init>(Lcom/amazon/kcp/periodicals/CoverActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 103
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/CoverActivity;->exitToArticleList()V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method
