.class public Lcom/google/ads/GoogleAdView;
.super Landroid/widget/ViewSwitcher;
.source "GoogleAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/GoogleAdView$1;,
        Lcom/google/ads/GoogleAdView$RefreshRunnable;,
        Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;,
        Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;,
        Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;,
        Lcom/google/ads/GoogleAdView$AdWebViewClient;
    }
.end annotation


# static fields
.field private static final AD_FOOTER1:Ljava/lang/String; = ";\n</script>\n<script type=\'text/javascript\' src=\'"

.field private static final AD_FOOTER2:Ljava/lang/String; = "\'></script>\n</body>\n</html>"

.field private static final AD_HEADER:Ljava/lang/String; = "<html>\n<body marginwidth=\'0\' marginheight=\'0\'>\n<script type=\'text/javascript\'>\nwindow.google_afma_request = "

.field private static final DEBUG_WATERMARK_FILE:Ljava/lang/String; = "test_ad.png"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf8"

.field private static final DEFAULT_HEIGHT:I = 0x32

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final DEFAULT_WIDTH:I = 0x140

.field private static final DOUBLECLICK_AD_FETCH_FAILURE:Ljava/lang/String; = "http://__NO_MATCHING_AD__"

.field private static final ENABLE_LOCAL_URL_CAPTURE:Z = true

.field private static final ENABLE_REDIRECT_OPTIMIZATION:Z = false

.field private static final LOCAL_URLS:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "GoogleAdView"

.field public static final MINIMUM_AUTO_REFRESH_SECONDS:I = 0xb4

.field private static final PARAM_AUTO_REFRESH:Ljava/lang/String; = "ar"

.field private static final PARAM_CLICK_LATENCY:Ljava/lang/String; = "pcl"

.field private static final PARAM_CLICK_STRING:Ljava/lang/String; = "ai"

.field private static final PARAM_LATENCY:Ljava/lang/String; = "prl"

.field private static final PARAM_LOCATION:Ljava/lang/String; = "uule"

.field private static final PARAM_PRIOR_CLICK_STRING:Ljava/lang/String; = "pai"

.field private static final PARAM_SPACING_BOTTOM:Ljava/lang/String; = "bsp"

.field private static final PARAM_SPACING_LEFT:Ljava/lang/String; = "lsp"

.field private static final PARAM_SPACING_RIGHT:Ljava/lang/String; = "rsp"

.field private static final PARAM_SPACING_TOP:Ljava/lang/String; = "tsp"

.field private static final PARENT_STATE:Ljava/lang/String; = "google_ad_view_parent_state"

.field private static final PROGRESS_BAR_INDEX:I = 0x0

