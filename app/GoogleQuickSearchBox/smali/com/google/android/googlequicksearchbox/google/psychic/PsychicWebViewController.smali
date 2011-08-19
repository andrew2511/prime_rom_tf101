.class public Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;
.super Ljava/lang/Object;
.source "PsychicWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$4;,
        Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;,
        Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;
    }
.end annotation


# static fields
.field private static final EMPTY_RESPONSE:[B


# instance fields
.field private final mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

.field private mAppSearchData:Landroid/os/Bundle;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mInjectedQuery:Ljava/lang/String;

.field private mInteractionListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

.field private mIsPsychicPage:Z

.field private mLastStateSwitchAt:J

.field private final mLoadController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;

.field private final mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

.field private final mOriginalQueries:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsychicPathPattern:Ljava/util/regex/Pattern;

.field private mPsychicUrl:Landroid/net/Uri;

.field private mSafeQuery:Ljava/lang/String;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

.field private final mUiThread:Landroid/os/Handler;

.field private final mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->EMPTY_RESPONSE:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Ljava/util/regex/Pattern;Landroid/os/Bundle;Lcom/google/android/googlequicksearchbox/google/LocationHelper;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;)V
    .locals 2
    .parameter "webView"
    .parameter "adapter"
    .parameter "settings"
    .parameter "config"
    .parameter "uiThread"
    .parameter "searchUrlHelper"
    .parameter "psychicPathPattern"
    .parameter "appSearchData"
    .parameter "locationHelper"
    .parameter "loadController"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    .line 201
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    .line 202
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 203
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mUiThread:Landroid/os/Handler;

    .line 204
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 205
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mOriginalQueries:Landroid/support/v4/util/LruCache;

    .line 206
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 207
    iput-object p10, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLoadController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;

    .line 209
    iput-object p8, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAppSearchData:Landroid/os/Bundle;

    .line 210
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getPsychicBaseUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    .line 211
    iput-object p7, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicPathPattern:Ljava/util/regex/Pattern;

    .line 213
    iput-object p9, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    .line 215
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 217
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->initWebView()V

    .line 218
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mInteractionListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebViewInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->doUpdateVisibleState()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->isPsychicUrl(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()[B
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->EMPTY_RESPONSE:[B

    return-object v0
.end method

.method private doUpdateVisibleState()V
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 641
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE_RESULTS:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLoadController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;->shouldShowPsychicWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->show()V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->hide()V

    goto :goto_0
.end method

.method private initWebView()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->setOnScrollListener(Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getQsbJavascriptInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private declared-synchronized isPsychicUrl(Landroid/net/Uri;)Z
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 358
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    .line 363
    :goto_0
    monitor-exit p0

    return v1

    .line 362
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicPathPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 363
    .local v0, pathMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 358
    .end local v0           #pathMatcher:Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLastStateSwitchAt:J

    .line 347
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    .line 348
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->onPsychicStateChange(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 349
    return-void
.end method

.method private updateWebView()V
    .locals 2

    .prologue
    .line 596
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;I)V

    .line 597
    return-void
.end method

.method private updateWebView(Ljava/lang/String;)V
    .locals 1
    .parameter "javaScript"

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;I)V

    .line 601
    return-void
.end method

.method private updateWebView(Ljava/lang/String;I)V
    .locals 4
    .parameter "javaScript"
    .parameter "delay"

    .prologue
    .line 604
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V

    .line 609
    .local v0, update:Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 610
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mUiThread:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mUiThread:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private declared-synchronized updateWebViewInternal(Ljava/lang/String;)V
    .locals 3
    .parameter "javaScript"

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    if-eqz v0, :cond_1

    .line 624
    if-eqz p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->loadUrl(Ljava/lang/String;)V

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->doUpdateVisibleState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_1
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method considerLoadingPsychicPage()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->loadPsychicPage()V

    .line 287
    :cond_0
    return-void
.end method

.method getCurrentSearchDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocationHeader()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v4

    .line 313
    :goto_0
    return-object v2

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLocationHelper:Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v1

    .line 310
    .local v1, location:Landroid/location/Location;
    if-nez v1, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 311
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "X-Geo"

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 313
    goto :goto_0
.end method

.method public declared-synchronized isPsychicActive()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 649
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    if-eqz v0, :cond_0

    .line 650
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$4;->$SwitchMap$com$google$android$googlequicksearchbox$google$psychic$PsychicWebViewController$State:[I

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 658
    :goto_0
    monitor-exit p0

    return v0

    .line 653
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 658
    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method loadPsychicPage()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLoadController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;->shouldLoadPsychicPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->getLocationHeader()Ljava/util/Map;

    move-result-object v0

    .line 296
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->LOADING_PSYCHIC_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 297
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 301
    .end local v0           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method declared-synchronized psychicApiAvailable()V
    .locals 2

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->WAIT_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    if-ne v0, v1, :cond_0

    .line 490
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized psychicApiUnavailable()V
    .locals 6

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    if-eqz v2, :cond_0

    .line 498
    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$4;->$SwitchMap$com$google$android$googlequicksearchbox$google$psychic$PsychicWebViewController$State:[I

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 500
    :pswitch_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 501
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mLastStateSwitchAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 502
    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 503
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 506
    .restart local v0       #now:J
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Config;->getInitPsychicJavascript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;I)V

    goto :goto_0

    .line 512
    .end local v0           #now:J
    :pswitch_2
    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 513
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized queryInjected(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    if-eqz v1, :cond_1

    .line 525
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->javascriptEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, escapedQuery:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mOriginalQueries:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mInjectedQuery:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mInjectedQuery:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 529
    const-string v1, "QSB.PsychicWebviewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in mOriginalQueries."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v0           #escapedQuery:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized reset()V
    .locals 3

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getPsychicBaseUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    .line 335
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 336
    .local v0, manager:Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 337
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->clearHistory()V

    .line 338
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->clearFormData()V

    .line 339
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->clearCache(Z)V

    .line 340
    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->NO_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 334
    .end local v0           #manager:Landroid/webkit/CookieManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "cookieName"
    .parameter "cookie"

    .prologue
    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 320
    .local v1, manager:Landroid/webkit/CookieManager;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mPsychicUrl:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, cookieUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0           #cookieUrl:Ljava/lang/String;
    .end local v1           #manager:Landroid/webkit/CookieManager;
    :cond_0
    return-void
.end method

.method public setInteractionListener(Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mInteractionListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    .line 225
    return-void
.end method

.method declared-synchronized setQuery(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->javascriptEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mOriginalQueries:Landroid/support/v4/util/LruCache;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$4;->$SwitchMap$com$google$android$googlequicksearchbox$google$psychic$PsychicWebViewController$State:[I

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicQueryJavascript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, javaScript:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    .end local v0           #javaScript:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 240
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->loadPsychicPage()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setSuggestions(Ljava/lang/String;)V
    .locals 7
    .parameter "suggestionsJson"

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 553
    .local v2, suggestions:Lorg/json/JSONObject;
    monitor-enter p0

    .line 554
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mIsPsychicPage:Z

    if-nez v4, :cond_0

    .line 556
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setSuggestError()V

    .line 557
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :goto_0
    return-void

    .line 564
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 565
    .end local v2           #suggestions:Lorg/json/JSONObject;
    .local v3, suggestions:Lorg/json/JSONObject;
    :try_start_2
    const-string v4, "query"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 575
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    sget-object v4, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 582
    :goto_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView()V

    .line 583
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 585
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mInjectedQuery:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 586
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mInjectedQuery:Ljava/lang/String;

    invoke-virtual {v4, p0, v5, v1, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setSuggestResult(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    move-object v2, v3

    .line 592
    .end local v3           #suggestions:Lorg/json/JSONObject;
    .restart local v2       #suggestions:Lorg/json/JSONObject;
    goto :goto_0

    .line 566
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 567
    .local v0, e:Lorg/json/JSONException;
    :goto_3
    :try_start_4
    const-string v4, "QSB.PsychicWebviewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing JSON response from psychic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v4, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 571
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setSuggestError()V

    .line 572
    monitor-exit p0

    goto :goto_0

    .line 583
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 580
    .end local v2           #suggestions:Lorg/json/JSONObject;
    .restart local v3       #suggestions:Lorg/json/JSONObject;
    :cond_1
    :try_start_5
    sget-object v4, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->PSYCHIC_ACTIVE_RESULTS:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setState(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 583
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #suggestions:Lorg/json/JSONObject;
    .restart local v2       #suggestions:Lorg/json/JSONObject;
    goto :goto_4

    .line 590
    .end local v2           #suggestions:Lorg/json/JSONObject;
    .restart local v3       #suggestions:Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mAdapter:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setSuggestError()V

    goto :goto_2

    .line 566
    :catch_1
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #suggestions:Lorg/json/JSONObject;
    .restart local v2       #suggestions:Lorg/json/JSONObject;
    goto :goto_3
.end method

.method declared-synchronized showResults(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->javascriptEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mOriginalQueries:Landroid/support/v4/util/LruCache;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$4;->$SwitchMap$com$google$android$googlequicksearchbox$google$psychic$PsychicWebViewController$State:[I

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mState:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 261
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mSafeQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicShowResultsJavascript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, javaScript:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0           #javaScript:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 258
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->loadPsychicPage()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateVisibleState()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$3;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$3;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    return-void
.end method
