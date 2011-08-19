.class public Lcom/facebook/android/FbDialog;
.super Landroid/app/Dialog;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/FbDialog$FbWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_LANDSCAPE:[F = null

.field static final DIMENSIONS_PORTRAIT:[F = null

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/facebook/android/Facebook$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 44
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_LANDSCAPE:[F

    .line 45
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_PORTRAIT:[F

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    sput-object v0, Lcom/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xe6t 0x43t
        0x0t 0x0t 0x82t 0x43t
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x8ct 0x43t
        0x0t 0x0t 0xd2t 0x43t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p2, p0, Lcom/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/android/FbDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/android/FbDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/android/FbDialog;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    const/high16 v2, 0x7f02

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const v2, -0x927b4c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 97
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 99
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    .line 106
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/facebook/android/FbDialog$FbWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/android/FbDialog$FbWebViewClient;-><init>(Lcom/facebook/android/FbDialog;Lcom/facebook/android/FbDialog$FbWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 71
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 72
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v4, "Loading..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    .line 75
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    invoke-direct {p0}, Lcom/facebook/android/FbDialog;->setUpTitle()V

    .line 77
    invoke-direct {p0}, Lcom/facebook/android/FbDialog;->setUpWebView()V

    .line 78
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 79
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 81
    .local v2, scale:F
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 82
    sget-object v3, Lcom/facebook/android/FbDialog;->DIMENSIONS_PORTRAIT:[F

    move-object v0, v3

    .line 83
    .local v0, dimensions:[F
    :goto_0
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    const/4 v5, 0x0

    aget v5, v0, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 85
    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {p0, v3, v4}, Lcom/facebook/android/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void

    .line 82
    .end local v0           #dimensions:[F
    :cond_0
    sget-object v3, Lcom/facebook/android/FbDialog;->DIMENSIONS_LANDSCAPE:[F

    move-object v0, v3

    goto :goto_0
.end method
