.class public Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsynchCheckForNotifications"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 3
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/android/vending/model/CheckForNotificationsRequest;

    invoke-direct {v0}, Lcom/android/vending/model/CheckForNotificationsRequest;-><init>()V

    .line 239
    .local v0, request:Lcom/android/vending/model/CheckForNotificationsRequest;
    invoke-static {p1}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v1

    .line 241
    .local v1, service:Lcom/android/vending/api/InAppPurchaseService;
    invoke-virtual {p0}, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Ljava/lang/String;Lcom/android/vending/model/CheckForNotificationsRequest;)Lcom/android/vending/model/CheckForNotificationsResponse;

    .line 243
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 248
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on CheckForNotificationsRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 252
    return-void
.end method