.field private static final REDIRECT_DOMAINS:[Ljava/lang/String; = null

.field private static final WEBVIEW_INDEX:I = 0x1

.field static final WINDOW_EXPAND_DELAY:I = 0x96

.field static final WINDOW_RETRACT_DELAY:I = 0x190


# instance fields
.field private mAdHeight:I

.field private mAdViewHolder:Landroid/widget/FrameLayout;

.field private mAdViewListener:Lcom/google/ads/AdViewListener;

.field private mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

.field private mAdWidth:I

.field private mAutoRefreshSecs:I

.field private mCommunicator:Lcom/google/ads/AdViewCommunicator;

.field private mDebugDrawable:Landroid/graphics/drawable/Drawable;

.field private mDebugMode:Z

.field private mExpanded:Z

.field private mInstalledApplications:Lcom/google/ads/InstalledApplications;

.field private mLastAdSpec:Lcom/google/ads/AdSpec;

.field private mLatencyTracker:Lcom/google/ads/LatencyTracker;

.field private mLocationTracker:Lcom/google/ads/LocationTracker;

.field private mOverlay:Lcom/google/ads/GoogleAdOverlay;

.field private mPlaceHolder:Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

.field private mProgressBarLayout:Landroid/widget/LinearLayout;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mShowAdsDeferred:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "googleads.g.doubleclick.net"

    aput-object v1, v0, v2

    const-string v1, "googleadservices.com"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ads/GoogleAdView;->REDIRECT_DOMAINS:[Ljava/lang/String;

    .line 102
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "about:blank"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/ads/GoogleAdView;->LOCAL_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/ads/GoogleAdView;->init(Landroid/content/Context;Landroid/webkit/WebView;II)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/ads/GoogleAdView;->init(Landroid/content/Context;Landroid/webkit/WebView;II)V

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 165
    const/16 v0, 0x140

    const/16 v1, 0x32

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/GoogleAdView;->init(Landroid/content/Context;Landroid/webkit/WebView;II)V

    .line 166
    return-void
.end method

.method static synthetic access$1000(Lcom/google/ads/GoogleAdView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/ads/GoogleAdView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/GoogleAdOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mLastAdSpec:Lcom/google/ads/AdSpec;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/ads/GoogleAdView;Lcom/google/ads/AdSpec;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/ads/GoogleAdView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/LatencyTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewCommunicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/ads/GoogleAdView;->LOCAL_URLS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/ads/GoogleAdView;->REDIRECT_DOMAINS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/ads/GoogleAdView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getDebugDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 544
    iget-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "test_ad.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 554
    .local v0, debugBitmap:Landroid/graphics/Bitmap;
    :try_start_1
    const-class v2, Landroid/graphics/Bitmap;

    const-string v3, "setDensity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    .end local v0           #debugBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 558
    .restart local v0       #debugBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 560
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 562
    .end local v0           #debugBitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 564
    .local v1, e:Ljava/io/IOException;
    const-string v2, "GoogleAdView"

    const-string v3, "Error loading debug watermark"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/webkit/WebView;II)V
    .locals 10
    .parameter "context"
    .parameter "webView"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 169
    new-instance v3, Lcom/google/ads/InstalledApplications;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/ads/InstalledApplications;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mInstalledApplications:Lcom/google/ads/InstalledApplications;

    .line 173
    new-instance v0, Landroid/widget/ProgressBar;

    const v3, 0x1010079

    invoke-direct {v0, p1, v9, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    .local v0, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 175
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mProgressBarLayout:Landroid/widget/LinearLayout;

    .line 176
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mProgressBarLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mProgressBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mProgressBarLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, p3}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, p4}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/GoogleAdView;->addView(Landroid/view/View;II)V

    .line 182
    new-instance v3, Lcom/google/ads/AdViewCommunicator;

    invoke-direct {v3, p0}, Lcom/google/ads/AdViewCommunicator;-><init>(Lcom/google/ads/GoogleAdView;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    .line 183
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->registerAdResponses()V

    .line 186
    iput-object p2, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    .line 187
    new-instance v3, Lcom/google/ads/GoogleAdView$AdWebViewClient;

    invoke-direct {v3, p0}, Lcom/google/ads/GoogleAdView$AdWebViewClient;-><init>(Lcom/google/ads/GoogleAdView;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

    .line 188
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 189
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 190
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    const/16 v4, 0x64

    invoke-static {p1, v4}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 193
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    .line 194
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    invoke-static {p1, p3}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, p4}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/ads/GoogleAdView;->addView(Landroid/view/View;II)V

    .line 201
    new-instance v3, Lcom/google/ads/GoogleAdOverlay;

    invoke-direct {v3, p1, p0, p2}, Lcom/google/ads/GoogleAdOverlay;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/webkit/WebView;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    .line 204
    new-instance v3, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

    invoke-direct {v3, p0, p1}, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;-><init>(Lcom/google/ads/GoogleAdView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mPlaceHolder:Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

    .line 207
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 208
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 211
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 212
    .local v2, viewParams:Landroid/view/ViewGroup$LayoutParams;
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 217
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 218
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 219
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 220
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 223
    new-instance v3, Lcom/google/ads/LatencyTracker;

    invoke-direct {v3, p1}, Lcom/google/ads/LatencyTracker;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    .line 226
    new-instance v3, Lcom/google/ads/LocationTracker;

    invoke-direct {v3, p1}, Lcom/google/ads/LocationTracker;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mLocationTracker:Lcom/google/ads/LocationTracker;

    .line 229
    iput-boolean v6, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    .line 232
    const v3, 0x10a0001

    invoke-virtual {p0, p1, v3}, Lcom/google/ads/GoogleAdView;->setOutAnimation(Landroid/content/Context;I)V

    .line 233
    const/high16 v3, 0x10a

    invoke-virtual {p0, p1, v3}, Lcom/google/ads/GoogleAdView;->setInAnimation(Landroid/content/Context;I)V

    .line 236
    iput-boolean v6, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    .line 239
    iput v7, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    .line 240
    new-instance v3, Lcom/google/ads/GoogleAdView$RefreshRunnable;

    invoke-direct {v3, p0, v9}, Lcom/google/ads/GoogleAdView$RefreshRunnable;-><init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V

    iput-object v3, p0, Lcom/google/ads/GoogleAdView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 241
    return-void
.end method

.method private registerAdResponses()V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    const-string v1, "/loadAdURL"

    new-instance v2, Lcom/google/ads/LoadAdResponse;

    invoke-direct {v2}, Lcom/google/ads/LoadAdResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/AdViewCommunicator;->registerAdResponse(Ljava/lang/String;Lcom/google/ads/AdResponse;)Lcom/google/ads/AdResponse;

    .line 247
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    const-string v1, "/resize"

    new-instance v2, Lcom/google/ads/ResizeResponse;

    invoke-direct {v2}, Lcom/google/ads/ResizeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/AdViewCommunicator;->registerAdResponse(Ljava/lang/String;Lcom/google/ads/AdResponse;)Lcom/google/ads/AdResponse;

    .line 249
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    const-string v1, "/requestApplications"

    new-instance v2, Lcom/google/ads/InstalledAppsResponse;

    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mInstalledApplications:Lcom/google/ads/InstalledApplications;

    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    invoke-direct {v2, v3, v4}, Lcom/google/ads/InstalledAppsResponse;-><init>(Lcom/google/ads/InstalledApplications;Lcom/google/ads/AdViewCommunicator;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/AdViewCommunicator;->registerAdResponse(Ljava/lang/String;Lcom/google/ads/AdResponse;)Lcom/google/ads/AdResponse;

    .line 251
    return-void
.end method

.method private saveWebViewPicture()V
    .locals 4

    .prologue
    .line 711
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 712
    .local v0, webPicture:Landroid/graphics/Picture;
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mPlaceHolder:Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

    iget-object v2, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->setSize(II)V

    .line 713
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mPlaceHolder:Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->setPicture(Landroid/graphics/Picture;)V

    .line 714
    return-void
.end method

.method private scheduleAutoRefresh()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 446
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mLastAdSpec:Lcom/google/ads/AdSpec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/GoogleAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    :cond_0
    return-void
.end method

.method private showAds(Lcom/google/ads/AdSpec;Z)V
    .locals 1
    .parameter "adSpec"
    .parameter "isAutoRefresh"

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;ZZ)V

    .line 315
    return-void
.end method


# virtual methods
.method closeAdImmediately()V
    .locals 2

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 789
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    invoke-virtual {v0}, Lcom/google/ads/GoogleAdOverlay;->removeAllViewsAndDismiss()V

    .line 791
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 793
    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAdWidth:I

    iget v1, p0, Lcom/google/ads/GoogleAdView;->mAdHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/GoogleAdView;->resize(II)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    goto :goto_0
.end method

.method expandAd(IIII)V
    .locals 9
    .parameter "top"
    .parameter "bottom"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v7, 0x1

    .line 717
    iget-boolean v6, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    if-eqz v6, :cond_0

    .line 753
    :goto_0
    return-void

    .line 720
    :cond_0
    iput-boolean v7, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    .line 722
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 724
    .local v0, context:Landroid/content/Context;
    iget v4, p0, Lcom/google/ads/GoogleAdView;->mAdWidth:I

    .line 725
    .local v4, overlayWidth:I
    iget v1, p0, Lcom/google/ads/GoogleAdView;->mAdHeight:I

    .line 727
    .local v1, overlayHeight:I
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->saveWebViewPicture()V

    .line 729
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 730
    .local v5, viewLocation:[I
    iget-object v6, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 731
    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-static {v0, v6}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v2

    .line 732
    .local v2, overlayLeft:I
    aget v6, v5, v7

    invoke-static {v0, v6}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v3

    .line 734
    .local v3, overlayTop:I
    add-int v6, p3, p4

    add-int/2addr v4, v6

    .line 735
    add-int v6, p1, p2

    add-int/2addr v1, v6

    .line 736
    sub-int/2addr v2, p3

    .line 737
    sub-int/2addr v3, p1

    .line 739
    iget-object v6, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    invoke-virtual {v6, v4, v1}, Lcom/google/ads/GoogleAdOverlay;->resize(II)V

    .line 743
    iget-object v6, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 744
    iget-object v6, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/google/ads/GoogleAdView;->mPlaceHolder:Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 746
    iget-object v6, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 748
    iget-object v6, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    invoke-static {v0, v2}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v3}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/ads/GoogleAdOverlay;->addAndShowWebView(II)V

    .line 752
    new-instance v6, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;-><init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V

    const-wide/16 v7, 0x96

    invoke-virtual {p0, v6, v7, v8}, Lcom/google/ads/GoogleAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method generateHtml(Lcom/google/ads/AdSpec;Z)Ljava/lang/String;
    .locals 14
    .parameter "adSpec"
    .parameter "isAutoRefresh"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {p1, v11}, Lcom/google/ads/AdSpec;->generateParameters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 478
    .local v5, parameters:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 481
    .local v2, context:Landroid/content/Context;
    const/4 v11, 0x2

    new-array v9, v11, [I

    .line 482
    .local v9, viewLocation:[I
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11, v9}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 483
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 484
    .local v10, windowDimensions:Landroid/graphics/Rect;
    invoke-virtual {p0, v10}, Lcom/google/ads/GoogleAdView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 486
    const/4 v11, 0x0

    aget v3, v9, v11

    .line 487
    .local v3, leftPadding:I
    const/4 v11, 0x1

    aget v8, v9, v11

    .line 488
    .local v8, topPadding:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v12, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v1, v11, v8

    .line 489
    .local v1, bottomPadding:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v12, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v6, v11, v3

    .line 491
    .local v6, rightPadding:I
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "tsp"

    invoke-static {v2, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "lsp"

    invoke-static {v2, v3}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "bsp"

    invoke-static {v2, v1}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "rsp"

    invoke-static {v2, v6}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    if-eqz p2, :cond_0

    .line 502
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "ar"

    iget v13, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mInstalledApplications:Lcom/google/ads/InstalledApplications;

    invoke-virtual {v11}, Lcom/google/ads/InstalledApplications;->getInstallationState()Ljava/util/List;

    move-result-object v7

    .line 510
    .local v7, state:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 512
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v11}, Lcom/google/ads/LatencyTracker;->hasAdFetchLatency()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 513
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "prl"

    iget-object v13, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v13}, Lcom/google/ads/LatencyTracker;->getAdFetchLatency()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_1
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v11}, Lcom/google/ads/LatencyTracker;->hasAdClickLatency()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 518
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "pcl"

    iget-object v13, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v13}, Lcom/google/ads/LatencyTracker;->getAdClickLatency()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_2
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v11}, Lcom/google/ads/LatencyTracker;->hasClickString()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 523
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "pai"

    iget-object v13, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v13}, Lcom/google/ads/LatencyTracker;->getClickString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_3
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v11}, Lcom/google/ads/LatencyTracker;->clear()V

    .line 530
    iget-object v11, p0, Lcom/google/ads/GoogleAdView;->mLocationTracker:Lcom/google/ads/LocationTracker;

    invoke-virtual {v11}, Lcom/google/ads/LocationTracker;->getLocationParam()Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, locationParam:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 532
    new-instance v11, Lcom/google/ads/AdSpec$Parameter;

    const-string v12, "uule"

    invoke-direct {v11, v12, v4}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ";\n</script>\n<script type=\'text/javascript\' src=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lcom/google/ads/AdSpec;->getAdUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'></script>\n</body>\n</html>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, adFooter:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "<html>\n<body marginwidth=\'0\' marginheight=\'0\'>\n<script type=\'text/javascript\'>\nwindow.google_afma_request = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/ads/AdUtil;->generateJSONParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method getAdHeight()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAdHeight:I

    return v0
