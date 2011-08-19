.class public Lcom/layar/data/layer/Layer20;
.super Ljava/lang/Object;
.source "Layer20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;,
        Lcom/layar/data/layer/Layer20$Premium;
    }
.end annotation


# static fields
.field public static final BANNER_ICON:Ljava/lang/String; = "banner_icon"

.field public static final BIW_BG:Ljava/lang/String; = "biw_bg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CIW_FOCUS:I = 0x3

.field public static final CIW_INNER:I = 0x0

.field public static final CIW_MIDDLE:I = 0x1

.field public static final CIW_OUTER:I = 0x2

.field public static final ICON:Ljava/lang/String; = "icon"

.field private static final TAG:Ljava/lang/String; = "layar.Layer20"

.field private static layarFoundedDateValue:J


# instance fields
.field public action:Ljava/lang/String;

.field public authDescription:Ljava/lang/String;

.field public authLabel:Ljava/lang/String;

.field public authParams:Ljava/lang/String;

.field public authRequired:Z

.field public authURL:Ljava/lang/String;

.field public bannerBgColor:I

.field public bannerTxtColor:I

.field public biwBgColor:I

.field private ciwBitmaps:[[Landroid/graphics/Bitmap;

.field public countryCode:Ljava/lang/String;

.field public custom_ciws:[[Z

.field public description:Ljava/lang/String;

.field public detailDescription:Ljava/lang/String;

.field public filters:[Lcom/layar/data/Filter;

.field public flexibleRadius:Z

.field public hasBannerIcon:Z

.field public hasBiwBg:Z

.field public headerText:Ljava/lang/String;

.field public hostedShareText:Ljava/lang/String;

.field public hostedShareUrl:Ljava/lang/String;

.field public innerColor:I

.field public keyword:Ljava/lang/String;

.field public layerType:I

.field public linkUrl:Ljava/lang/String;

.field public middleColor:I

.field public modified:J

.field public name:Ljava/lang/String;

.field public outerColor:I

.field public poiDomainURL:Ljava/lang/String;

.field public poiUpdatesEnabled:Z

.field public premium:Lcom/layar/data/layer/Layer20$Premium;

.field public publicationDate:J

.field public publisher:Ljava/lang/String;

.field public publisherEmail:Ljava/lang/String;

.field public replaceFilters:Z

.field public scope:I

.field public screenshotURL:Ljava/lang/String;

.field public shortDescription:Ljava/lang/String;

.field public showFilterOnLaunch:Z

.field public showTakeMeThere:Z

.field public spotColor:I

.field public status:I

.field public supportsFlexibleRadius:Z

.field public textColor:I

.field public title:Ljava/lang/String;

.field public titleColor:I

.field public triedAuthOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/layar/data/layer/Layer20;->layarFoundedDateValue:J

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->authParams:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->authDescription:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->screenshotURL:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->linkUrl:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->hostedShareUrl:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->hostedShareText:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    .line 90
    iput-boolean v2, p0, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    .line 102
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    .line 103
    const-string v0, "refresh"

    iput-object v0, p0, Lcom/layar/data/layer/Layer20;->action:Ljava/lang/String;

    .line 104
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/layar/data/layer/Layer20;->scope:I

    .line 105
    iput-boolean v2, p0, Lcom/layar/data/layer/Layer20;->supportsFlexibleRadius:Z

    .line 106
    iput-boolean v2, p0, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    .line 107
    iput-object v1, p0, Lcom/layar/data/layer/Layer20;->keyword:Ljava/lang/String;

    .line 109
    iput-boolean v2, p0, Lcom/layar/data/layer/Layer20;->poiUpdatesEnabled:Z

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->ciwBitmaps:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/data/layer/Layer20;[[Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/layar/data/layer/Layer20;->ciwBitmaps:[[Landroid/graphics/Bitmap;

    return-void
.end method

.method public static parseCustomCIWs(Lorg/json/JSONArray;)[[Z
    .locals 10
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v3, v5

    .line 217
    .local v3, len:I
    :goto_0
    const/4 v5, 0x4

    filled-new-array {v3, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    .line 218
    .local v0, ciws:[[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 230
    return-object v0

    .end local v0           #ciws:[[Z
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_0
    move v3, v9

    .line 216
    goto :goto_0

    .line 219
    .restart local v0       #ciws:[[Z
    .restart local v1       #i:I
    .restart local v3       #len:I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 220
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "poiType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 221
    .local v4, type:I
    if-gt v4, v3, :cond_2

    .line 222
    sub-int v5, v4, v8

    aget-object v5, v0, v5

    const-string v6, "inner"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v5, v9

    .line 223
    sub-int v5, v4, v8

    aget-object v5, v0, v5

    const-string v6, "middle"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v5, v8

    .line 224
    sub-int v5, v4, v8

    aget-object v5, v0, v5

    const/4 v6, 0x2

    const-string v7, "outer"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v5, v6

    .line 225
    sub-int v5, v4, v8

    aget-object v5, v0, v5

    const/4 v6, 0x3

    const-string v7, "focus"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v5, v6

    .line 218
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_2
    const-string v5, "layar.Layer20"

    const-string v6, "Received a POI type out of range"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static parseFilters(Lorg/json/JSONArray;)[Lcom/layar/data/Filter;
    .locals 7
    .parameter "ary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v6

    .line 265
    .local v3, len:I
    :goto_0
    new-array v4, v3, [Lcom/layar/data/Filter;

    .line 266
    .local v4, result:[Lcom/layar/data/Filter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 273
    return-object v4

    .line 264
    .end local v1           #i:I
    .end local v3           #len:I
    .end local v4           #result:[Lcom/layar/data/Filter;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 267
    .restart local v1       #i:I
    .restart local v3       #len:I
    .restart local v4       #result:[Lcom/layar/data/Filter;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 268
    .local v2, json:Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, type:Ljava/lang/String;
    new-instance v0, Lcom/layar/data/Filter;

    invoke-direct {v0, v5}, Lcom/layar/data/Filter;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, filter:Lcom/layar/data/Filter;
    iput-object v2, v0, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .line 271
    aput-object v0, v4, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static parseLayer(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20;
    .locals 14
    .parameter "json"

    .prologue
    const/4 v13, 0x0

    .line 114
    new-instance v6, Lcom/layar/data/layer/Layer20;

    invoke-direct {v6}, Lcom/layar/data/layer/Layer20;-><init>()V

    .line 116
    .local v6, result:Lcom/layar/data/layer/Layer20;
    :try_start_0
    const-string v9, "name"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 117
    const-string v9, "type"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->layerType:I

    .line 118
    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    .line 119
    const-string v9, "publisher"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    .line 120
    const-string v9, "publisher_email"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->publisherEmail:Ljava/lang/String;

    .line 121
    const-string v9, "shortDescription"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->shortDescription:Ljava/lang/String;

    .line 122
    const-string v9, "detailDescription"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->detailDescription:Ljava/lang/String;

    .line 123
    const-string v9, "description"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->description:Ljava/lang/String;

    .line 125
    const-string v9, "bannerBgColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    .line 126
    const-string v9, "bannerTxtColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    .line 127
    const-string v9, "hasBannerIcon"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->hasBannerIcon:Z

    .line 129
    const-string v9, "innerColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->innerColor:I

    .line 130
    const-string v9, "middleColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->middleColor:I

    .line 131
    const-string v9, "outerColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->outerColor:I

    .line 132
    const-string v9, "spotColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->spotColor:I

    .line 134
    const-string v9, "titleColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->titleColor:I

    .line 135
    const-string v9, "textColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->textColor:I

    .line 136
    const-string v9, "biwBgColor"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->translateColor(I)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 137
    const-string v9, "hasBiwBg"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->hasBiwBg:Z

    .line 139
    const-string v9, "linkUrl"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->linkUrl:Ljava/lang/String;

    .line 141
    const-string v9, "status"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/layar/data/layer/Layer20;->status:I

    .line 142
    const-string v9, "modified"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/layar/data/layer/Layer20;->modified:J

    .line 144
    sget-wide v9, Lcom/layar/data/layer/Layer20;->layarFoundedDateValue:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 145
    invoke-static {}, Lcom/layar/util/Util;->getLayarFoundedDateValue()J

    move-result-wide v9

    sput-wide v9, Lcom/layar/data/layer/Layer20;->layarFoundedDateValue:J

    .line 146
    :cond_0
    const-string v9, "publicationDate"

    .line 147
    sget-wide v10, Lcom/layar/data/layer/Layer20;->layarFoundedDateValue:J

    .line 146
    invoke-virtual {p0, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/layar/data/layer/Layer20;->publicationDate:J

    .line 149
    const-string v9, "showFilterOnLaunch"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    .line 150
    const-string v9, "countryCode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->countryCode:Ljava/lang/String;

    .line 152
    const-string v9, "customCiws"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->parseCustomCIWs(Lorg/json/JSONArray;)[[Z

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    .line 154
    const-string v9, "premium"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->parsePremium(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20$Premium;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    .line 156
    const-string v9, "filters"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 157
    .local v0, ary:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/layar/data/layer/Layer20;->parseFilters(Lorg/json/JSONArray;)[Lcom/layar/data/Filter;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    .line 159
    const-string v9, "screenshots"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 160
    .local v7, screenshots:Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 161
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->screenshotURL:Ljava/lang/String;

    .line 164
    :cond_1
    const/4 v4, 0x0

    .line 165
    .local v4, hasRangeSlider:Z
    iget-object v9, v6, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    array-length v10, v9

    move v11, v13

    :goto_0
    if-lt v11, v10, :cond_5

    .line 183
    if-nez v4, :cond_2

    .line 184
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->supportsFlexibleRadius:Z

    .line 185
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    .line 189
    :cond_2
    const-string v9, "replaceFilters"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    .line 190
    const-string v9, "takeMeThereEnabled"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    .line 192
    const-string v9, "authURL"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    const-string v9, "authRequired"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/layar/data/layer/Layer20;->authRequired:Z

    .line 194
    const-string v9, "authLabel"

    const-string v10, "Login"

    invoke-virtual {p0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    .line 195
    const-string v9, "authDescription"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->authDescription:Ljava/lang/String;

    .line 196
    const-string v9, "poiDomainURL"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    .line 197
    const-string v9, "authURL"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    .line 199
    const-string v9, "authParams"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->authParams:Ljava/lang/String;

    .line 202
    :cond_3
    const-string v9, "hostedScreenshot"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 203
    .local v5, jsonHostedShare:Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    .line 204
    const-string v9, "url"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->hostedShareUrl:Ljava/lang/String;

    .line 205
    const-string v9, "buttonText"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/layar/data/layer/Layer20;->hostedShareText:Ljava/lang/String;

    :cond_4
    move-object v9, v6

    .line 211
    .end local v0           #ary:Lorg/json/JSONArray;
    .end local v4           #hasRangeSlider:Z
    .end local v5           #jsonHostedShare:Lorg/json/JSONObject;
    .end local v7           #screenshots:Lorg/json/JSONArray;
    :goto_1
    return-object v9

    .line 165
    .restart local v0       #ary:Lorg/json/JSONArray;
    .restart local v4       #hasRangeSlider:Z
    .restart local v7       #screenshots:Lorg/json/JSONArray;
    :cond_5
    aget-object v2, v9, v11

    .line 166
    .local v2, filter:Lcom/layar/data/Filter;
    iget-object v3, v2, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .line 167
    .local v3, filterDetails:Lorg/json/JSONObject;
    if-nez v3, :cond_7

    .line 165
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 169
    :cond_7
    const-string v12, "type"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, type:Ljava/lang/String;
    const-string v12, "RANGE_SLIDER"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 171
    const/4 v4, 0x1

    .line 172
    const-string v12, "value"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 173
    const-string v12, ""

    const-string v13, "value"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 174
    const-string v12, "value"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v6, Lcom/layar/data/layer/Layer20;->scope:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 207
    .end local v0           #ary:Lorg/json/JSONArray;
    .end local v2           #filter:Lcom/layar/data/Filter;
    .end local v3           #filterDetails:Lorg/json/JSONObject;
    .end local v4           #hasRangeSlider:Z
    .end local v7           #screenshots:Lorg/json/JSONArray;
    .end local v8           #type:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 208
    .local v1, e:Lorg/json/JSONException;
    const-string v9, "layar.Layer20"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "JSONException in layer "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v9, 0x0

    goto :goto_1

    .line 176
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #ary:Lorg/json/JSONArray;
    .restart local v2       #filter:Lcom/layar/data/Filter;
    .restart local v3       #filterDetails:Lorg/json/JSONObject;
    .restart local v4       #hasRangeSlider:Z
    .restart local v7       #screenshots:Lorg/json/JSONArray;
    .restart local v8       #type:Ljava/lang/String;
    :cond_8
    const/4 v12, 0x1

    :try_start_1
    iput-boolean v12, v6, Lcom/layar/data/layer/Layer20;->supportsFlexibleRadius:Z

    .line 177
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    .line 178
    const-string v12, "minvalue"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v6, Lcom/layar/data/layer/Layer20;->scope:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static parsePremium(Ljava/lang/String;)Lcom/layar/data/layer/Layer20$Premium;
    .locals 1
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/layar/data/layer/Layer20;->parsePremium(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20$Premium;

    move-result-object v0

    goto :goto_0
.end method

.method public static parsePremium(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20$Premium;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    .line 244
    :cond_0
    new-instance v0, Lcom/layar/data/layer/Layer20$Premium;

    invoke-direct {v0}, Lcom/layar/data/layer/Layer20$Premium;-><init>()V

    .line 245
    .local v0, p:Lcom/layar/data/layer/Layer20$Premium;
    const-string v1, "price"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/layer/Layer20$Premium;->price:Ljava/lang/String;

    .line 246
    const-string v1, "currency"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/layer/Layer20$Premium;->currency:Ljava/lang/String;

    .line 247
    const-string v1, "purchased"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    move-object v1, v0

    .line 249
    goto :goto_0
.end method

.method public static toJsonString(Lcom/layar/data/layer/Layer20$Premium;)Ljava/lang/String;
    .locals 3
    .parameter "premium"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p0, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 260
    :goto_0
    return-object v1

    .line 256
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 257
    .local v0, json:Lorg/json/JSONObject;
    const-string v1, "price"

    iget-object v2, p0, Lcom/layar/data/layer/Layer20$Premium;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "currency"

    iget-object v2, p0, Lcom/layar/data/layer/Layer20$Premium;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v1, "purchased"

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static translateColor(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 277
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-eq v0, p0, :cond_0

    move v0, p0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    or-int/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method public clearCustomCiws()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->ciwBitmaps:[[Landroid/graphics/Bitmap;

    .line 317
    .local v2, tmp:[[Landroid/graphics/Bitmap;
    iput-object v4, p0, Lcom/layar/data/layer/Layer20;->ciwBitmaps:[[Landroid/graphics/Bitmap;

    .line 319
    if-eqz v2, :cond_0

    .line 320
    const/4 v1, 0x0

    .local v1, t:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 328
    .end local v1           #t:I
    :cond_0
    return-void

    .line 321
    .restart local v1       #t:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_2
    aget-object v3, v2, v1

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 323
    aget-object v3, v2, v1

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    aget-object v3, v2, v1

    aput-object v4, v3, v0

    .line 321
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCustomCIWsJsonText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 284
    .local v0, array:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    if-eqz v3, :cond_0

    .line 285
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 295
    .end local v2           #i:I
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 286
    .restart local v2       #i:I
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .local v1, ciw:Lorg/json/JSONObject;
    const-string v3, "poiType"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 288
    const-string v3, "inner"

    iget-object v4, p0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 289
    const-string v3, "middle"

    iget-object v4, p0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 290
    const-string v3, "outer"

    iget-object v4, p0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 291
    const-string v3, "focus"

    iget-object v4, p0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 292
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCustomCiws()[[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->ciwBitmaps:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFiltersJsonText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 300
    .local v0, ary:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    .line 304
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 301
    :cond_1
    aget-object v1, v2, v4

    .line 302
    .local v1, filter:Lcom/layar/data/Filter;
    iget-object v5, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public hasFilters()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSettings()Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/layar/data/layer/Layer20;->hasFilters()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initCustomCiws()V
    .locals 3

    .prologue
    .line 309
    :try_start_0
    new-instance v1, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;

    invoke-direct {v1, p0}, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;-><init>(Lcom/layar/data/layer/Layer20;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 311
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "layar.Layer20"

    const-string v2, "Could not load custom CIWs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/Layer20;->keyword:Ljava/lang/String;

    .line 348
    return-void
.end method
