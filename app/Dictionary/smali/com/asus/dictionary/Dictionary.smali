.class public Lcom/asus/dictionary/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;,
        Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;,
        Lcom/asus/dictionary/Dictionary$XLoadLibrary;,
        Lcom/asus/dictionary/Dictionary$DictionaryHandler;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "ABQIAAAAqmplnwgIhD9wuWDUdbWPIhTRn9JWUNIBI_hbDrK3k3htAr8pkBSfQqG-s3lIPnSa05xCGVZQogpMgQ"

.field public static DBG:Z = false

.field private static final DIC_HEIGHT:I = 0x190

.field private static final DIC_MARGIN:I = 0x5

.field private static final DIC_WIDTH:I = 0x190

.field private static final DISPLAY_OUTCOME:I = 0x1

.field private static final EPUB:I = 0x1

.field private static final LOOKUP_TIMEOUT_LONG:I = 0x1b58

.field private static final LOOKUP_TIMEOUT_SHORT:I = 0x6d6

.field private static final LOOKUP_WORD:I = 0x0

.field public static final STR_BOXES:Ljava/lang/String; = "boxes"

.field public static final STR_LANGUAGE:Ljava/lang/String; = "language"

.field private static final STR_OUTCOME:Ljava/lang/String; = "outcome"

.field private static final STR_URL:Ljava/lang/String; = "url"

.field public static final STR_WORD:Ljava/lang/String; = "word"

.field public static final TAG:Ljava/lang/String; = "Dictionary"

.field public static final mDictManager:Lcom/xcome/dictionary/XDictManager;

