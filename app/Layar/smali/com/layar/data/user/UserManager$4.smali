.class Lcom/layar/data/user/UserManager$4;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/UserManager;->logout(Lcom/layar/data/user/UserManager$LogoutHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/UserManager;

.field private final synthetic val$logoutHandler:Lcom/layar/data/user/UserManager$LogoutHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$LogoutHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/UserManager$4;->this$0:Lcom/layar/data/user/UserManager;

    iput-object p2, p0, Lcom/layar/data/user/UserManager$4;->val$logoutHandler:Lcom/layar/data/user/UserManager$LogoutHandler;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 412
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was a problem when loging in..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    iget-object v0, p0, Lcom/layar/data/user/UserManager$4;->val$logoutHandler:Lcom/layar/data/user/UserManager$LogoutHandler;

    new-instance v1, Lcom/layar/data/user/LogoutResponse;

    .line 414
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/LogoutResponse;-><init>(I)V

    .line 413
    invoke-interface {v0, v1}, Lcom/layar/data/user/UserManager$LogoutHandler;->handleResponse(Lcom/layar/data/user/LogoutResponse;)V

    .line 415
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
    .line 390
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/LogoutResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/LogoutResponse;

    move-result-object v2

    .line 396
    .local v2, logoutResponse:Lcom/layar/data/user/LogoutResponse;
    invoke-virtual {v2}, Lcom/layar/data/user/LogoutResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/layar/data/user/UserManager$4;->this$0:Lcom/layar/data/user/UserManager;

    invoke-virtual {v3}, Lcom/layar/data/user/UserManager;->clientLogout()V

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/layar/data/user/UserManager$4;->val$logoutHandler:Lcom/layar/data/user/UserManager$LogoutHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/user/UserManager$LogoutHandler;->handleResponse(Lcom/layar/data/user/LogoutResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #logoutResponse:Lcom/layar/data/user/LogoutResponse;
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 406
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this shouldn\'t be happening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
