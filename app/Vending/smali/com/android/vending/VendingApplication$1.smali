.class Lcom/android/vending/VendingApplication$1;
.super Ljava/lang/Thread;
.source "VendingApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/VendingApplication;->triggerGetMarketMetadata(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/VendingApplication;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vending/VendingApplication;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/vending/VendingApplication$1;->this$0:Lcom/android/vending/VendingApplication;

    iput-object p2, p0, Lcom/android/vending/VendingApplication$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/vending/VendingApplication$1;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 195
    new-instance v1, Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v4

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v5

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    .line 201
    .local v1, manager:Lcom/android/vending/api/RequestManager;
    new-instance v3, Lcom/android/vending/api/GetMarketMetadataService;

    invoke-direct {v3, v1}, Lcom/android/vending/api/GetMarketMetadataService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 203
    .local v3, service:Lcom/android/vending/api/GetMarketMetadataService;
    iget-object v4, p0, Lcom/android/vending/VendingApplication$1;->val$context:Landroid/content/Context;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/vending/VendingApplication$1;->val$account:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/vending/api/GetMarketMetadataService;->constructAndQueueRequest(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/Integer;

    .line 206
    :try_start_0
    const-string v4, "Running GetMarketMetadata on login"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v4, p0, Lcom/android/vending/VendingApplication$1;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 208
    const-string v4, "Done running GetMarketMetadata on login"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v3}, Lcom/android/vending/api/GetMarketMetadataService;->getResponse()Lcom/android/vending/model/GetMarketMetadataResponse;

    move-result-object v2

    .line 211
    .local v2, response:Lcom/android/vending/model/GetMarketMetadataResponse;
    iget-object v4, p0, Lcom/android/vending/VendingApplication$1;->this$0:Lcom/android/vending/VendingApplication;

    invoke-virtual {v4, v2}, Lcom/android/vending/VendingApplication;->updateMetadata(Lcom/android/vending/model/GetMarketMetadataResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2           #response:Lcom/android/vending/model/GetMarketMetadataResponse;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Error trying to GetMarketMetadata on login"

    invoke-static {v4, v0}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
