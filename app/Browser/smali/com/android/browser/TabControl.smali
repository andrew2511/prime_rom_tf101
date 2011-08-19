.class Lcom/android/browser/TabControl;
.super Ljava/lang/Object;
.source "TabControl.java"


# instance fields
.field private final mController:Lcom/android/browser/Controller;

.field private mCurrentTab:I

.field private mMaxTabs:I

.field private mTabQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 52
    iput-object p1, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    .line 53
    iget-object v0, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "thumbnails"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/TabControl;->mThumbnailDir:Ljava/io/File;

    .line 55
    iget-object v0, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getMaxTabs()I

    move-result v0

    iput v0, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method private createNewWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/TabControl;->createNewWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private createNewWebView(Z)Landroid/webkit/WebView;
    .locals 1
    .parameter "privateBrowsing"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getWebViewFactory()Lcom/android/browser/WebViewFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private getHalfLeastUsedTabs(Lcom/android/browser/Tab;)Ljava/util/Vector;
    .locals 6
    .parameter "current"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 431
    .local v3, tabsToGo:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    if-nez p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v3

    .line 435
    :cond_1
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, openTabCount:I
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/Tab;

    .line 444
    .local v2, t:Lcom/android/browser/Tab;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 446
    if-eq v2, p1, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v4

    if-eq v2, v4, :cond_2

    .line 447
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 452
    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_3
    div-int/lit8 v1, v1, 0x2

    .line 453
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 454
    invoke-virtual {v3, v1}, Ljava/util/Vector;->setSize(I)V

    goto :goto_0
.end method

.method private setCurrentTab(Lcom/android/browser/Tab;Z)Z
    .locals 8
    .parameter "newTab"
    .parameter "force"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 599
    iget v4, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 600
    .local v0, current:Lcom/android/browser/Tab;
    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    move v4, v5

    .line 634
    :goto_0
    return v4

    .line 603
    :cond_0
    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Lcom/android/browser/Tab;->putInBackground()V

    .line 605
    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 607
    :cond_1
    if-nez p1, :cond_2

    move v4, v7

    .line 608
    goto :goto_0

    .line 612
    :cond_2
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 613
    .local v1, index:I
    if-eq v1, v6, :cond_3

    .line 614
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    :cond_3
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 620
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 621
    .local v2, mainView:Landroid/webkit/WebView;
    if-nez v2, :cond_6

    move v3, v5

    .line 622
    .local v3, needRestore:Z
    :goto_1
    if-eqz v3, :cond_4

    .line 624
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 625
    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 627
    :cond_4
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInForeground()V

    .line 628
    if-eqz v3, :cond_5

    .line 630
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSavedState()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 631
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    move v4, v5

    .line 634
    goto :goto_0

    .end local v3           #needRestore:Z
    :cond_6
    move v3, v7

    .line 621
    goto :goto_1
.end method

.method private tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 3
    .parameter "t"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 524
    :goto_0
    return v1

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 518
    .local v0, webview:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    move v1, v2

    .line 519
    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 524
    goto :goto_0
.end method


# virtual methods
.method canCreateNewTab()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canRestoreState(Landroid/os/Bundle;Z)I
    .locals 6
    .parameter "inState"
    .parameter "restoreIncognitoTabs"

    .prologue
    const/4 v5, -0x1

    .line 296
    if-nez p1, :cond_0

    move v2, v5

    .line 298
    .local v2, numTabs:I
    :goto_0
    if-ne v2, v5, :cond_1

    move v4, v5

    .line 320
    :goto_1
    return v4

    .line 296
    .end local v2           #numTabs:I
    :cond_0
    const-string v4, "numTabs"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    goto :goto_0

    .line 301
    .restart local v2       #numTabs:I
    :cond_1
    const-string v4, "currentTab"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 305
    .local v3, oldCurrentTab:I
    const/4 v0, -0x1

    .line 306
    .local v0, currentTab:I
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "privateBrowsingEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 309
    :cond_2
    move v0, v3

    :cond_3
    :goto_2
    move v4, v0

    .line 320
    goto :goto_1

    .line 311
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "privateBrowsingEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 314
    move v0, v1

    .line 315
    goto :goto_2

    .line 311
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method createNewTab()Lcom/android/browser/Tab;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0, v1, v1, v0}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method createNewTab(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/android/browser/Tab;
    .locals 7
    .parameter "closeOnExit"
    .parameter "appId"
    .parameter "url"
    .parameter "privateBrowsing"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 175
    .local v6, size:I
    iget v1, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    if-ne v1, v6, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    .line 178
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/browser/TabControl;->createNewWebView(Z)Landroid/webkit/WebView;

    move-result-object v2

    .line 181
    .local v2, w:Landroid/webkit/WebView;
    new-instance v0, Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, t:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v0}, Lcom/android/browser/Tab;->putInBackground()V

    move-object v1, v0

    .line 185
    goto :goto_0
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 257
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->destroy()V

    goto :goto_0

    .line 259
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 261
    return-void
