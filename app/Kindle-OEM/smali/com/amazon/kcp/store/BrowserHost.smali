.class public Lcom/amazon/kcp/store/BrowserHost;
.super Ljava/lang/Object;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/BrowserHost$1;,
        Lcom/amazon/kcp/store/BrowserHost$InitData;,
        Lcom/amazon/kcp/store/BrowserHost$BookID;,
        Lcom/amazon/kcp/store/BrowserHost$BookStatus;,
        Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
    }
.end annotation


# static fields
.field static final API_VERSION_NUMBER:I = 0x0

.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "PrivateBrowserHost"

.field private static final STORE_PREFS_KEY:Ljava/lang/String; = "storePrefs"

.field private static final STORE_PREFS_NAME:Ljava/lang/String; = "StorePrefs"


# instance fields
.field private browserhostJavaScript:Ljava/lang/String;

.field private final downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

.field private final jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

.field private jsonJavaScript:Ljava/lang/String;

.field private final store:Lcom/amazon/kcp/redding/ReddingActivity;

.field private final todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/store/IWebViewJSWrapper;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;)V
    .locals 5
    .parameter "store"
    .parameter "jsWrapper"
    .parameter "todoManager"
    .parameter "downloadWatcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 274
    iput-object p2, p0, Lcom/amazon/kcp/store/BrowserHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    .line 275
    iput-object p3, p0, Lcom/amazon/kcp/store/BrowserHost;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 276
    iput-object p4, p0, Lcom/amazon/kcp/store/BrowserHost;->downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    .line 280
    const/high16 v1, 0x7f06

    :try_start_0
    invoke-direct {p0, v1}, Lcom/amazon/kcp/store/BrowserHost;->readRawJSResource(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->browserhostJavaScript:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const v1, 0x7f060002

    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/store/BrowserHost;->readRawJSResource(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->jsonJavaScript:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    return-void

    .line 282
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 284
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "BrowserHost"

    const-string v3, "ErrorReadingJSFile"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 285
    throw v0

    .line 292
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 294
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "BrowserHost"

    const-string v3, "ErrorReadingJSFile"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 295
    throw v0
.end method

.method private kindleReady()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 571
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$InitData;

    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    iget-object v5, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    const-string v6, "StorePrefs"

    invoke-virtual {v5, v6, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "storePrefs"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v6}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/application/AuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/store/BrowserHost$InitData;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, initData:Lcom/amazon/kcp/store/BrowserHost$InitData;
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function(){if(window.onKindleReady){window.onKindleReady("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");}})()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private nativeStatusUpdate(Lcom/amazon/kcp/store/BrowserHost$BookID;IF)V
    .locals 5
    .parameter "bookID"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    const-string v1, "(function(){BrowserHost.nativeStatusReply(\'%s\',\'%s\', %d, %f);})()"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/amazon/kcp/store/BrowserHost$BookID;->asin:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/amazon/kcp/store/BrowserHost$BookID;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private readRawJSResource(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/redding/ReddingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 543
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 545
    :goto_0
    if-eqz v2, :cond_0

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 555
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 560
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "BrowserHost"

    const-string v3, "ErrorClosingJSFile"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_1
.end method


# virtual methods
.method public bookStatus(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#BookStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BrowserHost"

    const-string v2, "BookStatusCalled"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 410
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$BookID;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$BookID;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    if-eqz v0, :cond_0

    .line 414
    const/4 v1, -0x1

    .line 416
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kcp/store/BrowserHost;->downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    iget-object v3, v0, Lcom/amazon/kcp/store/BrowserHost$BookID;->asin:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/kcp/store/BrowserHost$BookID;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/amazon/kcp/application/IDownloadStatusWatcher;->getStatusFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus;

    move-result-object v2

    .line 418
    sget-object v3, Lcom/amazon/kcp/store/BrowserHost$1;->$SwitchMap$com$amazon$kcp$application$IDownloadStatus$Status:[I

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDownloadStatus;->getStatus()Lcom/amazon/kcp/application/IDownloadStatus$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/IDownloadStatus$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 436
    :goto_0
    invoke-interface {v2}, Lcom/amazon/kcp/application/IDownloadStatus;->getProgress()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/store/BrowserHost;->nativeStatusUpdate(Lcom/amazon/kcp/store/BrowserHost$BookID;IF)V
    :try_end_1
    .catch Lcom/amazon/kcp/store/StatusNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    :cond_0
    :goto_1
    return-void

    .line 421
    :pswitch_0
    const/4 v1, 0x0

    .line 422
    goto :goto_0

    .line 424
    :pswitch_1
    const/4 v1, 0x1

    .line 425
    goto :goto_0

    .line 427
    :pswitch_2
    const/4 v1, 0x2

    .line 428
    goto :goto_0

    .line 431
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing jsonBookID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public checkTODO(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#checkTODO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$BookID;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$BookID;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v2, p0, Lcom/amazon/kcp/store/BrowserHost;->downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    iget-object v3, v0, Lcom/amazon/kcp/store/BrowserHost$BookID;->asin:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/kcp/store/BrowserHost$BookID;->type:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kcp/library/BookOpenHelper;->syncAndDownload(Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing jsonBookID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public closeStore()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->finish()V

    .line 327
    return-void
.end method

.method public getBrowserHostJavascript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->browserhostJavaScript:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONJavascript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->jsonJavaScript:Ljava/lang/String;

    return-object v0
.end method

.method public injectJavaScript()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->getJSONJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->getBrowserHostJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/amazon/kcp/store/BrowserHost;->kindleReady()V

    .line 513
    return-void
.end method

.method public openBook(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#openBook: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$BookID;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$BookID;-><init>(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object v2, v0, Lcom/amazon/kcp/store/BrowserHost$BookID;->asin:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/kcp/store/BrowserHost$BookID;->type:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iget-object v4, p0, Lcom/amazon/kcp/store/BrowserHost;->downloadWatcher:Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/application/IDownloadStatusWatcher;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->finish()V

    .line 381
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing jsonBookID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public openInExternalBrowser(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#OpenInExternalBrowser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method public pageReady()V
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BrowserHost"

    const-string v2, "PageReadyCalled"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 315
    return-void
.end method

.method public reportMetrics(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#ReportMetrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/StoreMetric;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/StoreMetric;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 484
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreMetric;->getMetrics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreMetric$Metric;

    .line 486
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreMetric;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreMetric$Metric;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreMetric$Metric;->getMetricType()Lcom/amazon/kcp/application/metrics/MetricType;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreMetric$Metric;->getMetricsData()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing jsonMetrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_0
    return-void
.end method

.method public savePreferences(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#SavePreferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BrowserHost"

    const-string v2, "SavePreferencesCalled"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 470
    return-void
.end method
