.class Lcom/layar/data/user/UserManager$5;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/UserManager;->resetPassword(Ljava/lang/String;Lcom/layar/data/user/UserManager$ResetPasswordHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/UserManager;

.field private final synthetic val$handler:Lcom/layar/data/user/UserManager$ResetPasswordHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$ResetPasswordHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/UserManager$5;->this$0:Lcom/layar/data/user/UserManager;

    iput-object p2, p0, Lcom/layar/data/user/UserManager$5;->val$handler:Lcom/layar/data/user/UserManager$ResetPasswordHandler;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 488
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was a problem when resetting password..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    iget-object v0, p0, Lcom/layar/data/user/UserManager$5;->val$handler:Lcom/layar/data/user/UserManager$ResetPasswordHandler;

    new-instance v1, Lcom/layar/data/user/ResetPasswordResponse;

    .line 491
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/ResetPasswordResponse;-><init>(I)V

    .line 490
    invoke-interface {v0, v1}, Lcom/layar/data/user/UserManager$ResetPasswordHandler;->handleResponse(Lcom/layar/data/user/ResetPasswordResponse;)V

    .line 492
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
    .line 468
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/ResetPasswordResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/ResetPasswordResponse;

    move-result-object v2

    .line 476
    .local v2, response:Lcom/layar/data/user/ResetPasswordResponse;
    iget-object v3, p0, Lcom/layar/data/user/UserManager$5;->val$handler:Lcom/layar/data/user/UserManager$ResetPasswordHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/user/UserManager$ResetPasswordHandler;->handleResponse(Lcom/layar/data/user/ResetPasswordResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #response:Lcom/layar/data/user/ResetPasswordResponse;
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 482
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this shouldn\'t be happening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
