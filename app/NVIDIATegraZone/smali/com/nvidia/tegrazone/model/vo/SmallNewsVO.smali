.class public Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
.super Ljava/lang/Object;
.source "SmallNewsVO.java"


# instance fields
.field author:Ljava/lang/String;

.field featuredImage:Ljava/lang/String;

.field newsId:Ljava/lang/String;

.field releaseDate:Ljava/lang/String;

.field shortDescription:Ljava/lang/String;

.field smallImage:Ljava/lang/String;

.field sortRank:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "objectName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "objectName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setNewsId(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->newsId:Ljava/lang/String;

    const-string v1, ".xml"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setNewsId(Ljava/lang/String;)V

    .line 76
    :cond_0
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setTitle(Ljava/lang/String;)V

    .line 78
    :cond_1
    const-string v0, "author"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "author"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setAuthor(Ljava/lang/String;)V

    .line 80
    :cond_2
    const-string v0, "shortDescription"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "shortDescription"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setShortDescription(Ljava/lang/String;)V

    .line 82
    :cond_3
    const-string v0, "releaseDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "releaseDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setReleaseDate(Ljava/lang/String;)V

    .line 84
    :cond_4
    const-string v0, "smallImage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "smallImage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setSmallImage(Ljava/lang/String;)V

    .line 86
    :cond_5
    const-string v0, "featuredImage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "featuredImage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setFeaturedImage(Ljava/lang/String;)V

    .line 88
    :cond_6
    const-string v0, "sortRank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sortRank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->setSortRank(I)V

    .line 90
    :cond_7
    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturedImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->featuredImage:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->smallImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSortRank()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->sortRank:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "author"

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->author:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFeaturedImage(Ljava/lang/String;)V
    .locals 0
    .parameter "featuredImage"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->featuredImage:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setNewsId(Ljava/lang/String;)V
    .locals 0
    .parameter "newsId"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->newsId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 1
    .parameter "releaseDate"

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->releaseDate:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "shortDescription"

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->shortDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSmallImage(Ljava/lang/String;)V
    .locals 1
    .parameter "smallImage"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->smallImage:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSortRank(I)V
    .locals 0
    .parameter "sortRank"

    .prologue
    .line 22
    iput p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->sortRank:I

    .line 23
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->title:Ljava/lang/String;

    .line 59
    return-void
.end method
