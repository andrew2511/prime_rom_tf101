.class Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;
.super Lcom/android/vending/billing/IMarketBillingService$Stub;
.source "InAppBillingProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/InAppBillingProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/services/InAppBillingProxyService;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-direct {p0}, Lcom/android/vending/billing/IMarketBillingService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/InAppBillingProxyService;Lcom/google/android/finsky/services/InAppBillingProxyService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;-><init>(Lcom/google/android/finsky/services/InAppBillingProxyService;)V

    return-void
.end method

.method private makeErrorResult()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    return-object v0
.end method

.method private sendBillingRequest(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 5
    .parameter "arguments"
    .parameter "numRetries"

    .prologue
    const/4 v4, 0x0

    .line 105
    const/16 v1, 0xa

    .line 106
    .local v1, numAttempts:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-static {v2}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$000(Lcom/google/android/finsky/services/InAppBillingProxyService;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 107
    add-int/lit8 v1, v1, -0x1

    .line 108
    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-static {v2}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$100(Lcom/google/android/finsky/services/InAppBillingProxyService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-virtual {v2}, Lcom/google/android/finsky/services/InAppBillingProxyService;->stopSelf()V

    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->makeErrorResult()Landroid/os/Bundle;

    move-result-object v2

    .line 135
    :goto_1
    return-object v2

    .line 114
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "InterruptedException occured. Continuing."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    const-string v3, "PACKAGE_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$300(Lcom/google/android/finsky/services/InAppBillingProxyService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-static {v2}, Lcom/google/android/finsky/services/InAppBillingProxyService;->access$000(Lcom/google/android/finsky/services/InAppBillingProxyService;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 124
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->this$0:Lcom/google/android/finsky/services/InAppBillingProxyService;

    invoke-virtual {v2}, Lcom/google/android/finsky/services/InAppBillingProxyService;->stopSelf()V

    .line 129
    :cond_2
    const-string v2, "RemoteException occured when proxying request."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    if-lez p2, :cond_3

    .line 132
    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->sendBillingRequest(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 135
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->makeErrorResult()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "arguments"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;->sendBillingRequest(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
