.class Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchPurchaseInformation"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNonce:J

.field private final mNotificationIds:[Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestId:J

.field final synthetic this$0:Lcom/android/vending/billing/MarketBillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/MarketBillingService;Landroid/content/Context;JJ[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "requestId"
    .parameter "nonce"
    .parameter "notificationIds"
    .parameter "packageName"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 541
    iput-object p2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mContext:Landroid/content/Context;

    .line 542
    iput-wide p3, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mRequestId:J

    .line 543
    iput-wide p5, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mNonce:J

    .line 544
    iput-object p7, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mNotificationIds:[Ljava/lang/String;

    .line 545
    iput-object p8, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    .line 546
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 18
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    invoke-static {v12, v13}, Lcom/android/vending/billing/InAppRequestDatabase;->isRequestAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mRequestId:J

    move-wide v14, v0

    sget-object v16, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual/range {v12 .. v16}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 583
    :goto_0
    return-void

    .line 555
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/billing/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    const/16 v14, 0x40

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 557
    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v9, Lcom/android/vending/model/InAppPurchaseInformationRequest;

    invoke-direct {v9}, Lcom/android/vending/model/InAppPurchaseInformationRequest;-><init>()V

    .line 558
    .local v9, request:Lcom/android/vending/model/InAppPurchaseInformationRequest;
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 559
    .local v3, bytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v12, v0

    iget v13, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Lcom/android/vending/util/Md5Util;->secureHashBytes([B)[B

    move-result-object v14

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/vending/model/InAppPurchaseInformationRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 561
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mNonce:J

    move-wide v12, v0

    invoke-virtual {v9, v12, v13}, Lcom/android/vending/model/InAppPurchaseInformationRequest;->setNonce(J)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mNotificationIds:[Ljava/lang/String;

    move-object v2, v0

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .line 563
    .local v7, notificationId:Ljava/lang/String;
    invoke-virtual {v9, v7}, Lcom/android/vending/model/InAppPurchaseInformationRequest;->addNotificationId(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 565
    .end local v7           #notificationId:Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v11

    .line 566
    .local v11, service:Lcom/android/vending/api/InAppPurchaseService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lcom/android/vending/billing/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Ljava/lang/String;Lcom/android/vending/model/InAppPurchaseInformationRequest;)Lcom/android/vending/model/InAppPurchaseInformationResponse;

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lcom/android/vending/billing/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v11}, Lcom/android/vending/api/InAppPurchaseService;->getInAppPurchaseInformationResponse()Lcom/android/vending/model/InAppPurchaseInformationResponse;

    move-result-object v10

    .line 572
    .local v10, response:Lcom/android/vending/model/InAppPurchaseInformationResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v10}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getSignedData()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getSignature()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mRequestId:J

    move-wide v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/vending/billing/MarketBillingService;->access$100(Lcom/android/vending/billing/MarketBillingService;Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v12, v13, v14, v10}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->showStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/model/InAppPurchaseInformationResponse;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 578
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #bytes:[B
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #request:Lcom/android/vending/model/InAppPurchaseInformationRequest;
    .end local v10           #response:Lcom/android/vending/model/InAppPurchaseInformationResponse;
    .end local v11           #service:Lcom/android/vending/api/InAppPurchaseService;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 581
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package name not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on InAppPurchaseInformationRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;->mRequestId:J

    sget-object v4, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 589
    return-void
.end method
