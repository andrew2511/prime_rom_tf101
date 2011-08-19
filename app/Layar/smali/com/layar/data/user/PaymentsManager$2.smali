.class Lcom/layar/data/user/PaymentsManager$2;
.super Ljava/lang/Object;
.source "PaymentsManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/PaymentsManager;->initiate(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/PaymentsManager;

.field private final synthetic val$handler:Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/PaymentsManager$2;->this$0:Lcom/layar/data/user/PaymentsManager;

    iput-object p2, p0, Lcom/layar/data/user/PaymentsManager$2;->val$handler:Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 199
    invoke-static {}, Lcom/layar/data/user/PaymentsManager;->access$6()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error when initiating payment"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager$2;->val$handler:Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;

    new-instance v1, Lcom/layar/data/user/InitiatePaymentResponse;

    .line 201
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/InitiatePaymentResponse;-><init>(I)V

    .line 200
    invoke-interface {v0, v1}, Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;->handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V

    .line 202
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/InitiatePaymentResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/InitiatePaymentResponse;

    move-result-object v2

    .line 186
    .local v2, response:Lcom/layar/data/user/InitiatePaymentResponse;
    iget-object v3, p0, Lcom/layar/data/user/PaymentsManager$2;->val$handler:Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;->handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #response:Lcom/layar/data/user/InitiatePaymentResponse;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 191
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/PaymentsManager;->access$6()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Problem initiating payment"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object v3, p0, Lcom/layar/data/user/PaymentsManager$2;->val$handler:Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;

    new-instance v4, Lcom/layar/data/user/InitiatePaymentResponse;

    .line 193
    const/4 v5, -0x3

    invoke-direct {v4, v5}, Lcom/layar/data/user/InitiatePaymentResponse;-><init>(I)V

    .line 192
    invoke-interface {v3, v4}, Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;->handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V

    goto :goto_0
.end method
