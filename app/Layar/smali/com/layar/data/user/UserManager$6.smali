.class Lcom/layar/data/user/UserManager$6;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/UserManager;->verifyAccount(Lcom/layar/data/user/UserManager$VerifyAccountHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/UserManager;

.field private final synthetic val$handler:Lcom/layar/data/user/UserManager$VerifyAccountHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$VerifyAccountHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/UserManager$6;->this$0:Lcom/layar/data/user/UserManager;

    iput-object p2, p0, Lcom/layar/data/user/UserManager$6;->val$handler:Lcom/layar/data/user/UserManager$VerifyAccountHandler;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 555
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v0

    .line 556
    const-string v1, "There was a problem when sending request to verify account..."

    .line 555
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    iget-object v0, p0, Lcom/layar/data/user/UserManager$6;->val$handler:Lcom/layar/data/user/UserManager$VerifyAccountHandler;

    new-instance v1, Lcom/layar/data/user/VerifyAccountResponse;

    .line 559
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/VerifyAccountResponse;-><init>(I)V

    .line 558
    invoke-interface {v0, v1}, Lcom/layar/data/user/UserManager$VerifyAccountHandler;->handleResponse(Lcom/layar/data/user/VerifyAccountResponse;)V

    .line 560
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 5
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/VerifyAccountResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/VerifyAccountResponse;

    move-result-object v2

    .line 543
    .local v2, response:Lcom/layar/data/user/VerifyAccountResponse;
    iget-object v3, p0, Lcom/layar/data/user/UserManager$6;->val$handler:Lcom/layar/data/user/UserManager$VerifyAccountHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/user/UserManager$VerifyAccountHandler;->handleResponse(Lcom/layar/data/user/VerifyAccountResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #response:Lcom/layar/data/user/VerifyAccountResponse;
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 549
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this shouldn\'t be happening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
