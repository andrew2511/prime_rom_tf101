.class Lcom/layar/data/social/SocialCommunicator$3;
.super Ljava/lang/Object;
.source "SocialCommunicator.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/social/SocialCommunicator;->getFriendsList(Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$handler:Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/social/SocialCommunicator$3;->val$handler:Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 368
    sget-object v0, Lcom/layar/data/social/SocialCommunicator;->TAG:Ljava/lang/String;

    const-string v1, "There was a problem when getting friends list"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    iget-object v0, p0, Lcom/layar/data/social/SocialCommunicator$3;->val$handler:Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;

    new-instance v1, Lcom/layar/data/user/FriendsListResponse;

    .line 371
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/user/FriendsListResponse;-><init>(I)V

    .line 370
    invoke-interface {v0, v1}, Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;->handleResponse(Lcom/layar/data/user/FriendsListResponse;)V

    .line 372
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
    .line 352
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, json:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/user/FriendsListResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/user/FriendsListResponse;

    move-result-object v2

    .line 356
    .local v2, response:Lcom/layar/data/user/FriendsListResponse;
    iget-object v3, p0, Lcom/layar/data/social/SocialCommunicator$3;->val$handler:Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;->handleResponse(Lcom/layar/data/user/FriendsListResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #response:Lcom/layar/data/user/FriendsListResponse;
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 360
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/layar/data/social/SocialCommunicator;->TAG:Ljava/lang/String;

    const-string v4, "this shouldn\'t be happening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    iget-object v3, p0, Lcom/layar/data/social/SocialCommunicator$3;->val$handler:Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;

    new-instance v4, Lcom/layar/data/user/FriendsListResponse;

    .line 362
    const/4 v5, -0x3

    invoke-direct {v4, v5}, Lcom/layar/data/user/FriendsListResponse;-><init>(I)V

    .line 361
    invoke-interface {v3, v4}, Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;->handleResponse(Lcom/layar/data/user/FriendsListResponse;)V

    goto :goto_0
.end method
