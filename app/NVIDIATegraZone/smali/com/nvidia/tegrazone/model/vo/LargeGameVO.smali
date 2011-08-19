.class public Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
.super Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
.source "LargeGameVO.java"


# instance fields
.field cleanIntentURL:Ljava/lang/String;

.field comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

.field features:[Ljava/lang/String;

.field images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

.field intentURL:Ljava/lang/String;

.field largeIcon:Ljava/lang/String;

.field longDescription:Ljava/lang/String;

.field media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

.field officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

.field packageName:Ljava/lang/String;

.field pullquote:Ljava/lang/String;

.field quoteSource:Ljava/lang/String;

.field relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

.field videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    .locals 17
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super/range {p0 .. p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 118
    const-string v14, "images"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 119
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 120
    .local v9, tempArray:Lorg/json/JSONArray;
    const-string v14, "images"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 121
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    .line 122
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_12

    .line 129
    .end local v3           #i:I
    .end local v9           #tempArray:Lorg/json/JSONArray;
    :cond_0
    const-string v14, "videos"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 130
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 131
    .local v13, videoArray:Lorg/json/JSONArray;
    const-string v14, "videos"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 132
    if-eqz v13, :cond_1

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "link"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 133
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 134
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v5, v14, :cond_14

    .line 143
    .end local v5           #j:I
    .end local v13           #videoArray:Lorg/json/JSONArray;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    array-length v14, v14

    if-gtz v14, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    array-length v14, v14

    if-lez v14, :cond_8

    .line 145
    :cond_3
    const/4 v6, 0x0

    .line 146
    .local v6, mediaLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    array-length v14, v14

    if-lez v14, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    array-length v6, v14

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    array-length v14, v14

    if-lez v14, :cond_5

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    array-length v14, v14

    add-int/2addr v6, v14

    .line 153
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v10, tempArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/tegrazone/model/vo/MediaVO;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    array-length v14, v14

    if-lez v14, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    array-length v15, v14

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_16

    .line 161
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    array-length v14, v14

    if-lez v14, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    array-length v15, v14

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_17

    .line 168
    :cond_7
    new-array v14, v6, [Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-object v14, v0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 176
    .end local v6           #mediaLength:I
    .end local v10           #tempArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/tegrazone/model/vo/MediaVO;>;"
    :cond_8
    const-string v14, "intentURL"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "intentURL"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->setIntentURL(Ljava/lang/String;)V

    .line 178
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->intentURL:Ljava/lang/String;

    move-object v14, v0

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->intentURL:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Lcom/nvidia/tegrazone/utils/NVUtils;->cleanIntentURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->setCleanIntentURL(Ljava/lang/String;)V

    .line 183
    :cond_a
    const-string v14, "longDescription"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "longDescription"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->setLongDescription(Ljava/lang/String;)V

    .line 185
    :cond_b
    const-string v14, "officialReviews"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 186
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 187
    .local v8, reviewTempArray:Lorg/json/JSONArray;
    const-string v14, "officialReviews"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 188
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    .line 189
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_18

    .line 197
    .end local v3           #i:I
    .end local v8           #reviewTempArray:Lorg/json/JSONArray;
    :cond_c
    const-string v14, "relatedItems"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "relatedItems"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_d

    const-string v14, "relatedItems"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "null"

    if-eq v14, v15, :cond_d

    .line 200
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 203
    .local v7, relatedTempArray:Lorg/json/JSONArray;
    const-string v14, "relatedItems"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 204
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    .line 205
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_1a

    .line 212
    .end local v3           #i:I
    .end local v7           #relatedTempArray:Lorg/json/JSONArray;
    :cond_d
    const-string v14, "feedback"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 213
    new-instance v14, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    invoke-direct {v14}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;-><init>()V

    const-string v15, "feedback"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->setFeedback(Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)V

    .line 216
    :cond_e
    const-string v14, "features"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 217
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v2, featuresTempArray:Lorg/json/JSONArray;
    const-string v14, "features"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->features:[Ljava/lang/String;

    .line 220
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_1c

    .line 226
    .end local v2           #featuresTempArray:Lorg/json/JSONArray;
    .end local v3           #i:I
    :cond_f
    const-string v14, "quote"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 227
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 228
    .local v11, tempQuote:Lorg/json/JSONObject;
    const-string v14, "quote"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 230
    const-string v14, "source"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    const-string v14, "source"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->setQuoteSource(Ljava/lang/String;)V

    .line 231
    :cond_10
    const-string v14, "quote"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "quote"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->setPullquote(Ljava/lang/String;)V

    .line 235
    .end local v11           #tempQuote:Lorg/json/JSONObject;
    :cond_11
    return-object p0

    .line 123
    .restart local v3       #i:I
    .restart local v9       #tempArray:Lorg/json/JSONArray;
    :cond_12
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v14, v0

    new-instance v15, Lcom/nvidia/tegrazone/model/vo/ImageVO;

    invoke-direct {v15}, Lcom/nvidia/tegrazone/model/vo/ImageVO;-><init>()V

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/nvidia/tegrazone/model/vo/ImageVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-result-object v15

    aput-object v15, v14, v3

    .line 122
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 135
    .end local v3           #i:I
    .end local v9           #tempArray:Lorg/json/JSONArray;
    .restart local v5       #j:I
    .restart local v13       #videoArray:Lorg/json/JSONArray;
    :cond_14
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_15

    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "link"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v14, v0

    new-instance v15, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    invoke-direct {v15}, Lcom/nvidia/tegrazone/model/vo/VideoVO;-><init>()V

    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v15

    aput-object v15, v14, v5

    .line 134
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 156
    .end local v5           #j:I
    .end local v13           #videoArray:Lorg/json/JSONArray;
    .restart local v6       #mediaLength:I
    .restart local v10       #tempArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/tegrazone/model/vo/MediaVO;>;"
    :cond_16
    aget-object v12, v14, v16

    .line 157
    .local v12, video:Lcom/nvidia/tegrazone/model/vo/MediaVO;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 162
    .end local v12           #video:Lcom/nvidia/tegrazone/model/vo/MediaVO;
    :cond_17
    aget-object v4, v14, v16

    .line 163
    .local v4, image:Lcom/nvidia/tegrazone/model/vo/MediaVO;
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 190
    .end local v4           #image:Lcom/nvidia/tegrazone/model/vo/MediaVO;
    .end local v6           #mediaLength:I
    .end local v10           #tempArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/tegrazone/model/vo/MediaVO;>;"
    .restart local v3       #i:I
    .restart local v8       #reviewTempArray:Lorg/json/JSONArray;
    :cond_18
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_19

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-object v14, v0

    new-instance v15, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    invoke-direct {v15}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;-><init>()V

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v15

    aput-object v15, v14, v3

    .line 189
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 206
    .end local v8           #reviewTempArray:Lorg/json/JSONArray;
    .restart local v7       #relatedTempArray:Lorg/json/JSONArray;
    :cond_1a
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1b

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-object v14, v0

    new-instance v15, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    invoke-direct {v15}, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;-><init>()V

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v15

    aput-object v15, v14, v3

    .line 205
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 221
    .end local v7           #relatedTempArray:Lorg/json/JSONArray;
    .restart local v2       #featuresTempArray:Lorg/json/JSONArray;
    :cond_1c
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1d

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->features:[Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    .line 220
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6
.end method

.method public bridge synthetic copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    move-result-object v0

    return-object v0
.end method

.method public getCleanIntentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->cleanIntentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    return-object v0
.end method

.method public getFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->features:[Ljava/lang/String;

    return-object v0
.end method

.method public getImages()[Lcom/nvidia/tegrazone/model/vo/ImageVO;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    return-object v0
.end method

.method public getIntentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->intentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->largeIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->longDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    return-object v0
.end method

.method public getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPullquote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->pullquote:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->quoteSource:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    return-object v0
.end method

.method public getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    return-object v0
.end method

.method public setCleanIntentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "cleanIntentURL"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->cleanIntentURL:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setComments([Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;)V
    .locals 0
    .parameter "comments"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 64
    return-void
.end method

.method public setFeatures([Ljava/lang/String;)V
    .locals 0
    .parameter "features"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->features:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setImages([Lcom/nvidia/tegrazone/model/vo/ImageVO;)V
    .locals 0
    .parameter "images"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->images:[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    .line 58
    return-void
.end method

.method public setIntentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "intentURL"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->intentURL:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "largeIcon"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->largeIcon:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLongDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "longDescription"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->longDescription:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMedia([Lcom/nvidia/tegrazone/model/vo/MediaVO;)V
    .locals 0
    .parameter "media"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    .line 94
    return-void
.end method

.method public setOfficialReviews([Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;)V
    .locals 0
    .parameter "officialReviews"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    .line 70
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->packageName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPullquote(Ljava/lang/String;)V
    .locals 0
    .parameter "pullquote"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->pullquote:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setQuoteSource(Ljava/lang/String;)V
    .locals 0
    .parameter "quoteSource"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->quoteSource:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V
    .locals 0
    .parameter "relatedItems"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    .line 76
    return-void
.end method

.method public setVideos([Lcom/nvidia/tegrazone/model/vo/VideoVO;)V
    .locals 0
    .parameter "videos"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->videos:[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 88
    return-void
.end method
