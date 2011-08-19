.class public Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
.super Ljava/lang/Object;
.source "LargeFeedbackVO.java"


# instance fields
.field cID:Ljava/lang/String;

.field comment:Ljava/lang/String;

.field commentDate:Ljava/lang/String;

.field rID:Ljava/lang/String;

.field rating:Ljava/lang/String;

.field title:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .locals 2
    .parameter "json"

    .prologue
    .line 59
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setcID(Ljava/lang/String;)V

    .line 61
    :cond_0
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "rid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setrID(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v0, "commentDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "commentDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setCommentDate(Ljava/lang/String;)V

    .line 65
    :cond_2
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setTitle(Ljava/lang/String;)V

    .line 67
    :cond_3
    const-string v0, "commentBody"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "commentBody"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setComment(Ljava/lang/String;)V

    .line 69
    :cond_4
    const-string v0, "userID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setUsername(Ljava/lang/String;)V

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 71
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    :cond_6
    const-string v0, "Anonymous"

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setUsername(Ljava/lang/String;)V

    .line 74
    :cond_7
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->setRating(Ljava/lang/String;)V

    .line 76
    :cond_8
    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->commentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getcID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->cID:Ljava/lang/String;

    return-object v0
.end method

.method public getrID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->rID:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->comment:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCommentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "commentDate"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->commentDate:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0
    .parameter "rating"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->rating:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->title:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->username:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setcID(Ljava/lang/String;)V
    .locals 0
    .parameter "cID"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->cID:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setrID(Ljava/lang/String;)V
    .locals 0
    .parameter "rID"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->rID:Ljava/lang/String;

    .line 49
    return-void
.end method
