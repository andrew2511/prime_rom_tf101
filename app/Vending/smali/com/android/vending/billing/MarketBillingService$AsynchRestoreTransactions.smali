.class Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchRestoreTransactions"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNonce:J

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestId:J

.field final synthetic this$0:Lcom/android/vending/billing/MarketBillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/MarketBillingService;Landroid/content/Context;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "requestId"
    .parameter "nonce"
    .parameter "packageName"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mContext:Landroid/content/Context;

    .line 601
    iput-wide p3, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mRequestId:J

    .line 602
    iput-wide p5, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mNonce:J

    .line 603
    iput-object p7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    .line 604
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 12
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/vending/billing/InAppRequestDatabase;->isRequestAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 608
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v6, v6, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mRequestId:J

    sget-object v10, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 636
    :goto_0
    return-void

    .line 613
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v6, v6, Lcom/android/vending/billing/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 615
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v3, Lcom/android/vending/model/InAppRestoreTransactionsRequest;

    invoke-direct {v3}, Lcom/android/vending/model/InAppRestoreTransactionsRequest;-><init>()V

    .line 616
    .local v3, request:Lcom/android/vending/model/InAppRestoreTransactionsRequest;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 617
    .local v0, bytes:[B
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/android/vending/util/Md5Util;->secureHashBytes([B)[B

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/vending/model/InAppRestoreTransactionsRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 619
    iget-wide v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mNonce:J

    invoke-virtual {v3, v6, v7}, Lcom/android/vending/model/InAppRestoreTransactionsRequest;->setNonce(J)V

    .line 620
    invoke-static {p1}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v5

    .line 621
    .local v5, service:Lcom/android/vending/api/InAppPurchaseService;
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/vending/billing/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Ljava/lang/String;Lcom/android/vending/model/InAppRestoreTransactionsRequest;)Lcom/android/vending/model/InAppRestoreTransactionsResponse;

    .line 623
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/vending/billing/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v5}, Lcom/android/vending/api/InAppPurchaseService;->getInAppRestoreTransactionsResponse()Lcom/android/vending/model/InAppRestoreTransactionsResponse;

    move-result-object v4

    .line 627
    .local v4, response:Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v6, v6, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->getSignedData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 629
    iget-object v6, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v6, v6, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mRequestId:J

    iget-object v10, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    invoke-virtual {v4}, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/vending/billing/MarketBillingService;->access$100(Lcom/android/vending/billing/MarketBillingService;Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    .end local v0           #bytes:[B
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #request:Lcom/android/vending/model/InAppRestoreTransactionsRequest;
    .end local v4           #response:Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    .end local v5           #service:Lcom/android/vending/api/InAppPurchaseService;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 634
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on InAppRestoreTransactionsRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;->mRequestId:J

    sget-object v4, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 642
    return-void
.end method
