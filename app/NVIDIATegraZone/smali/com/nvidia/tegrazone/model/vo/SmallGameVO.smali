.class public Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
.super Ljava/lang/Object;
.source "SmallGameVO.java"


# instance fields
.field appId:Ljava/lang/String;

.field developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

.field featuredImage:Ljava/lang/String;

.field feedback:Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

.field intentURL:Ljava/lang/String;

.field otherIntentURLs:[Ljava/lang/String;

.field price:Ljava/lang/String;

.field publishers:[Lcom/nvidia/tegrazone/model/vo/PublisherVO;

.field releaseDate:Ljava/lang/String;

.field reviews:Ljava/lang/String;

.field shortDescription:Ljava/lang/String;

.field smallImage:Ljava/lang/String;

.field sortOrder:I

.field tabletFeaturedImage:Ljava/lang/String;

.field title:Ljava/lang/String;

.field totalItems:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .locals 10
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v7, "objectName"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    const-string v7, "objectName"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setAppId(Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->appId:Ljava/lang/String;

    const-string v8, ".xml"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setAppId(Ljava/lang/String;)V

    .line 140
    :cond_0
    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setTitle(Ljava/lang/String;)V

    .line 142
    :cond_1
    const-string v7, "shortDescription"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "shortDescription"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setShortDescription(Ljava/lang/String;)V

    .line 144
    :cond_2
    const-string v7, "releaseDate"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "releaseDate"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setReleaseDate(Ljava/lang/String;)V

    .line 146
    :cond_3
    const-string v7, "smallImage"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v8

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "smallImage"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setSmallImage(Ljava/lang/String;)V

    .line 148
    :cond_4
    const-string v7, "featuredImage"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v8

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "featuredImage"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setFeaturedImage(Ljava/lang/String;)V

    .line 150
    :cond_5
    const-string v7, "tabletFeaturedImage"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v8

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "tabletFeaturedImage"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setTabletFeaturedImage(Ljava/lang/String;)V

    .line 152
    :cond_6
    const-string v7, "developers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 153
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 154
    .local v0, devArray:Lorg/json/JSONArray;
    const-string v7, "developers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    iput-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    .line 156
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_14

    .line 163
    .end local v0           #devArray:Lorg/json/JSONArray;
    .end local v3           #j:I
    :cond_7
    const-string v7, "publishers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 164
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 165
    .local v5, pubArray:Lorg/json/JSONArray;
    const-string v7, "publishers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    iput-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->publishers:[Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    .line 167
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_16

    .line 175
    .end local v3           #j:I
    .end local v5           #pubArray:Lorg/json/JSONArray;
    :cond_8
    const-string v7, "price"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "price"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setPrice(Ljava/lang/String;)V

    .line 182
    :cond_9
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FREE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Free"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const-string v7, "FREE"

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setPrice(Ljava/lang/String;)V

    .line 184
    :cond_b
    const-string v7, "reviews"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "reviews"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setReviews(Ljava/lang/String;)V

    .line 185
    :cond_c
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReviews()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReviews()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReviews()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const-string v7, "0"

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setReviews(Ljava/lang/String;)V

    .line 187
    :cond_e
    const-string v7, "sortOrder"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "sortOrder"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setSortOrder(I)V

    .line 189
    :cond_f
    const-string v7, "totalItems"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "totalItems"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setTotalItems(I)V

    .line 191
    :cond_10
    const-string v7, "feedback"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v7, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    invoke-direct {v7}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;-><init>()V

    const-string v8, "feedback"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setFeedback(Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)V

    .line 193
    :cond_11
    const-string v7, "intentURL"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 194
    const-string v7, "intentURL"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->setIntentURL(Ljava/lang/String;)V

    .line 201
    :cond_12
    const-string v7, "internationalStores"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 212
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 213
    .local v2, intlTempArray:Lorg/json/JSONArray;
    const-string v7, "internationalStores"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->otherIntentURLs:[Ljava/lang/String;

    .line 215
    const-string v6, ""

    .line 217
    .local v6, tempIntent:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_18

    .line 226
    .end local v1           #i:I
    .end local v2           #intlTempArray:Lorg/json/JSONArray;
    .end local v6           #tempIntent:Ljava/lang/String;
    :cond_13
    return-object p0

    .line 157
    .restart local v0       #devArray:Lorg/json/JSONArray;
    .restart local v3       #j:I
    :cond_14
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 158
    iget-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    new-instance v8, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    invoke-direct {v8}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;-><init>()V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v8

    aput-object v8, v7, v3

    .line 156
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 168
    .end local v0           #devArray:Lorg/json/JSONArray;
    .restart local v5       #pubArray:Lorg/json/JSONArray;
    :cond_16
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 169
    iget-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->publishers:[Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    new-instance v8, Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    invoke-direct {v8}, Lcom/nvidia/tegrazone/model/vo/PublisherVO;-><init>()V

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    move-result-object v8

    aput-object v8, v7, v3

    .line 167
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 218
    .end local v3           #j:I
    .end local v5           #pubArray:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v2       #intlTempArray:Lorg/json/JSONArray;
    .restart local v6       #tempIntent:Ljava/lang/String;
    :cond_18
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 219
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 220
    .local v4, obj:Lorg/json/JSONObject;
    const-string v7, "storeLink"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->otherIntentURLs:[Ljava/lang/String;

    const-string v8, "storeLink"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 217
    .end local v4           #obj:Lorg/json/JSONObject;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    return-object v0
.end method

.method public getDevelopers()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    return-object v0
.end method

.method public getFeaturedImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->featuredImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->feedback:Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    return-object v0
.end method

.method public getIntentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->intentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherIntentURLs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->otherIntentURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()[Lcom/nvidia/tegrazone/model/vo/PublisherVO;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->publishers:[Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReviews()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->reviews:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->smallImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->sortOrder:I

    return v0
.end method

.method public getTabletFeaturedImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->tabletFeaturedImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->totalItems:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->appId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDeveloper([Lcom/nvidia/tegrazone/model/vo/DeveloperVO;)V
    .locals 0
    .parameter "developer"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    .line 94
    return-void
.end method

.method public setDevelopers([Lcom/nvidia/tegrazone/model/vo/DeveloperVO;)V
    .locals 0
    .parameter "developers"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->developers:[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    .line 119
    return-void
.end method

.method public setFeaturedImage(Ljava/lang/String;)V
    .locals 0
    .parameter "featuredImage"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->featuredImage:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFeedback(Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)V
    .locals 0
    .parameter "feedback"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->feedback:Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    .line 106
    return-void
.end method

.method public setIntentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "intentURL"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->intentURL:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOtherIntentURLs([Ljava/lang/String;)V
    .locals 0
    .parameter "otherIntentURLs"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->otherIntentURLs:[Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->price:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPublishers([Lcom/nvidia/tegrazone/model/vo/PublisherVO;)V
    .locals 0
    .parameter "publishers"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->publishers:[Lcom/nvidia/tegrazone/model/vo/PublisherVO;

    .line 100
    return-void
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 0
    .parameter "releaseDate"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->releaseDate:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setReviews(Ljava/lang/String;)V
    .locals 0
    .parameter "reviews"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->reviews:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "shortDescription"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->shortDescription:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSmallImage(Ljava/lang/String;)V
    .locals 0
    .parameter "smallImage"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->smallImage:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 33
    iput p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->sortOrder:I

    .line 34
    return-void
.end method

.method public setTabletFeaturedImage(Ljava/lang/String;)V
    .locals 0
    .parameter "tabletFeaturedImage"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->tabletFeaturedImage:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->title:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTotalItems(I)V
    .locals 0
    .parameter "totalItems"

    .prologue
    .line 124
    iput p1, p0, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->totalItems:I

    .line 125
    return-void
.end method