.end method

.method findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 533
    if-nez p1, :cond_0

    move-object v3, v4

    .line 549
    :goto_0
    return-object v3

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 538
    .local v2, t:Lcom/android/browser/Tab;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/android/browser/TabControl;->tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 539
    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 543
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 544
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 545
    invoke-direct {p0, v2, p1}, Lcom/android/browser/TabControl;->tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 546
    goto :goto_0

    .line 543
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 549
    goto :goto_0
.end method

.method freeMemory()V
    .locals 7

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/TabControl;->getHalfLeastUsedTabs(Lcom/android/browser/Tab;)Ljava/util/Vector;

    move-result-object v2

    .line 407
    .local v2, tabs:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 408
    const-string v4, "TabControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tabs in the browser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 411
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->saveState()Z

    .line 413
    invoke-virtual {v1}, Lcom/android/browser/Tab;->destroy()V

    goto :goto_1

    .line 419
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_2
    const-string v4, "TabControl"

    const-string v5, "Free WebView\'s unused memory and cache"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 421
    .local v3, view:Landroid/webkit/WebView;
    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v3}, Landroid/webkit/WebView;->freeMemory()V

    goto :goto_0
.end method

.method getCurrentIndex()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    return v0
.end method

.method getCurrentSubWindow()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 95
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 96
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method getCurrentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 83
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 84
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method getCurrentWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 70
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 71
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method getTab(I)Lcom/android/browser/Tab;
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/Tab;

    move-object v0, p0

    .line 118
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTabCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 480
    if-nez p1, :cond_0

    move-object v3, v4

    .line 490
    :goto_0
    return-object v3

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 484
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 486
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 487
    goto :goto_0

    .line 484
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_2
    move-object v3, v4

    .line 490
    goto :goto_0
.end method

.method getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "view"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 466
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 468
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-ne v3, p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 472
    .end local v2           #t:Lcom/android/browser/Tab;
    :goto_1
    return-object v3

    .line 466
    .restart local v2       #t:Lcom/android/browser/Tab;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getTabIndex(Lcom/android/browser/Tab;)I
    .locals 1
    .parameter "tab"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method getThumbnailDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/browser/TabControl;->mThumbnailDir:Ljava/io/File;

    return-object v0
.end method

.method recreateWebView(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 557
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Lcom/android/browser/Tab;->destroy()V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 564
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;Z)Z

    .line 567
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->setSavedState(Landroid/os/Bundle;)V

    .line 568
    return-void
.end method

.method removeParentChildRelationShips()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 201
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->removeFromTree()V

    goto :goto_0

    .line 203
    .end local v1           #tab:Lcom/android/browser/Tab;
    :cond_0
    return-void
.end method