.end method

.method public getAdViewListener()Lcom/google/ads/AdViewListener;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;

    return-object v0
.end method

.method getAdWidth()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAdWidth:I

    return v0
.end method

.method public getAutoRefreshSeconds()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    return v0
.end method

.method getCommunicator()Lcom/google/ads/AdViewCommunicator;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method isExpanded()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    return v0
.end method

.method loadAdFromUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->onWindowFocusChanged(Z)V

    .line 320
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->closeAdImmediately()V

    .line 890
    :cond_0
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    .line 891
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 430
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    .line 432
    .local v2, savedState:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v3, v2}, Lcom/google/ads/LatencyTracker;->restoreTransientState(Landroid/os/Bundle;)V

    .line 434
    const-string v3, "google_ad_view_parent_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 435
    .local v1, parentState:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 436
    invoke-super {p0, v1}, Landroid/widget/ViewSwitcher;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 438
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 416
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v1, savedState:Landroid/os/Bundle;
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 419
    .local v0, parentState:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 420
    const-string v2, "google_ad_view_parent_state"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v2, v1}, Lcom/google/ads/LatencyTracker;->saveTransientState(Landroid/os/Bundle;)V

    .line 424
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onWindowFocusChanged(Z)V

    .line 389
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mShowAdsDeferred:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mLastAdSpec:Lcom/google/ads/AdSpec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mLastAdSpec:Lcom/google/ads/AdSpec;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;Z)V

    .line 393
    :cond_0
    if-eqz p1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mLatencyTracker:Lcom/google/ads/LatencyTracker;

    invoke-virtual {v0}, Lcom/google/ads/LatencyTracker;->onWindowGetFocus()V

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->scheduleAutoRefresh()V

    .line 399
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    .line 378
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 379
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 380
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->access$100(Lcom/google/ads/GoogleAdView$AdWebViewClient;)V

    .line 381
    return-void
