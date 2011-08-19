.class Lcom/layar/data/user/UserManager$1;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/user/UserManager;->requestUserSettings(Lcom/layar/data/user/UserManager$LoginHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/user/UserManager;

.field private final synthetic val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/UserManager$LoginHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    iput-object p2, p0, Lcom/layar/data/user/UserManager$1;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 141
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was a problem when getting token..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object v0, p0, Lcom/layar/data/user/UserManager$1;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    new-instance v1, Lcom/layar/data/user/LoginResponse;

    .line 143
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/LoginResponse;-><init>(I)V

    .line 142
    invoke-interface {v0, v1}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    .line 144
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 9
    .parameter "responseString"

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/LoginResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/LoginResponse;

    move-result-object v2

    .line 107
    .local v2, loginResponse:Lcom/layar/data/user/LoginResponse;
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v4

    .line 108
    .local v4, socialManager:Lcom/layar/data/social/SocialManager;
    invoke-virtual {v4}, Lcom/layar/data/social/SocialManager;->setAllSocialsUnlinked()V

    .line 109
    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_1

    .line 110
    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getUser()Lcom/layar/data/user/User;

    move-result-object v6

    .line 111
    .local v6, user:Lcom/layar/data/user/User;
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7, v6}, Lcom/layar/data/user/UserManager;->access$0(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/User;)V

    .line 112
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    invoke-virtual {v6}, Lcom/layar/data/user/User;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setAccessToken(Ljava/lang/String;)V

    .line 113
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    invoke-virtual {v6}, Lcom/layar/data/user/User;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setUsername(Ljava/lang/String;)V

    .line 114
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    invoke-virtual {v2}, Lcom/layar/data/user/LoginResponse;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 115
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setOtherPhone(Z)V

    .line 116
    invoke-virtual {v6}, Lcom/layar/data/user/User;->getSocialNetworks()Ljava/util/ArrayList;

    move-result-object v5

    .line 117
    .local v5, socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 121
    invoke-static {}, Lcom/layar/App;->initPreferences()V

    .line 122
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7}, Lcom/layar/data/user/UserManager;->access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerManager;->resetCache()V

    .line 123
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    invoke-static {v7}, Lcom/layar/data/user/UserManager;->access$1(Lcom/layar/data/user/UserManager;)Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerManager;->resetYours()V

    .line 130
    .end local v5           #socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #user:Lcom/layar/data/user/User;
    :goto_1
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->val$loginHandler:Lcom/layar/data/user/UserManager$LoginHandler;

    invoke-interface {v7, v2}, Lcom/layar/data/user/UserManager$LoginHandler;->handleResponse(Lcom/layar/data/user/LoginResponse;)V

    .line 138
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #loginResponse:Lcom/layar/data/user/LoginResponse;
    .end local v4           #socialManager:Lcom/layar/data/social/SocialManager;
    :goto_2
    return-void

    .line 117
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    .restart local v2       #loginResponse:Lcom/layar/data/user/LoginResponse;
    .restart local v4       #socialManager:Lcom/layar/data/social/SocialManager;
    .restart local v5       #socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #user:Lcom/layar/data/user/User;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, social:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #loginResponse:Lcom/layar/data/user/LoginResponse;
    .end local v3           #social:Ljava/lang/String;
    .end local v4           #socialManager:Lcom/layar/data/social/SocialManager;
    .end local v5           #socials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #user:Lcom/layar/data/user/User;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 135
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/layar/data/user/UserManager;->access$2()Ljava/lang/String;

    move-result-object v7

    const-string v8, "this shouldn\'t be happening"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 126
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    .restart local v2       #loginResponse:Lcom/layar/data/user/LoginResponse;
    .restart local v4       #socialManager:Lcom/layar/data/social/SocialManager;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 127
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/layar/data/user/UserManager;->setAccessToken(Ljava/lang/String;)V

    .line 128
    iget-object v7, p0, Lcom/layar/data/user/UserManager$1;->this$0:Lcom/layar/data/user/UserManager;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/layar/data/user/UserManager;->access$0(Lcom/layar/data/user/UserManager;Lcom/layar/data/user/User;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
