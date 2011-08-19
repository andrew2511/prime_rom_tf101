.class public Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
.super Ljava/lang/Object;
.source "OfficialReviewVO.java"


# instance fields
.field releaseDate:Ljava/lang/String;

.field reviewSource:Ljava/lang/String;

.field reviewText:Ljava/lang/String;

.field reviewUrl:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->setTitle(Ljava/lang/String;)V

    .line 48
    :cond_0
    const-string v0, "reviewText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reviewText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->setReviewText(Ljava/lang/String;)V

    .line 49
    :cond_1
    const-string v0, "reviewUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "reviewUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->setReviewURL(Ljava/lang/String;)V

    .line 50
    :cond_2
    const-string v0, "reviewSource"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "reviewSource"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->setReviewSource(Ljava/lang/String;)V

    .line 51
    :cond_3
    return-object p0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->reviewSource:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->reviewText:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->reviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 0
    .parameter "releaseDate"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->releaseDate:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setReviewSource(Ljava/lang/String;)V
    .locals 0
    .parameter "reviewSource"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->reviewSource:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setReviewText(Ljava/lang/String;)V
    .locals 0
    .parameter "reviewText"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->reviewText:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setReviewURL(Ljava/lang/String;)V
    .locals 0
    .parameter "reviewUrl"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->reviewUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->title:Ljava/lang/String;

    .line 18
    return-void
.end method