.end method

.method resize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 458
    iput p1, p0, Lcom/google/ads/GoogleAdView;->mAdWidth:I

    .line 459
    iput p2, p0, Lcom/google/ads/GoogleAdView;->mAdHeight:I

    .line 462
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getChildCount()I

    move-result v1

    .line 463
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 464
    invoke-virtual {p0, v2}, Lcom/google/ads/GoogleAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 466
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 467
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v0           #child:Landroid/view/View;
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->requestLayout()V

    .line 472
    return-void
.end method

.method retractAd()V
    .locals 3

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    if-nez v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->saveWebViewPicture()V

    .line 763
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 764
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    invoke-virtual {v0}, Lcom/google/ads/GoogleAdOverlay;->removeAllViews()V

    .line 766
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 767
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mOverlay:Lcom/google/ads/GoogleAdOverlay;

    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mPlaceHolder:Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;

    invoke-virtual {v0, v1}, Lcom/google/ads/GoogleAdOverlay;->addView(Landroid/view/View;)V

    .line 769
    iget v0, p0, Lcom/google/ads/GoogleAdView;->mAdWidth:I

    iget v1, p0, Lcom/google/ads/GoogleAdView;->mAdHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/GoogleAdView;->resize(II)V

    .line 772
    new-instance v0, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/GoogleAdView$WebViewRetractRunnable;-><init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/GoogleAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAdViewListener(Lcom/google/ads/AdViewListener;)V
    .locals 0
    .parameter "adViewListener"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;

    .line 267
    return-void
