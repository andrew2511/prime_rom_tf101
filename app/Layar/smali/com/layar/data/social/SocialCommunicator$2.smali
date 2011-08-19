.class Lcom/layar/data/social/SocialCommunicator$2;
.super Ljava/lang/Object;
.source "SocialCommunicator.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/social/SocialCommunicator;->disassociate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/social/SocialCommunicator;

.field private final synthetic val$handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/social/SocialCommunicator;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/social/SocialCommunicator$2;->this$0:Lcom/layar/data/social/SocialCommunicator;

    iput-object p2, p0, Lcom/layar/data/social/SocialCommunicator$2;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/layar/data/social/SocialCommunicator$2;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

    new-instance v1, Lcom/layar/data/Response;

    .line 186
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/layar/data/Response;-><init>(I)V

    .line 185
    invoke-interface {v0, v1}, Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;->handleResponse(Lcom/layar/data/Response;)V

    .line 187
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
    .line 167
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v2

    .line 174
    .local v2, response:Lcom/layar/data/Response;
    iget-object v3, p0, Lcom/layar/data/social/SocialCommunicator$2;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

    invoke-interface {v3, v2}, Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;->handleResponse(Lcom/layar/data/Response;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .end local v2           #response:Lcom/layar/data/Response;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 177
    .local v0, e:Lorg/json/JSONException;
    iget-object v3, p0, Lcom/layar/data/social/SocialCommunicator$2;->val$handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

    new-instance v4, Lcom/layar/data/Response;

    .line 178
    const/4 v5, -0x3

    invoke-direct {v4, v5}, Lcom/layar/data/Response;-><init>(I)V

    .line 177
    invoke-interface {v3, v4}, Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;->handleResponse(Lcom/layar/data/Response;)V

    goto :goto_0
.end method
