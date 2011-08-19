.class public Lcom/newspaperdirect/pressreader/android/SharingDialog;
.super Landroid/app/Dialog;
.source "SharingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;
    }
.end annotation


# static fields
.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final MARGIN:I = 0x4

.field static final MAX_DIMENSIONS:[I = null

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->MAX_DIMENSIONS:[I

    .line 30
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0xcct 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mUrl:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mListener:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/SharingDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;-><init>(Lcom/newspaperdirect/pressreader/android/SharingDialog;Lcom/newspaperdirect/pressreader/android/SharingDialog$FbWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/SharingDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x32

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 54
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 55
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mContent:Landroid/widget/LinearLayout;

    .line 58
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->requestWindowFeature(I)Z

    .line 60
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->setUpWebView()V

    .line 61
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 62
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 63
    .local v2, scale:F
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 65
    .local v0, dimensions:[I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    sget-object v4, Lcom/newspaperdirect/pressreader/android/SharingDialog;->MAX_DIMENSIONS:[I

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v7

    :goto_0
    aget v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v9

    aput v3, v0, v7

    .line 66
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    sget-object v4, Lcom/newspaperdirect/pressreader/android/SharingDialog;->MAX_DIMENSIONS:[I

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_1
    aget v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v9

    aput v3, v0, v6

    .line 67
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SharingDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    aget v5, v0, v7

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 69
    aget v6, v0, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/SharingDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void

    :cond_0
    move v5, v6

    .line 65
    goto :goto_0

    :cond_1
    move v5, v7

    .line 66
    goto :goto_1
.end method
