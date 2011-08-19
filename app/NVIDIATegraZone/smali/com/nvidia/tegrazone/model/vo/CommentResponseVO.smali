.class public Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;
.super Ljava/lang/Object;
.source "CommentResponseVO.java"


# instance fields
.field public cid:Ljava/lang/String;

.field public rid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;
    .locals 1
    .parameter "json"

    .prologue
    .line 23
    const-string v0, "cID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->setCid(Ljava/lang/String;)V

    .line 24
    :cond_0
    const-string v0, "rID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "rID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->setRid(Ljava/lang/String;)V

    .line 25
    :cond_1
    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->rid:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->cid:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .parameter "rid"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->rid:Ljava/lang/String;

    .line 19
    return-void
.end method
