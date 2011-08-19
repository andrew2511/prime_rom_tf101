.class public Lcom/google/android/apps/books/render/ImageModeRenderer;
.super Lcom/google/android/apps/books/render/ReaderRenderer;
.source "ImageModeRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;,
        Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;,
        Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
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
.field private static final MSG_DELIVER_RESULT:I = 0xc8

.field private static final MSG_RENDER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ImageModeRenderer"

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ImageModeRenderer",
            "<TT;>.FetchHandler;"
        }
    .end annotation
.end field

.field private mFetchThread:Landroid/os/HandlerThread;

.field private mHighlightNightPaint:Landroid/graphics/Paint;

.field private mMainHandler:Landroid/os/Handler;

.field private mNightPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ImageModeRenderer",
            "<TT;>.RenderHandler;"
        }
    .end annotation
.end field

.field private mRenderThread:Landroid/os/HandlerThread;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSettings:Lcom/google/android/apps/books/render/ReaderSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 70
    sget-object v0, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 4
    .parameter "resolver"
    .parameter "context"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    const-string v3, "ImageModeRenderer"

    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;-><init>()V

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mNightPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mHighlightNightPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 74
    const-string v1, "missing resolver"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    .line 75
    const-string v1, "missing context"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mContext:Landroid/content/Context;

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;

    .line 79
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageModeRenderer"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;-><init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    .line 84
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageModeRenderer"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v1, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;-><init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mNightPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lcom/google/android/apps/books/render/ImageModeRenderer;->buildDesaturateAndInvert()Landroid/graphics/ColorMatrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mHighlightNightPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lcom/google/android/apps/books/render/ImageModeRenderer;->buildInvert()Landroid/graphics/ColorMatrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    new-instance v0, Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-direct {v0, p2}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, settings:Lcom/google/android/apps/books/render/ReaderSettings;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/render/ImageModeRenderer;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->loadPageBitmapFromProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/render/ImageModeRenderer;)Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;[BLandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/books/render/ImageModeRenderer;->decryptRawPage(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;[BLandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static buildDesaturateAndInvert()Landroid/graphics/ColorMatrix;
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 397
    .local v0, desat:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 399
    invoke-static {}, Lcom/google/android/apps/books/render/ImageModeRenderer;->buildInvert()Landroid/graphics/ColorMatrix;

    move-result-object v1

    .line 401
    .local v1, invert:Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 402
    return-object v0
.end method

.method public static buildInvert()Landroid/graphics/ColorMatrix;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 413
    .local v0, invert:Landroid/graphics/ColorMatrix;
    return-object v0

    .line 406
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private decryptRawPage(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;[BLandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "pageUri"
    .parameter "volumeId"
    .parameter "account"
    .parameter "rawData"
    .parameter "sessionKeyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    if-eqz p5, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v7

    .line 181
    .local v7, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-virtual {v7}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v0

    .line 184
    .local v0, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    move-object v1, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 194
    .end local v0           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v7           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    array-length v2, p4

    sget-object v3, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p4, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 196
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 197
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unable to decode bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    return-object v6

    .line 186
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .restart local v7       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadPageBitmapFromProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "pageUri"
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/render/ImageModeRenderer;->loadRawPageFromProvider(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 169
    .local v4, rawData:[B
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->getSessionKeyForPage(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .local v5, sessionKeyUri:Landroid/net/Uri;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/ImageModeRenderer;->decryptRawPage(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;[BLandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadRawPageFromProvider(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .parameter "volumeId"
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, pageContentUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->fullyReadContentUriOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v1

    .line 162
    .local v1, result:[B
    return-object v1
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 117
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 120
    return-void
.end method

.method public cancelPendingRequests()V
    .locals 2

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    const/16 v1, 0x64

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "message"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 348
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    move v9, v11

    .line 391
    :goto_0
    return v9

    .line 350
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;

    .line 353
    .local v7, result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    iget-object v8, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 355
    .local v8, resultBitmap:Landroid/graphics/Bitmap;
    iget-object v9, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->error:Ljava/lang/Exception;

    if-eqz v9, :cond_3

    move v2, v12

    .line 357
    .local v2, hasError:Z
    :goto_1
    const-string v9, "BooksTextureDebug"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    .line 358
    .local v6, paintDebug:Z
    iget-object v9, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    .line 359
    .local v4, isNightMode:Z
    iget-object v9, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v9, v9, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v9, :cond_4

    move v3, v12

    .line 361
    .local v3, isHighlight:Z
    :goto_2
    if-nez v2, :cond_2

    if-nez v4, :cond_0

    if-eqz v6, :cond_2

    .line 362
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 364
    .local v1, debugBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v4, :cond_5

    iget-object v9, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v5, v9

    .line 368
    .local v5, paint:Landroid/graphics/Paint;
    :goto_3
    invoke-virtual {v0, v8, v13, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 370
    if-eqz v6, :cond_1

    .line 371
    iget-object v9, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    invoke-static {v0, v9, v10, v11, v4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->paintDebugInfo(Landroid/graphics/Canvas;Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Z)V

    .line 375
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 376
    move-object v8, v1

    .line 381
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #debugBitmap:Landroid/graphics/Bitmap;
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_2
    if-eqz v2, :cond_7

    .line 382
    iget-object v9, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 386
    :goto_4
    iget-object v9, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    move v9, v12

    .line 388
    goto :goto_0

    .end local v2           #hasError:Z
    .end local v3           #isHighlight:Z
    .end local v4           #isNightMode:Z
    .end local v6           #paintDebug:Z
    :cond_3
    move v2, v11

    .line 355
    goto :goto_1

    .restart local v2       #hasError:Z
    .restart local v4       #isNightMode:Z
    .restart local v6       #paintDebug:Z
    :cond_4
    move v3, v11

    .line 359
    goto :goto_2

    .line 366
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    .restart local v1       #debugBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #isHighlight:Z
    :cond_5
    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mHighlightNightPaint:Landroid/graphics/Paint;

    move-object v5, v9

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mNightPaint:Landroid/graphics/Paint;

    move-object v5, v9

    goto :goto_3

    .line 384
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #debugBitmap:Landroid/graphics/Bitmap;
    :cond_7
    iget-object v9, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10, v8}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .locals 3
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
    .line 128
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    const/16 v1, 0x64

    new-instance v2, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;

    invoke-direct {v2, p1, p2}, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-super {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;->teardown()V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/ImageModeRenderer;->cancelPendingRequests()V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 113
    return-void
.end method
