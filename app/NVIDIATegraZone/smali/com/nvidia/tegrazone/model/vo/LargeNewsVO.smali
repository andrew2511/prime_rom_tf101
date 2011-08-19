.class public Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;
.super Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
.source "LargeNewsVO.java"


# instance fields
.field headerImage:Ljava/lang/String;

.field longDescription:Ljava/lang/String;

.field relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

.field videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .line 47
    const-string v4, "longDescription"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "longDescription"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->setLongDescription(Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string v4, "headerImage"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v5

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "headerImage"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->setHeaderImage(Ljava/lang/String;)V

    .line 51
    :cond_1
    const-string v4, "relatedItems"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "relatedItems"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "relatedItems"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    if-eq v4, v5, :cond_2

    .line 54
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v2, relatedTempArray:Lorg/json/JSONArray;
    const-string v4, "relatedItems"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    iput-object v4, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 64
    .end local v0           #i:I
    .end local v2           #relatedTempArray:Lorg/json/JSONArray;
    :cond_2
    const-string v4, "videos"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v3, videoArray:Lorg/json/JSONArray;
    const-string v4, "videos"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 67
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "link"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/nvidia/tegrazone/model/vo/VideoVO;

    iput-object v4, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 69
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 77
    .end local v1           #j:I
    .end local v3           #videoArray:Lorg/json/JSONArray;
    :cond_3
    return-object p0

    .line 58
    .restart local v0       #i:I
    .restart local v2       #relatedTempArray:Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 59
    iget-object v4, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    new-instance v5, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    invoke-direct {v5}, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v5

    aput-object v5, v4, v0

    .line 57
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0           #i:I
    .end local v2           #relatedTempArray:Lorg/json/JSONArray;
    .restart local v1       #j:I
    .restart local v3       #videoArray:Lorg/json/JSONArray;
    :cond_6
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "link"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 71
    iget-object v4, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    new-instance v5, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    invoke-direct {v5}, Lcom/nvidia/tegrazone/model/vo/VideoVO;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v5

    aput-object v5, v4, v1

    .line 69
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->headerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->longDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    return-object v0
.end method

.method public getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    return-object v0
.end method

.method public setHeaderImage(Ljava/lang/String;)V
    .locals 0
    .parameter "headerImage"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->headerImage:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setLongDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "longDescription"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->longDescription:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V
    .locals 0
    .parameter "relatedItems"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    .line 34
    return-void
.end method

.method public setVideos([Lcom/nvidia/tegrazone/model/vo/VideoVO;)V
    .locals 0
    .parameter "videos"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 41
    return-void
.end method
