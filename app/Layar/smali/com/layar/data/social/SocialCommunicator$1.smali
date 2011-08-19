.class Lcom/layar/data/social/SocialCommunicator$1;
.super Ljava/lang/Object;
.source "SocialCommunicator.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/social/SocialCommunicator;->getAssociateURL(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/social/SocialCommunicator;

.field private final synthetic val$handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/social/SocialCommunicator;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/social/SocialCommunicator$1;->this$0:Lcom/layar/data/social/SocialCommunicator;

    iput-object p2, p0, Lcom/layar/data/social/SocialCommunicator$1;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/layar/data/social/SocialCommunicator$1;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    new-instance v1, Lcom/layar/data/social/SocialAssociateResponce;

    .line 134
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/social/SocialAssociateResponce;-><init>(I)V

    .line 133
    invoke-interface {v0, v1}, Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;->handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V

    .line 135
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
    .line 118
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/social/SocialAssociateResponce;->parse(Lorg/json/JSONObject;)Lcom/layar/data/social/SocialAssociateResponce;

    move-result-object v2

    .line 122
    .local v2, response:Lcom/layar/data/social/SocialAssociateResponce;
    iget-object v3, p0, Lcom/layar/data/social/SocialCommunicator$1;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;->handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #response:Lcom/layar/data/social/SocialAssociateResponce;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 125
    .local v0, e:Lorg/json/JSONException;
    iget-object v3, p0, Lcom/layar/data/social/SocialCommunicator$1;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    new-instance v4, Lcom/layar/data/social/SocialAssociateResponce;

    .line 126
    const/4 v5, -0x3

    invoke-direct {v4, v5}, Lcom/layar/data/social/SocialAssociateResponce;-><init>(I)V

    .line 125
    invoke-interface {v3, v4}, Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;->handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V

    goto :goto_0
.end method
