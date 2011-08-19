.class public Lcom/android/vending/RefundAction;
.super Landroid/os/AsyncTask;
.source "RefundAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/vending/model/Asset;",
        "Ljava/lang/String;",
        "Lcom/android/vending/model/RefundResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mBaseActivity:Lcom/android/vending/BaseActivity;

.field private mCallback:Ljava/lang/Runnable;

.field private mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method private constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "activity"
    .parameter "requestManager"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 26
    iput-object v0, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 27
    iput-object v0, p0, Lcom/android/vending/RefundAction;->mCallback:Ljava/lang/Runnable;

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/vending/RefundAction;->attach(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method public static refund(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Lcom/android/vending/model/Asset;Ljava/lang/Runnable;)Lcom/android/vending/RefundAction;
    .locals 3
    .parameter "activity"
    .parameter "requestManager"
    .parameter "asset"
    .parameter "callback"

    .prologue
    .line 109
    new-instance v0, Lcom/android/vending/RefundAction;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/vending/RefundAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Ljava/lang/Runnable;)V

    .line 110
    .local v0, action:Lcom/android/vending/RefundAction;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/vending/model/Asset;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vending/RefundAction;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-object v0
.end method


# virtual methods
.method public attach(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "activity"
    .parameter "requestManager"
    .parameter "callback"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 45
    iput-object p2, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 46
    iput-object p3, p0, Lcom/android/vending/RefundAction;->mCallback:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method protected varargs doInBackground([Lcom/android/vending/model/Asset;)Lcom/android/vending/model/RefundResponse;
    .locals 7
    .parameter "assets"

    .prologue
    .line 51
    const/4 v5, 0x0

    aget-object v1, p1, v5

    .line 52
    .local v1, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, account:Ljava/lang/String;
    new-instance v3, Lcom/android/vending/model/RefundRequest;

    invoke-direct {v3}, Lcom/android/vending/model/RefundRequest;-><init>()V

    .line 55
    .local v3, refundRequest:Lcom/android/vending/model/RefundRequest;
    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/vending/model/RefundRequest;->setAssetId(Ljava/lang/String;)V

    .line 56
    new-instance v4, Lcom/android/vending/api/RefundService;

    iget-object v5, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v4, v5}, Lcom/android/vending/api/RefundService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 57
    .local v4, refundService:Lcom/android/vending/api/RefundService;
    invoke-virtual {v4, v0, v3}, Lcom/android/vending/api/RefundService;->queueRefund(Ljava/lang/String;Lcom/android/vending/model/RefundRequest;)V

    .line 60
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v5, v0}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Lcom/android/vending/api/RefundService;->getRefundResponse()Lcom/android/vending/model/RefundResponse;
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 69
    :goto_0
    return-object v5

    .line 63
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 64
    .local v2, e:Lcom/android/vending/api/ApiException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not complete refund requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 69
    .end local v2           #e:Lcom/android/vending/api/ApiException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 65
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 66
    .local v2, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not complete refund requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, [Lcom/android/vending/model/Asset;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/vending/RefundAction;->doInBackground([Lcom/android/vending/model/Asset;)Lcom/android/vending/model/RefundResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/vending/model/RefundResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, result:Lcom/android/vending/model/RefundResponse$Result;
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/android/vending/model/RefundResponse;->getResult()Lcom/android/vending/model/RefundResponse$Result;

    move-result-object v1

    .line 79
    :cond_0
    sget-object v2, Lcom/android/vending/model/RefundResponse$Result;->OK:Lcom/android/vending/model/RefundResponse$Result;

    if-ne v1, v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, refundMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 88
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/vending/model/RefundResponse;->getResultDetail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/android/vending/model/RefundResponse;->getResultDetail()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2, v0}, Lcom/android/vending/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_2
    return-void

    .line 83
    .end local v0           #refundMessage:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/vending/model/RefundResponse$Result;->CANNOT_REFUND:Lcom/android/vending/model/RefundResponse$Result;

    if-ne v1, v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #refundMessage:Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/android/vending/model/RefundResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/vending/RefundAction;->onPostExecute(Lcom/android/vending/model/RefundResponse;)V

    return-void
.end method
