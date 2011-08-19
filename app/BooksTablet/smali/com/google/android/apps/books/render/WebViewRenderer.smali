.class public Lcom/google/android/apps/books/render/WebViewRenderer;
.super Lcom/google/android/apps/books/render/ReaderRenderer;
.source "WebViewRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/books/render/ReaderRenderer",
        "<TT;>;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final ENABLE_LIVE_UPDATES:Z = false

.field private static final TAG:Ljava/lang/String; = "WebViewRenderer"


# instance fields
.field private final mHiddenParent:Landroid/view/ViewGroup;

.field private mMainHandler:Landroid/os/Handler;

.field private mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/WebViewRendererModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

.field private mSnapshotBitmap:Landroid/graphics/Bitmap;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;)V
    .locals 9
    .parameter "hiddenParent"
    .parameter "resolver"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;-><init>()V

    .line 390
    new-instance v2, Lcom/google/android/apps/books/render/WebViewRenderer$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/render/WebViewRenderer$4;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    iput-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    .line 81
    const-string v2, "missing hiddenParent"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    .line 82
    const-string v2, "missing resolver"

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iput-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mResolver:Landroid/content/ContentResolver;

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mMainHandler:Landroid/os/Handler;

    .line 90
    new-instance v2, Lcom/google/android/apps/books/render/WebViewRenderer$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/books/render/WebViewRenderer$1;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 118
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 119
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;

    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/os/Handler;Lcom/google/android/apps/books/render/WebViewRenderer$1;)V

    const-string v4, "bridge"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/android/apps/books/render/WebViewRenderer$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/render/WebViewRenderer$2;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/android/apps/books/render/WebViewRenderer$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/render/WebViewRenderer$3;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 175
    .local v1, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 176
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 177
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 178
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 179
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 180
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 184
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v2, Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-direct {v2}, Lcom/google/android/apps/books/render/WebViewRendererModel;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    iget-object v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setJavascriptReader(Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;)V

    .line 189
    new-instance v2, Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-direct {v2, v0}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRenderer;->onViewInvalidated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Lcom/google/android/apps/books/render/WebViewRendererModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/books/render/WebViewRenderer;->buildSectionContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/books/render/WebViewRenderer;->buildResourceContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/render/WebViewRenderer;->dispatchError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600()Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/apps/books/render/WebViewRenderer;->buildNotFoundResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRenderer;->javascript(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private static buildNotFoundResponse()Landroid/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/plain"

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static buildResourceContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 12
    .parameter "resolver"
    .parameter "fetchService"
    .parameter "metadata"
    .parameter "resourceContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v11, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 236
    .local v11, volumeId:Ljava/lang/String;
    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, resId:Ljava/lang/String;
    iget-object v6, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    .line 239
    .local v6, account:Landroid/accounts/Account;
    invoke-virtual {p1, v11, v8, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 241
    invoke-static {v11, v8}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 242
    .local v9, resourceUri:Landroid/net/Uri;
    const-string v0, "session_key_id"

    invoke-static {p0, v9, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 244
    .local v10, sessionKeyId:Ljava/lang/Long;
    if-nez v10, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    .line 247
    .local v4, sessionKeyUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v1

    .line 248
    .local v1, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->openPlaintextInputStream(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v7

    .line 251
    .local v7, data:Ljava/io/InputStream;
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "application/octet-stream"

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    .line 244
    .end local v1           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v4           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #data:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v0

    goto :goto_0
.end method

.method private static buildSectionContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 12
    .parameter "resolver"
    .parameter "fetchService"
    .parameter "metadata"
    .parameter "sectionContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v11, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 209
    .local v11, volumeId:Ljava/lang/String;
    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, sectionId:Ljava/lang/String;
    iget-object v6, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    .line 212
    .local v6, account:Landroid/accounts/Account;
    invoke-virtual {p1, v11, v8, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 214
    invoke-static {v11, v8}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 215
    .local v9, sectionUri:Landroid/net/Uri;
    const-string v0, "session_key_id"

    invoke-static {p0, v9, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 217
    .local v10, sessionKeyId:Ljava/lang/Long;
    if-nez v10, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    .line 220
    .local v4, sessionKeyUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v1

    .line 221
    .local v1, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->openPlaintextInputStream(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v7

    .line 224
    .local v7, data:Ljava/io/InputStream;
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "application/octet-stream"

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    .line 217
    .end local v1           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v4           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #data:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v0

    goto :goto_0
.end method

.method private dispatchError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 473
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/apps/books/render/WebViewRenderer$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/render/WebViewRenderer$5;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method private varargs javascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "fn"
    .parameter "args"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    const-string v3, "javascript:"

    .line 465
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onViewInvalidated()V
    .locals 0

    .prologue
    .line 289
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    return-void
.end method

.method private static openPlaintextInputStream(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .locals 9
    .parameter "resolver"
    .parameter "keyFactory"
    .parameter "metadata"
    .parameter "contentUri"
    .parameter "sessionKeyUri"
    .parameter "inflateContents"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const-string v8, "WebViewRenderer"

    .line 264
    invoke-static {p0, p3}, Lcom/google/android/apps/books/util/ProviderUtils;->fullyReadContentUriOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v1

    .line 265
    .local v1, payload:[B
    if-eqz p4, :cond_0

    .line 266
    iget-object v4, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    iget-object v5, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)[B

    move-result-object v1

    .line 270
    :cond_0
    const-string v0, "WebViewRenderer"

    const/4 v0, 0x2

    invoke-static {v8, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "WebViewRenderer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPlaintextInputStream() finished with payload.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 275
    .local v6, stream:Ljava/io/InputStream;
    if-eqz p5, :cond_2

    .line 276
    new-instance v7, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v6           #stream:Ljava/io/InputStream;
    .local v7, stream:Ljava/io/InputStream;
    move-object v6, v7

    .line 278
    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    :cond_2
    return-object v6
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 325
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setReaderSettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 327
    return-void
.end method

.method public cancelPendingRequests()V
    .locals 2

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    const-string v1, "WebViewRenderer"

    .line 306
    const-string v0, "WebViewRenderer"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "WebViewRenderer"

    const-string v0, "Cancelling all render requests"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->cancelPendingRequests()V

    .line 310
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    .line 331
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 361
    .end local p0           #this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 333
    .restart local p0       #this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onJsApiReady()V

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onReaderInitialized()V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onPreferencesApplied()V

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onContentLoading()V

    goto :goto_0

    .line 345
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 346
    .local v0, chapterIndex:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 347
    .local v1, pageCount:I
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onChapterReady(II)V

    goto :goto_0

    .line 351
    .end local v0           #chapterIndex:I
    .end local v1           #pageCount:I
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onContentReady()V

    goto :goto_0

    .line 354
    :pswitch_6
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0           #this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "requestId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onReadingPositionChanged(IILjava/lang/String;I)V

    goto :goto_0

    .line 358
    .restart local p0       #this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    :pswitch_7
    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0           #this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/render/WebViewRendererModel;->onInvalidPosition(I)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    .local p1, listener:Lcom/google/android/apps/books/render/RendererListener;,"Lcom/google/android/apps/books/render/RendererListener<TT;>;"
    invoke-super {p0, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 285
    return-void
.end method

.method public setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 2
    .parameter "fetchService"
    .parameter "metadata"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    const-string v1, "WebViewRenderer"

    .line 293
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/books/render/ReaderRenderer;->setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 296
    const-string v0, "WebViewRenderer"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "WebViewRenderer"

    const-string v0, "setVolumeMetadata() kicking off content load"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/reader.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 302
    return-void
.end method

.method public teardown()V
    .locals 0

    .prologue
    .line 314
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    invoke-super {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;->teardown()V

    .line 315
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/WebViewRenderer;->cancelPendingRequests()V

    .line 316
    return-void
.end method
