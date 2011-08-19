.class Lcom/google/ads/GoogleAdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GoogleAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdWebViewClient"
.end annotation


# instance fields
.field private mStartedAdFetch:Z

.field private random:Ljava/util/Random;

.field final synthetic this$0:Lcom/google/ads/GoogleAdView;


# direct methods
.method constructor <init>(Lcom/google/ads/GoogleAdView;)V
    .locals 1
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 575
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->random:Ljava/util/Random;

    return-void
.end method

.method static synthetic access$100(Lcom/google/ads/GoogleAdView$AdWebViewClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->reset()V

    return-void
.end method

.method private getClickString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ai"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAdFetchFailure(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2
    .parameter "url"
    .parameter "uri"

    .prologue
    .line 664
    const-string v0, "http://__NO_MATCHING_AD__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "GoogleAdView"

    const-string v1, "DoubleClick could not fill the ad request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBlacklisted(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, uriString:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/google/ads/GoogleAdView;->access$500()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 646
    invoke-static {}, Lcom/google/ads/GoogleAdView;->access$500()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const/4 v2, 0x1

    .line 650
    :goto_1
    return v2

    .line 645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isRedirect(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 654
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, host:Ljava/lang/String;
    invoke-static {}, Lcom/google/ads/GoogleAdView;->access$600()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 656
    invoke-static {}, Lcom/google/ads/GoogleAdView;->access$600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 660
    :goto_1
    return v2

    .line 655
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 660
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private patchDoubleClickBug()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "javascript: document.body.style.margin = 0;"

    .line 699
    .local v0, patchBodyStyle:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v1}, Lcom/google/ads/GoogleAdView;->access$700(Lcom/google/ads/GoogleAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    .line 686
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->patchDoubleClickBug()V

    .line 594
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 596
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    .line 598
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    .line 599
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/LatencyTracker;->onAdFetchFinished()V

    .line 600
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/AdViewListener;->onFinishFetchAd()V

    .line 604
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 579
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 581
    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    .line 583
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/LatencyTracker;->onAdFetchStart()V

    .line 584
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/AdViewListener;->onStartFetchAd()V

    .line 588
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 608
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 613
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/ads/AdViewCommunicator;->isMessage(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v3}, Lcom/google/ads/GoogleAdView;->access$400(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewCommunicator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/ads/AdViewCommunicator;->testAndForwardMessage(Landroid/net/Uri;)Z

    move v3, v5

    .line 639
    :goto_0
    return v3

    .line 616
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->isBlacklisted(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    const/4 v3, 0x0

    goto :goto_0

    .line 618
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->isAdFetchFailure(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 619
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v3}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 620
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v3}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/ads/AdViewListener;->onAdFetchFailure()V

    :cond_2
    move v3, v5

    .line 622
    goto :goto_0

    .line 624
    :cond_3
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v3}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 625
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v3}, Lcom/google/ads/GoogleAdView;->access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/ads/AdViewListener;->onClickAd()V

    .line 627
    :cond_4
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v3}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/LatencyTracker;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->getClickString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/LatencyTracker;->onAdClickStart(Ljava/lang/String;)V

    .line 629
    invoke-static {v2}, Lcom/google/ads/AFMAUtil;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 632
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 633
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    :try_start_0
    iget-object v3, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v3}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v5

    .line 639
    goto :goto_0

    .line 636
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 637
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const-string v3, "GoogleAdView"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