.method removeTab(Lcom/android/browser/Tab;)Z
    .locals 7
    .parameter "t"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const/4 v6, 0x0

    .line 249
    :goto_0
    return v6

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 219
    .local v2, current:Lcom/android/browser/Tab;
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    if-ne v2, p1, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInBackground()V

    .line 224
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 232
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->destroy()V

    .line 234
    invoke-virtual {p1}, Lcom/android/browser/Tab;->removeFromTree()V

    .line 238
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/Tab;

    .line 239
    .local v5, tab:Lcom/android/browser/Tab;
    invoke-virtual {v5}, Lcom/android/browser/Tab;->getChildTabs()Ljava/util/Vector;

    move-result-object v1

    .line 240
    .local v1, children:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab;

    .line 242
    .local v0, child:Lcom/android/browser/Tab;
    invoke-virtual {v0, v5}, Lcom/android/browser/Tab;->setParentTab(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 228
    .end local v0           #child:Lcom/android/browser/Tab;
    .end local v1           #children:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #tab:Lcom/android/browser/Tab;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v6

    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    goto :goto_1

    .line 248
    :cond_3
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    const/4 v6, 0x1

    goto :goto_0
.end method

.method restoreState(Landroid/os/Bundle;IZZ)V
    .locals 13
    .parameter "inState"
    .parameter "currentTab"
    .parameter "restoreIncognitoTabs"
    .parameter "restoreAll"

    .prologue
    .line 335
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 396
    :cond_0
    return-void

    .line 340
    :cond_1
    const-string v1, "numTabs"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 344
    .local v8, numTabs:I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v9, originalTabIndices:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_8

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 349
    .local v12, state:Landroid/os/Bundle;
    if-nez p3, :cond_2

    if-eqz v12, :cond_2

    const-string v1, "privateBrowsingEnabled"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 351
    :cond_2
    if-eq v7, p2, :cond_3

    if-eqz p4, :cond_6

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 355
    .local v0, t:Lcom/android/browser/Tab;
    if-ne v7, p2, :cond_4

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 358
    :cond_4
    invoke-virtual {v0, v12}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 359
    const-string v1, "TabControl"

    const-string v2, "Fail in restoreState, load home page."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 363
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 367
    .end local v0           #t:Lcom/android/browser/Tab;
    :cond_6
    new-instance v0, Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 368
    .restart local v0       #t:Lcom/android/browser/Tab;
    if-eqz v12, :cond_7

    .line 369
    invoke-virtual {v0, v12}, Lcom/android/browser/Tab;->setSavedState(Landroid/os/Bundle;)V

    .line 372
    const-string v1, "appid"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 374
    :cond_7
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 377
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 383
    .end local v0           #t:Lcom/android/browser/Tab;
    .end local v12           #state:Landroid/os/Bundle;
    :cond_8
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 385
    .local v6, b:Landroid/os/Bundle;
    invoke-virtual {p0, v7}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 386
    .restart local v0       #t:Lcom/android/browser/Tab;
    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    .line 387
    const-string v1, "parentTab"

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 388
    .local v11, parentIndex:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 389
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v10

    .line 390
    .local v10, parent:Lcom/android/browser/Tab;
    if-eqz v10, :cond_9

    .line 391
    invoke-virtual {v10, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 383
    .end local v10           #parent:Lcom/android/browser/Tab;
    .end local v11           #parentIndex:Ljava/lang/Integer;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    .line 278
    .local v2, numTabs:I
    const-string v4, "numTabs"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 280
    .local v1, index:I
    const-string v4, "currentTab"

    if-ltz v1, :cond_1

    if-ge v1, v2, :cond_1

    move v5, v1

    :goto_0
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 283
    .local v3, t:Lcom/android/browser/Tab;
    invoke-virtual {v3}, Lcom/android/browser/Tab;->saveState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getSavedState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    .end local v0           #i:I
    .end local v3           #t:Lcom/android/browser/Tab;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 287
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method setCurrentTab(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "newTab"

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;Z)Z

    move-result v0

    return v0
.end method

.method stopAllLoading()V
    .locals 5

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 498
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 500
    .local v3, t:Lcom/android/browser/Tab;
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 501
    .local v4, webview:Landroid/webkit/WebView;
    if-eqz v4, :cond_0

    .line 502
    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 504
    :cond_0
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 505
    .local v2, subview:Landroid/webkit/WebView;
    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v2           #subview:Landroid/webkit/WebView;
    .end local v3           #t:Lcom/android/browser/Tab;
    .end local v4           #webview:Landroid/webkit/WebView;
    :cond_2
    return-void
.end method
