.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImagesUrl"
.end annotation


# static fields
.field private static volatile instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

.field private static locker:Ljava/lang/Object;


# instance fields
.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2080
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->locker:Ljava/lang/Object;

    .line 2082
    const/4 v0, 0x0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2063
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->version:Ljava/lang/String;

    return-void
.end method

.method public static get()Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;
    .locals 3

    .prologue
    .line 2084
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2085
    .local v0, result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2094
    :goto_0
    return-object v1

    .line 2086
    :cond_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->locker:Ljava/lang/Object;

    monitor-enter v1

    .line 2087
    :try_start_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2088
    if-eqz v0, :cond_1

    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 2089
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->load()Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    move-result-object v0

    .line 2090
    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2091
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2092
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 2094
    :cond_2
    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 2086
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isValid()Z
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static load()Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;
    .locals 5

    .prologue
    .line 2103
    new-instance v2, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    invoke-direct {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;-><init>()V

    .line 2104
    .local v2, result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "get-images-url"

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 2105
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "images-url"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$1;

    invoke-direct {v4, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;)V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 2110
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "images-version"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$2;

    invoke-direct {v4, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$2;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;)V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 2116
    :try_start_0
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    :goto_0
    return-object v2

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2120
    const-string v3, "http://cache-styles.pressdisplay.com/res/v480/images/"

    iput-object v3, v2, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->url:Ljava/lang/String;

    .line 2121
    const-string v3, "480"

    iput-object v3, v2, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 2098
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 2099
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->instance:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2098
    monitor-exit v0

    .line 2101
    return-void

    .line 2098
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->version:Ljava/lang/String;

    return-object v0
.end method
