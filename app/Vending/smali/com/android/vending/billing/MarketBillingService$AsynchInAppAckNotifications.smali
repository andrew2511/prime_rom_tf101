.class Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;
.super Lcom/android/vending/util/AlarmService$AsynchAckNotifications;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchInAppAckNotifications"
.end annotation


# instance fields
.field private final mRequestId:J

.field final synthetic this$0:Lcom/android/vending/billing/MarketBillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/MarketBillingService;Landroid/content/Context;J[Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "requestId"
    .parameter "notifications"
    .parameter "packageName"
    .parameter "packageInfo"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->this$0:Lcom/android/vending/billing/MarketBillingService;

    .line 656
    invoke-direct {p0, p2, p5, p6, p7}, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 657
    iput-wide p3, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mRequestId:J

    .line 658
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 5
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vending/billing/InAppRequestDatabase;->isRequestAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mRequestId:J

    sget-object v4, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->doRequest(Lcom/android/vending/api/RequestManager;)V

    .line 668
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mRequestId:J

    sget-object v4, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on InAppAckNotificationsRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;->mRequestId:J

    sget-object v4, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 681
    return-void
.end method