.field private static final mSuffixes:[Ljava/lang/String;


# instance fields
.field private errFilter:Lorg/htmlparser/NodeFilter;

.field private mClientCallbackHandler:Landroid/os/Handler;

.field private mClientFailedCode:I

.field private mClientFinishCode:I

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDicLayout:Landroid/widget/RelativeLayout;

.field private mDicView:Landroid/webkit/WebView;

.field private mDictionaryHandler:Landroid/os/Handler;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFindExplanation:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInnerDicLayout:Landroid/widget/RelativeLayout;

.field private mIsLandscape:Z

.field private mLangInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutStyle:I

.field private mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLookupThread:Landroid/os/HandlerThread;

.field private mLookupTimeout:J

.field private mStyleSheetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/htmlparser/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private mTagToDisplay:Lorg/htmlparser/Tag;

.field private mUserLanguage:Ljava/lang/String;

.field private sectionSelectorVisitor:Lorg/htmlparser/visitors/NodeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    sput-boolean v2, Lcom/asus/dictionary/Dictionary;->DBG:Z

    .line 86
    invoke-static {}, Lcom/xcome/dictionary/XDictManager;->getDictManager()Lcom/xcome/dictionary/XDictManager;

    move-result-object v0

    sput-object v0, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ies"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ied"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dictionary/Dictionary;->mSuffixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 1
    .parameter "context"
    .parameter "dicLayout"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/asus/dictionary/Dictionary;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;I)V
    .locals 9
    .parameter "context"
    .parameter "dicLayout"
    .parameter "layoutSyle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    new-instance v5, Lcom/asus/dictionary/Dictionary$2;

    invoke-direct {v5, p0}, Lcom/asus/dictionary/Dictionary$2;-><init>(Lcom/asus/dictionary/Dictionary;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mHandler:Landroid/os/Handler;

    .line 1187
    new-instance v5, Lcom/asus/dictionary/Dictionary$3;

    invoke-direct {v5, p0}, Lcom/asus/dictionary/Dictionary$3;-><init>(Lcom/asus/dictionary/Dictionary;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->errFilter:Lorg/htmlparser/NodeFilter;

    .line 1202
    new-instance v5, Lcom/asus/dictionary/Dictionary$4;

    invoke-direct {v5, p0}, Lcom/asus/dictionary/Dictionary$4;-><init>(Lcom/asus/dictionary/Dictionary;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->sectionSelectorVisitor:Lorg/htmlparser/visitors/NodeVisitor;

    .line 130
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    .line 132
    iput p3, p0, Lcom/asus/dictionary/Dictionary;->mLayoutStyle:I

    .line 134
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    .local v4, userLocale:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    .line 136
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, userCountry:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    .line 142
    .end local v3           #userCountry:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    .line 143
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLangInstanceMap:Ljava/util/HashMap;

    .line 144
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    invoke-direct {p0}, Lcom/asus/dictionary/Dictionary;->dicFilePathSetting()V

    .line 146
    invoke-virtual {p0}, Lcom/asus/dictionary/Dictionary;->loadAllLibrary()V

    .line 147
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mStyleSheetList:Ljava/util/ArrayList;

    .line 150
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mConnManager:Landroid/net/ConnectivityManager;

    .line 152
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mInnerDicLayout:Landroid/widget/RelativeLayout;

    .line 154
    new-instance v5, Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    .line 155
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 156
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 157
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 158
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    new-instance v6, Lcom/asus/dictionary/Dictionary$1;

    invoke-direct {v6, p0}, Lcom/asus/dictionary/Dictionary$1;-><init>(Lcom/asus/dictionary/Dictionary;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 187
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mInnerDicLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/asus/dictionary/Dictionary;->mInnerDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "wordLookup"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLookupThread:Landroid/os/HandlerThread;

    .line 192
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLookupThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 193
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLookupThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 195
    .local v1, looper:Landroid/os/Looper;
    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 196
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 197
    .local v2, rotation:I
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/asus/dictionary/Dictionary;->mIsLandscape:Z

    .line 199
    new-instance v5, Lcom/asus/dictionary/Dictionary$DictionaryHandler;

    invoke-direct {v5, p0, v1}, Lcom/asus/dictionary/Dictionary$DictionaryHandler;-><init>(Lcom/asus/dictionary/Dictionary;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/asus/dictionary/Dictionary;->mDictionaryHandler:Landroid/os/Handler;

    .line 200
    return-void

    :cond_1
    move v5, v8

    .line 197
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asus/dictionary/Dictionary;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/dictionary/Dictionary;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/asus/dictionary/Dictionary;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/asus/dictionary/Dictionary;->mClientFinishCode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/asus/dictionary/Dictionary;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mStyleSheetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/asus/dictionary/Dictionary;Lorg/htmlparser/Tag;)Lorg/htmlparser/Tag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary;->mTagToDisplay:Lorg/htmlparser/Tag;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/asus/dictionary/Dictionary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/asus/dictionary/Dictionary;->mFindExplanation:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/asus/dictionary/Dictionary;->fetchData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/asus/dictionary/Dictionary;->languageIdentification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/asus/dictionary/Dictionary;->wordTenseTrimmer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/dictionary/Dictionary;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/asus/dictionary/Dictionary;->mLookupTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/asus/dictionary/Dictionary;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mLangInstanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/dictionary/Dictionary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/dictionary/Dictionary;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mClientCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asus/dictionary/Dictionary;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/asus/dictionary/Dictionary;->mClientFailedCode:I

    return v0
.end method

.method private dicFilePathSetting()V
    .locals 4

    .prologue
    .line 465
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, productName:Ljava/lang/String;
    const-string v1, "Dictionary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "productName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v1, "TW_epad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const-string v1, "Dictionary"

    const-string v2, "load TW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "enzh-tw"

    const-string v3, "/system/etc/dict/entc.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "zh-twen"

    const-string v3, "/system/etc/dict/tcen.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v1, "CN_epad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    const-string v1, "Dictionary"

    const-string v2, "load CN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "enzh-cn"

    const-string v3, "/system/etc/dict/ensc.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "zh-cnen"

    const-string v3, "/system/etc/dict/scen.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_1
    const-string v1, "JP_epad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    const-string v1, "Dictionary"

    const-string v2, "load JP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "enja"

    const-string v3, "/system/etc/dict/enja.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "jaen"

    const-string v3, "/system/etc/dict/jaen.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 489
    :cond_2
    const-string v1, "Dictionary"

    const-string v2, "load default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    const-string v2, "enen"

    const-string v3, "/system/etc/dict/enen.ifo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private dictionaryPos(Ljava/util/HashMap;Z)Landroid/graphics/Point;
    .locals 21
    .parameter
    .parameter "isLandscape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const/16 v18, 0x0

    .line 1184
    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v18

    .line 1135
    .restart local p1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v18, "x1"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 1136
    .local v10, x1:D
    const-string v18, "y1"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1137
    .local v14, y1:D
    const-string v18, "x2"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 1138
    .local v12, x2:D
    const-string v18, "y2"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1140
    .local v16, y2:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v9

    .line 1141
    .local v9, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    .line 1143
    .local v8, screenHeight:I
    const/16 v18, 0x190

    sub-int v18, v9, v18

    const/16 v19, 0x5

    sub-int v5, v18, v19

    .line 1144
    .local v5, maxAnchorX:I
    const/16 v18, 0x190

    sub-int v18, v8, v18

    const/16 v19, 0x5

    sub-int v6, v18, v19

    .line 1147
    .local v6, maxAnchorY:I
    const/16 v7, 0x32

    .line 1150
    .local v7, minAnchorY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/dictionary/Dictionary;->mLayoutStyle:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1152
    if-eqz p2, :cond_6

    .line 1155
    div-int/lit8 v18, v9, 0x2

    const/16 v19, 0x190

    sub-int v18, v18, v19

    div-int/lit8 v3, v18, 0x2

    .line 1156
    .local v3, anchorX:I
    div-int/lit8 v18, v9, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v10, v18

    if-gez v18, :cond_1

    div-int/lit8 v18, v9, 0x2

    add-int v3, v3, v18

    .line 1158
    :cond_1
    move-wide v0, v14

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_3

    move-wide v0, v14

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v4, v18

    .line 1159
    .local v4, anchorY:I
    :goto_1
    if-le v4, v7, :cond_4

    .line 1160
    :goto_2
    sget-boolean v18, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v18, :cond_2

    const-string v18, "Dictionary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "y1 ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " maxAnchorY="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " compare="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-wide v0, v14

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v6

    if-ge v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_3
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " anchorY="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_2
    :goto_4
    new-instance v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0

    .end local v4           #anchorY:I
    :cond_3
    move v4, v6

    .line 1158
    goto :goto_1

    .restart local v4       #anchorY:I
    :cond_4
    move v4, v7

    .line 1159
    goto :goto_2

    .line 1160
    :cond_5
    const/16 v20, 0x0

    goto :goto_3

    .line 1166
    .end local v3           #anchorX:I
    .end local v4           #anchorY:I
    :cond_6
    const/16 v18, 0x190

    sub-int v18, v9, v18

    div-int/lit8 v3, v18, 0x2

    .line 1167
    .restart local v3       #anchorX:I
    div-int/lit8 v18, v8, 0x2

    const/16 v19, 0x190

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v4, v18, 0x4b

    .line 1168
    .restart local v4       #anchorY:I
    div-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v14, v18

    if-gez v18, :cond_2

    div-int/lit8 v18, v8, 0x2

    add-int v18, v18, v4

    const/16 v19, 0x64

    sub-int v4, v18, v19

    goto :goto_4

    .line 1174
    .end local v3           #anchorX:I
    .end local v4           #anchorY:I
    :cond_7
    const/4 v3, 0x5

    .line 1175
    .restart local v3       #anchorX:I
    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-lez v18, :cond_8

    move-wide v0, v10

    double-to-int v0, v0

    move/from16 v18, v0

    add-int v3, v3, v18

    .line 1176
    :cond_8
    if-le v3, v5, :cond_9

    move v3, v5

    .line 1178
    :cond_9
    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v18, v18, v16

    cmpl-double v18, v14, v18

    if-lez v18, :cond_b

    move-wide v0, v14

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x190

    sub-int v18, v18, v19

    const/16 v19, 0x5

    sub-int v4, v18, v19

    .line 1180
    .restart local v4       #anchorY:I
    :goto_5
    if-ge v4, v7, :cond_a

    move v4, v7

    .line 1181
    :cond_a
    if-le v4, v6, :cond_2

    move v4, v6

    goto :goto_4

    .line 1179
    .end local v4           #anchorY:I
    :cond_b
    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v4, v18, 0x5

    .restart local v4       #anchorY:I
    goto :goto_5
.end method

.method private fetchData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 1353
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1355
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/htmlparser/Parser;

    invoke-direct {v1, p1}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v1, parser:Lorg/htmlparser/Parser;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/htmlparser/Parser;->parse(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/util/NodeList;->toHtml()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1360
    .end local v1           #parser:Lorg/htmlparser/Parser;
    :goto_0
    return-object v2

    .line 1357
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1358
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private followByNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "xcomeWord"

    .prologue
    const/4 v3, 0x0

    .line 803
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 804
    .local v1, spaceIndex:I
    if-gez v1, :cond_0

    move v2, v3

    .line 811
    :goto_0
    return v2

    .line 806
    :cond_0
    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    const/4 v2, 0x1

    goto :goto_0

    .line 807
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 808
    goto :goto_0
.end method

.method private getAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 572
    const-string v3, "xdict"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, assetsPath:Ljava/lang/String;
    const-string v3, "."

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 579
    .local v2, doubleDotIndex:I
    if-lez v2, :cond_0

    .line 580
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, afterSecondDot:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .end local v0           #afterSecondDot:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private languageIdentification(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "content"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v11, 0x0

    .line 432
    :goto_0
    return-object v11

    .line 395
    :cond_1
    const/4 v4, 0x0

    .line 398
    .local v4, language:Ljava/lang/String;
    :try_start_0
    const-string v11, "UTF-8"

    invoke-static {p1, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 400
    .local v10, utfContent:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v9, urlBuilder:Ljava/lang/StringBuilder;
    const-string v11, "https://ajax.googleapis.com/ajax/services/language/detect?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v11, "v=1.0&q="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v11, "!&key="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v11, "ABQIAAAAqmplnwgIhD9wuWDUdbWPIhTRn9JWUNIBI_hbDrK3k3htAr8pkBSfQqG-s3lIPnSa05xCGVZQogpMgQ"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v11, "&userip="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p0}, Lcom/asus/dictionary/Dictionary;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    new-instance v8, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 410
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 411
    .local v1, connection:Ljava/net/URLConnection;
    const-string v11, "Referer"

    const-string v12, "http://com.asus.dictionary"

    invoke-virtual {v1, v11, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 416
    .local v6, reader:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 417
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 428
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #connection:Ljava/net/URLConnection;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlBuilder:Ljava/lang/StringBuilder;
    .end local v10           #utfContent:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 429
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    move-object v11, v4

    .line 432
    goto :goto_0

    .line 420
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #connection:Ljava/net/URLConnection;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlBuilder:Ljava/lang/StringBuilder;
    .restart local v10       #utfContent:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 423
    .local v3, json:Lorg/json/JSONObject;
    const-string v11, "responseData"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 424
    .local v7, responseData:Lorg/json/JSONObject;
    const-string v11, "language"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    const-string v11, "Dictionary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Language detection result="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private parseAdjustment(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "definition"

    .prologue
    .line 916
    const-string v1, "]</font>\\n<br /><br />"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 917
    .local v0, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "]</font>\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 919
    return-object p1
.end method

.method private parseNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "definition"

    .prologue
    .line 887
    const-string v5, "\\s\\d+\\s"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 889
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<br />@@@"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 890
    const-string v5, "  "

    const-string v6, "<br />"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 892
    const/4 v1, 0x1

    .line 893
    .local v1, i:I
    :goto_0
    const-string v5, "@@@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 894
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 895
    .local v0, html:Ljava/lang/StringBuffer;
    const-string v5, "<b><i>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 897
    const-string v5, "</b></i>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    const-string v5, ". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    const-string v5, "@@@"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v1, v2

    .line 900
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 902
    .end local v0           #html:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 908
    .local v4, ret:Ljava/lang/StringBuffer;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "definition"
    .parameter "tag"
    .parameter "startTag"
    .parameter "endTag"

    .prologue
    .line 882
    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "definition"
    .parameter "tag"
    .parameter "startTag"
    .parameter "endTag"

    .prologue
    .line 849
    const/4 v2, 0x0

    .line 850
    .local v2, start:I
    const/4 v0, 0x0

    .line 851
    .local v0, end:I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 852
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 853
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 854
    .local v1, html:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 856
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 857
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_0

    .line 859
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 862
    goto :goto_0

    .line 863
    .end local v1           #html:Ljava/lang/StringBuffer;
    :cond_1
    return-object p1
.end method

.method private wordTenseTrimmer(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "word"

    .prologue
    .line 816
    sget-object v0, Lcom/asus/dictionary/Dictionary;->mSuffixes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 818
    .local v4, suffix:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 820
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, ret:Ljava/lang/String;
    const-string v5, "ies"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ied"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    :cond_0
    const-string v5, "y"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    move-object v5, v3

    .line 828
    .end local v3           #ret:Ljava/lang/String;
    .end local v4           #suffix:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 816
    .restart local v4       #suffix:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #suffix:Ljava/lang/String;
    :cond_3
    move-object v5, p1

    .line 828
    goto :goto_1
.end method


# virtual methods
.method public cancelLookupAndInvisible()V
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 457
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v0, lookupParameter:Landroid/os/Bundle;
    const-string v1, "word"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mDictionaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 461
    sget-boolean v1, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Dictionary"

    const-string v2, "cancelLookupAndInvisible"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mLookupThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dictionary/Dictionary;->mLookupThread:Landroid/os/HandlerThread;

    .line 1403
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1404
    return-void
.end method

.method public dicUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "wordLookup"
    .parameter "inputLanguage"

    .prologue
    .line 1036
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1037
    .local v2, utfWordLookup:Ljava/lang/String;
    move-object p1, v2

    .line 1042
    .end local v2           #utfWordLookup:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1044
    .local v0, dicUrl:Ljava/lang/StringBuffer;
    const-string v3, "http://www.google.com/dictionary?langpair="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    const-string v3, "&q="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    const-string v3, "&hl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1048
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1038
    .end local v0           #dicUrl:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1039
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Dictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public displayOutcome(Landroid/os/Bundle;)V
    .locals 12
    .parameter "lookupParameter"

    .prologue
    .line 1094
    const-string v0, "boxes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1095
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "outcome"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, outcome:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, dicUrl:Ljava/lang/String;
    sget-boolean v0, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Dictionary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayOutcome: outcome="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    .line 1102
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    .local v7, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/asus/dictionary/Dictionary;->mIsLandscape:Z

    invoke-direct {p0, v8, v0}, Lcom/asus/dictionary/Dictionary;->dictionaryPos(Ljava/util/HashMap;Z)Landroid/graphics/Point;

    move-result-object v9

    .line 1105
    .local v9, pos:Landroid/graphics/Point;
    if-nez v9, :cond_2

    .line 1106
    const-string v0, "Dictionary"

    const-string v1, "displayOutcome display position is null"

    .end local v1           #dicUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .end local v2           #outcome:Ljava/lang/String;
    .end local v7           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #pos:Landroid/graphics/Point;
    :cond_1
    :goto_0
    return-void

    .line 1109
    .restart local v1       #dicUrl:Ljava/lang/String;
    .restart local v2       #outcome:Ljava/lang/String;
    .restart local v7       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9       #pos:Landroid/graphics/Point;
    :cond_2
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v11

    .line 1110
    .local v11, screenWidth:I
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v10

    .line 1112
    .local v10, screenHeight:I
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    iget v4, v9, Landroid/graphics/Point;->x:I

    sub-int v4, v11, v4

    const/16 v5, 0x190

    sub-int/2addr v4, v5

    iget v5, v9, Landroid/graphics/Point;->y:I

    sub-int v5, v10, v5

    const/16 v6, 0x190

    sub-int/2addr v5, v6

    const/4 v6, 0x5

    sub-int/2addr v5, v6

    invoke-virtual {v7, v0, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1113
    const/16 v0, 0x190

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1114
    const/16 v0, 0x190

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1115
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mInnerDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, "about:blank"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mInnerDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    .local v6, dicViewLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x5

    const/16 v1, 0x10

    const/16 v2, 0x1b

    const/16 v3, 0x10

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1121
    .end local v1           #dicUrl:Ljava/lang/String;
    .end local v2           #outcome:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    sget-boolean v0, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Dictionary"

    const-string v1, "displayOutcome: Visible"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 438
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 439
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 441
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 442
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 449
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 446
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 447
    .local v2, ex:Ljava/net/SocketException;
    const-string v5, "Dictionary"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v2           #ex:Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public loadAllLibrary()V
    .locals 9

    .prologue
    .line 650
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 651
    .local v7, dicFileIterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 653
    .local v6, dicFileEntry:Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 655
    .local v8, langPair:Ljava/lang/String;
    move-object v4, v8

    .line 656
    .local v4, loadPair:Ljava/lang/String;
    sget-boolean v1, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Dictionary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAllLibrary loadPair="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 661
    new-instance v0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;

    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mLanguageFileMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/asus/dictionary/Dictionary;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/dictionary/Dictionary$XLoadLibrary;-><init>(Lcom/asus/dictionary/Dictionary;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 662
    .local v0, loadLibrary:Lcom/asus/dictionary/Dictionary$XLoadLibrary;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 665
    .end local v0           #loadLibrary:Lcom/asus/dictionary/Dictionary$XLoadLibrary;
    .end local v4           #loadPair:Ljava/lang/String;
    .end local v6           #dicFileEntry:Ljava/util/Map$Entry;
    .end local v8           #langPair:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public lookupString(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "wordLookup"
    .parameter
    .parameter "extraData"
    .parameter "wordLanguage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 209
    sget-boolean v2, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Dictionary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extraData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wordLanguage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mDicLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mDicView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearView()V

    .line 214
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 215
    const-wide/16 v2, 0x1b58

    iput-wide v2, p0, Lcom/asus/dictionary/Dictionary;->mLookupTimeout:J

    .line 216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v1, lookupParameter:Landroid/os/Bundle;
    const-string v2, "word"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v3, "boxes"

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 219
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p4, :cond_1

    .line 221
    const-string v2, "language"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mLangInstanceMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 223
    .local v0, instance:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    const-wide/16 v2, 0x6d6

    iput-wide v2, p0, Lcom/asus/dictionary/Dictionary;->mLookupTimeout:J

    .line 225
    .end local v0           #instance:Ljava/lang/Integer;
    :cond_1
    sget-boolean v2, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Dictionary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/asus/dictionary/Dictionary;->mLookupTimeout:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mDictionaryHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 228
    .end local v1           #lookupParameter:Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method public lookupStringInXcome(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 23
    .parameter "wordLookup"
    .parameter "wordLanguage"
    .parameter "lookupParameter"

    .prologue
    .line 678
    const-string v20, "Dictionary"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "lookupStringInXcome wordLookup=["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mLangInstanceMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 682
    .local v16, lookupDict:Ljava/lang/Integer;
    if-nez v16, :cond_0

    .line 683
    const-string v20, "Dictionary"

    const-string v21, "lookupDict=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/16 v20, 0x0

    .line 798
    :goto_0
    return v20

    .line 687
    :cond_0
    new-instance v4, Lcom/xcome/dictionary/data/XDictWord;

    invoke-direct {v4}, Lcom/xcome/dictionary/data/XDictWord;-><init>()V

    .line 688
    .local v4, dictWord:Lcom/xcome/dictionary/data/XDictWord;
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p1

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xcome/dictionary/XDictManager;->searchByString(ILjava/lang/String;Lcom/xcome/dictionary/data/XDictWord;)I

    move-result v9

    .line 689
    .local v9, find:I
    const-string v20, "Dictionary"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "find="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  word="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  bookname="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getFromBookName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, displayWord:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v8, explanations:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_6

    .line 702
    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v19

    .line 703
    .local v19, wordReturn:Ljava/lang/String;
    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 705
    .local v18, spaceIndex:I
    if-ltz v18, :cond_1

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 706
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getIndex()I

    move-result v13

    .line 711
    .local v13, index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/asus/dictionary/Dictionary;->followByNumber(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 712
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/xcome/dictionary/XDictManager;->getHeadwordByIndex(II)Ljava/lang/String;

    move-result-object v17

    .line 713
    .local v17, nextWord:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/asus/dictionary/Dictionary;->followByNumber(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 715
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 720
    .end local v17           #nextWord:Ljava/lang/String;
    :cond_4
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/xcome/dictionary/XDictManager;->getDetailByIndex(II)Ljava/lang/String;

    move-result-object v7

    .line 721
    .local v7, explanation:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary;->parseExplanation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/xcome/dictionary/XDictManager;->getHeadwordByIndex(II)Ljava/lang/String;

    move-result-object v5

    .line 724
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/xcome/dictionary/XDictManager;->getHeadwordByIndex(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/asus/dictionary/Dictionary;->followByNumber(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 765
    .end local v7           #explanation:Ljava/lang/String;
    .end local v13           #index:I
    .end local v18           #spaceIndex:I
    .end local v19           #wordReturn:Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 768
    .local v6, exp:Ljava/lang/StringBuffer;
    const-string v20, "<head>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 769
    const-string v20, "<style type=\"text/css\"> body {margin-left: 1.0em;}</style>"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    const-string v20, "</head>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    const-string v20, "<body>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    const-string v20, "<font color=\"#15317E\" size=\"5\"><b>"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    const-string v20, "</b></font>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 777
    .restart local v7       #explanation:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    const-string v20, "<br />"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 732
    .end local v6           #exp:Ljava/lang/StringBuffer;
    .end local v7           #explanation:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 733
    :cond_7
    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getExplanation()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary;->parseExplanation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 734
    .restart local v7       #explanation:Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 741
    .end local v7           #explanation:Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Lcom/xcome/dictionary/data/XDictWord;->getIndex()I

    move-result v20

    add-int/lit8 v10, v20, 0x1

    .line 745
    .local v10, followIndex:I
    :cond_9
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/xcome/dictionary/XDictManager;->getHeadwordByIndex(II)Ljava/lang/String;

    move-result-object v17

    .line 747
    .restart local v17       #nextWord:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    :cond_a
    const/16 v20, 0x1

    move/from16 v14, v20

    .line 748
    .local v14, isExactly:Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/asus/dictionary/Dictionary;->followByNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    :cond_b
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 752
    .local v15, isMultipleEntry:Z
    :goto_4
    sget-boolean v20, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v20, :cond_c

    const-string v20, "Dictionary"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "nextWord="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isExactly="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isMultipleEntry="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_c
    if-nez v14, :cond_d

    if-eqz v15, :cond_e

    .line 755
    :cond_d
    move-object/from16 v5, v17

    .line 756
    sget-object v20, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v11, v10, 0x1

    .end local v10           #followIndex:I
    .local v11, followIndex:I
    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/xcome/dictionary/XDictManager;->getDetailByIndex(II)Ljava/lang/String;

    move-result-object v7

    .line 757
    .restart local v7       #explanation:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary;->parseExplanation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v11

    .line 759
    .end local v7           #explanation:Ljava/lang/String;
    .end local v11           #followIndex:I
    .restart local v10       #followIndex:I
    :cond_e
    if-nez v15, :cond_9

    .line 761
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 747
    .end local v14           #isExactly:Z
    .end local v15           #isMultipleEntry:Z
    :cond_f
    const/16 v20, 0x0

    move/from16 v14, v20

    goto/16 :goto_3

    .line 748
    .restart local v14       #isExactly:Z
    :cond_10
    const/16 v20, 0x0

    move/from16 v15, v20

    goto :goto_4

    .line 793
    .end local v10           #followIndex:I
    .end local v14           #isExactly:Z
    .end local v17           #nextWord:Ljava/lang/String;
    .restart local v6       #exp:Ljava/lang/StringBuffer;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_11
    const-string v20, "<br /><br />"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    invoke-virtual/range {p0 .. p2}, Lcom/asus/dictionary/Dictionary;->dicUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->relatedUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    const-string v20, "</body>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    const-string v20, "outcome"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public lookupStringOnGoogle(Landroid/os/Bundle;Ljava/util/concurrent/Future;J)Z
    .locals 20
    .parameter "lookupParameter"
    .parameter
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;J)Z"
        }
    .end annotation

    .prologue
    .line 953
    .local p2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/dictionary/Dictionary;->mTagToDisplay:Lorg/htmlparser/Tag;

    .line 954
    const-string v17, "word"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 955
    .local v16, wordLookup:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 958
    .local v5, dicUrl:Ljava/lang/String;
    const/4 v14, 0x0

    .line 961
    .local v14, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/util/HashMap;

    move-object v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 968
    const/16 v17, 0x1

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 970
    :goto_0
    sget-boolean v17, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v17, :cond_0

    const-string v17, "Dictionary"

    const-string v18, "After fetch html"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    if-eqz v17, :cond_3

    :cond_1
    const/16 v17, 0x0

    .line 1030
    :goto_1
    return v17

    .line 962
    :catch_0
    move-exception v17

    move-object/from16 v10, v17

    .line 963
    .local v10, ex:Ljava/util/concurrent/TimeoutException;
    :try_start_2
    const-string v17, "Dictionary"

    const-string v18, "lookupGoogleWithTimeout TIMEOUT"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    const/16 v17, 0x1

    :try_start_3
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catch Lorg/htmlparser/util/ParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 991
    .end local v10           #ex:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 992
    .local v7, e:Lorg/htmlparser/util/ParserException;
    const-string v17, "Dictionary"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ParserException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .end local v7           #e:Lorg/htmlparser/util/ParserException;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mTagToDisplay:Lorg/htmlparser/Tag;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x0

    goto :goto_1

    .line 965
    :catch_2
    move-exception v17

    move-object/from16 v10, v17

    .line 966
    .local v10, ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 968
    const/16 v17, 0x1

    :try_start_5
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v17

    .line 973
    :cond_3
    const-string v17, "outcome"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 974
    .local v12, htmlContent:Ljava/lang/String;
    const-string v17, "url"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 975
    sget-boolean v17, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v17, :cond_4

    const-string v17, "Dictionary"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dicUrl="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 979
    :cond_5
    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/htmlparser/Parser;->createParser(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v9

    .line 980
    .local v9, errCheckParser:Lorg/htmlparser/Parser;
    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/htmlparser/Parser;->createParser(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v4

    .line 982
    .local v4, contentParser:Lorg/htmlparser/Parser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->errFilter:Lorg/htmlparser/NodeFilter;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v8

    .line 983
    .local v8, errCheckList:Lorg/htmlparser/util/NodeList;
    invoke-virtual {v8}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v17

    if-lez v17, :cond_6

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 985
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/dictionary/Dictionary;->mFindExplanation:Z

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->sectionSelectorVisitor:Lorg/htmlparser/visitors/NodeVisitor;

    move-object/from16 v17, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/Parser;->visitAllNodesWith(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 987
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/dictionary/Dictionary;->mFindExplanation:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 989
    :cond_7
    sget-boolean v17, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v17, :cond_2

    const-string v17, "Dictionary"

    const-string v18, "After parsing"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/htmlparser/util/ParserException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 997
    .end local v4           #contentParser:Lorg/htmlparser/Parser;
    .end local v8           #errCheckList:Lorg/htmlparser/util/NodeList;
    .end local v9           #errCheckParser:Lorg/htmlparser/Parser;
    .end local v12           #htmlContent:Ljava/lang/String;
    :cond_8
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 998
    .local v11, htmlBuffer:Ljava/lang/StringBuffer;
    const-string v17, "<head>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mStyleSheetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/htmlparser/Tag;

    .line 1002
    .local v15, styleSheet:Lorg/htmlparser/Tag;
    invoke-interface {v15}, Lorg/htmlparser/Tag;->toHtml()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    const-string v17, "\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1005
    .end local v15           #styleSheet:Lorg/htmlparser/Tag;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mStyleSheetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1008
    const-string v17, "<style type=\"text/css\"> div.dct-eh span.dct-tt{font-size: 1.15em;}</style>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1010
    const-string v17, "<style type=\"text/css\"> div.dct-eh span.dct-tp{font-size: 0.7m;}</style>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1011
    const-string v17, "<style type=\"text/css\"> div.dct-eh span.dct-tlb{font-size: 0.7em;}</style>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    const-string v17, "<style type=\"text/css\"> a {font-size: 1.00em;}</style>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    const-string v17, "<style type=\"text/css\"> div {font-size: 1.06em;}</style>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1017
    const-string v17, "<style type=\"text/css\"> li.dct-em {margin-left: 2.5em; padding-left: 0.25em;}</style>"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    const-string v17, "<style type=\"text/css\"> li.dct-ee {margin-left: 1.5em; padding-left: 0.25em;}</style>"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    const-string v17, "</head>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1021
    const-string v17, "<body>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary;->mTagToDisplay:Lorg/htmlparser/Tag;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/htmlparser/Tag;->toHtml()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1023
    const/16 v17, 0x0

    const-string v18, "&hl="

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1024
    .local v6, diffUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->relatedUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1025
    const-string v17, "</body>\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1027
    const-string v17, "outcome"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/16 v17, 0x1

    goto/16 :goto_1
.end method

.method public parseExplanation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "explanation"

    .prologue
    .line 832
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseExplanation : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 833
    invoke-direct {p0, p1}, Lcom/asus/dictionary/Dictionary;->parseNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 834
    const/16 v0, 0x21f3

    const-string v1, "<br /><br /><font color=\"#0000ff\">["

    const-string v2, "]</font>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 835
    const/16 v0, 0x21f1

    const-string v1, "<br /><b>"

    const-string v2, ".</b>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 836
    const/16 v0, 0x21f2

    const-string v1, "<i>"

    const-string v2, "</i>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 837
    const/16 v0, 0x21f0

    const-string v1, "<b><i>"

    const-string v2, "</i></b>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 838
    const/16 v0, 0x21af

    const-string v1, "<u>"

    const-string v2, "</u>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 839
    const-string v0, "&&"

    const-string v1, "<strike>"

    const-string v2, "</strike>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 840
    const/16 v0, 0x21f5

    const-string v1, "<br /><br /><font color=\"#ff0000\"><i>"

    const-string v2, "</i></font>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 842
    const/16 v0, 0x21f4

    const-string v1, "<font color=\"#0000ff\"><b>"

    const-string v2, "</b></font>"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/dictionary/Dictionary;->parser(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 843
    const-string v0, "\u21f6\u21f6"

    const-string v1, "<br />"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-direct {p0, p1}, Lcom/asus/dictionary/Dictionary;->parseAdjustment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 845
    return-object p1
.end method

.method public relatedUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "wordLookup"
    .parameter "dicUrl"

    .prologue
    .line 1055
    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1056
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1058
    .local v1, relatedUrl:Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1089
    :goto_0
    return-object v2

    .line 1060
    :cond_1
    const-string v2, "<table style=\"width:100%; text-align:center; font-size:0.9em;\"><tr><td>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    const-string v2, "<a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    const-string v2, "Google Dictionary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    const-string v2, "</td>\n<td>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    const-string v2, "<a href=\"http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    iget-object v2, p0, Lcom/asus/dictionary/Dictionary;->mUserLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    const-string v2, ".wikipedia.org/wiki/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1075
    const-string v2, "Wikipedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1076
    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    const-string v2, "</td>\n<td>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1080
    const-string v2, "<a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1081
    const-string v2, "http://www.google.com/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1082
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1083
    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1084
    const-string v2, "Google Search"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1085
    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1087
    const-string v2, "</td></tr></table><br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1089
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setBackground(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/asus/dictionary/Dictionary;->mInnerDicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method public setStatusCallback(Landroid/os/Handler;II)V
    .locals 0
    .parameter "handler"
    .parameter "finishCode"
    .parameter "failedCode"

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary;->mClientCallbackHandler:Landroid/os/Handler;

    .line 1409
    iput p2, p0, Lcom/asus/dictionary/Dictionary;->mClientFinishCode:I

    .line 1410
    iput p3, p0, Lcom/asus/dictionary/Dictionary;->mClientFailedCode:I

    .line 1411
    return-void
.end method
