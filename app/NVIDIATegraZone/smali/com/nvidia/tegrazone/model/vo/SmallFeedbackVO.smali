.class public Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;
.super Ljava/lang/Object;
.source "SmallFeedbackVO.java"


# instance fields
.field commentCount:I

.field ratingAvg:Ljava/lang/String;

.field ratingCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->ratingCount:I

    .line 6
    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "ratingCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ratingCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->setRatingCount(I)V

    .line 35
    :cond_0
    const-string v0, "ratingAvg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ratingAvg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->setRatingAvg(Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingAvg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->setRatingAvg(Ljava/lang/String;)V

    .line 38
    :cond_2
    const-string v0, "commentCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "commentCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->setCommentCount(I)V

    .line 40
    :cond_3
    return-object p0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->commentCount:I

    return v0
.end method

.method public getRatingAvg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->ratingAvg:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->ratingCount:I

    return v0
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "commentCount"

    .prologue
    .line 28
    iput p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->commentCount:I

    .line 29
    return-void
.end method

.method public setRatingAvg(Ljava/lang/String;)V
    .locals 0
    .parameter "ratingAvg"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->ratingAvg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setRatingCount(I)V
    .locals 0
    .parameter "ratingCount"

    .prologue
    .line 16
    iput p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->ratingCount:I

    .line 17
    return-void
.end method
