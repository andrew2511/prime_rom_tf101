.class Lcom/layar/data/user/UserManager$2;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/UserManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/UserManager;

.field private final synthetic val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/data/user/UserManager;Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    iput-object p2, p0, Lcom/layar/data/user/UserManager$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/layar/data/user/UserManager$2;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/layar/data/user/UserManager$2;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 265
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was a problem when loging in..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    iget-object v0, p0, Lcom/layar/data/user/UserManager$2;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    new-instance v1, Lcom/layar/data/user/LoginResponse;

    .line 267
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/LoginResponse;-><init>(I)V

    .line 266
    invoke-interface {v0, v1}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    .line 268
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 9
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/LoginResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/LoginResponse;

    move-result-object v2

    .line 214
    .local v2, loginResponse:Lcom/layar/data/user/LoginResponse;
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v4

    .line 215
    .local v4, socialManager:Lcom/layar/data/social/SocialManager;
    invoke-virtual {v4}, Lcom/layar/data/social/SocialManager;->setAllSocialsUnlinked()V

    .line 216
    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_2

    .line 220
    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getUser()Lcom/layar/data/user/User;

    move-result-object v6

    .line 221
    .local v6, user:Lcom/layar/data/user/User;
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7, v6}, Lcom/layar/data/user/UserManager;->access$0(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/User;)V

    .line 222
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    iget-object v8, p0, Lcom/layar/data/user/UserManager$2;->val$username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setUsername(Ljava/lang/String;)V

    .line 223
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    iget-object v8, p0, Lcom/layar/data/user/UserManager$2;->val$password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setPassword(Ljava/lang/String;)V

    .line 224
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    invoke-virtual {v6}, Lcom/layar/data/user/User;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setAccessToken(Ljava/lang/String;)V

    .line 225
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 226
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setOtherPhone(Z)V

    .line 227
    invoke-virtual {v6}, Lcom/layar/data/user/User;->getSocialNetworks()Ljava/util/ArrayList;

    move-result-object v5

    .line 228
    .local v5, socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 232
    invoke-static {}, Lcom/layar/App;->initPreferences()V

    .line 233
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/data/user/PaymentsManager;->reloadProviders()V

    .line 234
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7}, Lcom/layar/data/user/UserManager;->access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerManager;->resetCache()V

    .line 235
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7}, Lcom/layar/data/user/UserManager;->access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerManager;->resetYours()V

    .line 236
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7}, Lcom/layar/data/user/UserManager;->access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerManager;->updateRecentLayers()V

    .line 252
    .end local v5           #socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #user:Lcom/layar/data/user/User;
    :goto_1
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    if-eqz v7, :cond_0

    .line 253
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    invoke-interface {v7, v2}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    .line 261
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #loginResponse:Lcom/layar/data/user/LoginResponse;
    .end local v4           #socialManager:Lcom/layar/data/social/SocialManager;
    :cond_0
    :goto_2
    return-void

    .line 228
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    .restart local v2       #loginResponse:Lcom/layar/data/user/LoginResponse;
    .restart local v4       #socialManager:Lcom/layar/data/social/SocialManager;
    .restart local v5       #socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #user:Lcom/layar/data/user/User;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .local v3, social:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #loginResponse:Lcom/layar/data/user/LoginResponse;
    .end local v3           #social:Ljava/lang/String;
    .end local v4           #socialManager:Lcom/layar/data/social/SocialManager;
    .end local v5           #socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #user:Lcom/layar/data/user/User;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 259
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v7

    const-string v8, "this shouldn\'t be happening"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 238
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    .restart local v2       #loginResponse:Lcom/layar/data/user/LoginResponse;
    .restart local v4       #socialManager:Lcom/layar/data/social/SocialManager;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v7

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_3

    .line 239
    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_4

    .line 240
    :cond_3
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setPassword(Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setOtherPhone(Z)V

    .line 245
    :cond_4
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 246
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/layar/data/user/UserManager;->access$0(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/User;)V

    .line 247
    iget-object v7, p0, Lcom/layar/data/user/UserManager$2;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setAccessToken(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
