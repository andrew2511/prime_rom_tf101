.class Lcom/layar/data/user/UserManager$3;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/layar/data/user/UserManager$UserCreateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/UserManager;

.field private final synthetic val$createUserHandler:Lcom/layar/data/user/UserManager$UserCreateHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$UserCreateHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/UserManager$3;->this$0:Lcom/layar/data/user/UserManager;

    iput-object p2, p0, Lcom/layar/data/user/UserManager$3;->val$createUserHandler:Lcom/layar/data/user/UserManager$UserCreateHandler;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 347
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error when creating user"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    iget-object v0, p0, Lcom/layar/data/user/UserManager$3;->val$createUserHandler:Lcom/layar/data/user/UserManager$UserCreateHandler;

    new-instance v1, Lcom/layar/data/user/UserCreateResponse;

    .line 349
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/UserCreateResponse;-><init>(I)V

    .line 348
    invoke-interface {v0, v1}, Lcom/layar/data/user/UserManager$UserCreateHandler;->handleResponse(Lcom/layar/data/user/UserCreateResponse;)V

    .line 350
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
    .line 329
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/UserCreateResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/UserCreateResponse;

    move-result-object v2

    .line 333
    .local v2, newUserResponse:Lcom/layar/data/user/UserCreateResponse;
    invoke-virtual {v2}, Lcom/layar/data/user/UserCreateResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/layar/data/user/UserManager$3;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v3}, Lcom/layar/data/user/UserManager;->access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerManager;->resetCache()V

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/layar/data/user/UserManager$3;->val$createUserHandler:Lcom/layar/data/user/UserManager$UserCreateHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/user/UserManager$UserCreateHandler;->handleResponse(Lcom/layar/data/user/UserCreateResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #newUserResponse:Lcom/layar/data/user/UserCreateResponse;
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 341
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this shouldn\'t be happening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