.end method

.method public setAutoRefreshSeconds(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 285
    if-gtz p1, :cond_0

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    .line 298
    :goto_0
    return-void

    .line 290
    :cond_0
    const/16 v0, 0xb4

    if-ge p1, v0, :cond_1

    .line 292
    const/16 p1, 0xb4

    .line 294
    :cond_1
    iput p1, p0, Lcom/google/ads/GoogleAdView;->mAutoRefreshSecs:I

    .line 297
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->scheduleAutoRefresh()V

    goto :goto_0
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .parameter "child"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 406
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->getDebugDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showAds(Lcom/google/ads/AdSpec;)V
    .locals 1
    .parameter "adSpec"

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;Z)V

    .line 311
    return-void
.end method

.method showAds(Lcom/google/ads/AdSpec;ZZ)V
    .locals 4
    .parameter "adSpec"
    .parameter "isAutoRefresh"
    .parameter "hasWindowFocus"

    .prologue
    .line 325
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mShowAdsDeferred:Z

    .line 326
    iput-object p1, p0, Lcom/google/ads/GoogleAdView;->mLastAdSpec:Lcom/google/ads/AdSpec;

    .line 327
    if-nez p3, :cond_0

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mShowAdsDeferred:Z

    .line 353
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->closeAdImmediately()V

    .line 338
    :cond_1
    invoke-interface {p1}, Lcom/google/ads/AdSpec;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/ads/AdSpec;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/GoogleAdView;->resize(II)V

    .line 340
    invoke-interface {p1}, Lcom/google/ads/AdSpec;->getDebugMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/GoogleAdView;->generateHtml(Lcom/google/ads/AdSpec;Z)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, htmlString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    if-eqz v1, :cond_2

    .line 343
    const-string v1, "GoogleAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->getDebugDrawable()Landroid/graphics/drawable/Drawable;

    .line 345
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 349
    :goto_1
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "utf8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->scheduleAutoRefresh()V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1
.end method
