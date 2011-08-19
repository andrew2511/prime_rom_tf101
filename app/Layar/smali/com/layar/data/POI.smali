.class public Lcom/layar/data/POI;
.super Lcom/layar/data/BasePOI;
.source "POI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "layar.POI"


# instance fields
.field public attribution:Ljava/lang/String;

.field public imageURL:Ljava/lang/String;

.field public layerName:Ljava/lang/String;

.field public line2:Ljava/lang/String;

.field public line3:Ljava/lang/String;

.field public line4:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/layar/data/BasePOI;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/layar/data/POI;->line2:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/layar/data/POI;->line3:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/layar/data/POI;->line4:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/layar/data/POI;->attribution:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/data/POI;->poiType:I

    .line 32
    return-void
.end method

.method public static parsePOIData(Lorg/json/JSONObject;)Lcom/layar/data/POI;
    .locals 1
    .parameter "json"

    .prologue
    .line 35
    new-instance v0, Lcom/layar/data/POI;

    invoke-direct {v0}, Lcom/layar/data/POI;-><init>()V

    invoke-static {p0, v0}, Lcom/layar/data/POI;->parsePOIData(Lorg/json/JSONObject;Lcom/layar/data/POI;)Lcom/layar/data/POI;

    move-result-object v0

    return-object v0
.end method

.method public static parsePOIData(Lorg/json/JSONObject;Lcom/layar/data/POI;)Lcom/layar/data/POI;
    .locals 5
    .parameter "json"
    .parameter "result"

    .prologue
    .line 40
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->id:Ljava/lang/String;

    .line 46
    :goto_0
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->title:Ljava/lang/String;

    .line 47
    const-string v0, "line2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "line2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->line2:Ljava/lang/String;

    .line 49
    :cond_0
    const-string v0, "line3"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "line3"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->line3:Ljava/lang/String;

    .line 51
    :cond_1
    const-string v0, "line4"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    const-string v0, "line4"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->line4:Ljava/lang/String;

    .line 53
    :cond_2
    const-string v0, "attribution"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    const-string v0, "attribution"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->attribution:Ljava/lang/String;

    .line 56
    :cond_3
    const-string v0, "dimension"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    const-string v0, "dimension"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/layar/data/POI;->dimension:I

    .line 61
    :cond_4
    const-string v0, "object"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 62
    const-string v0, "object"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    .local v1, jsonObject:Lorg/json/JSONObject;
    new-instance v0, Lcom/layar/data/BasePOI$POIObject;

    invoke-direct {v0}, Lcom/layar/data/BasePOI$POIObject;-><init>()V

    iput-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, baseURL:Ljava/lang/String;
    const-string v2, "baseURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 66
    const-string v0, "baseURL"

    .end local v0           #baseURL:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #baseURL:Ljava/lang/String;
    :cond_5
    const-string v2, "full"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 68
    iget-object v2, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v0, :cond_13

    .line 69
    const-string v3, "full"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    :goto_1
    iput-object v3, v2, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    .line 75
    :cond_6
    :goto_2
    const-string v2, "reduced"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 76
    iget-object v2, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v0, :cond_15

    .line 77
    const-string v3, "reduced"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    :goto_3
    iput-object v3, v2, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    .line 80
    :cond_7
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 81
    iget-object v2, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v0, :cond_16

    .line 82
    const-string v0, "icon"

    .end local v0           #baseURL:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_4
    iput-object v0, v2, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    .line 85
    :cond_8
    const-string v0, "size"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 86
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .end local v1           #jsonObject:Lorg/json/JSONObject;
    double-to-float v1, v1

    iput v1, v0, Lcom/layar/data/BasePOI$POIObject;->size:F

    .line 89
    :cond_9
    const-string v0, "transform"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 90
    new-instance v0, Lcom/layar/data/Transform;

    invoke-direct {v0}, Lcom/layar/data/Transform;-><init>()V

    iput-object v0, p1, Lcom/layar/data/POI;->transform:Lcom/layar/data/Transform;

    .line 91
    const-string v0, "transform"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    .local v0, transformObject:Lorg/json/JSONObject;
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 93
    iget-object v1, p1, Lcom/layar/data/POI;->transform:Lcom/layar/data/Transform;

    const-string v2, "scale"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/layar/data/Transform;->scale:F

    .line 94
    :cond_a
    const-string v1, "rel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 95
    iget-object v1, p1, Lcom/layar/data/POI;->transform:Lcom/layar/data/Transform;

    const-string v2, "rel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/layar/data/Transform;->rel:Z

    .line 96
    :cond_b
    const-string v1, "angle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 97
    iget-object v1, p1, Lcom/layar/data/POI;->transform:Lcom/layar/data/Transform;

    const-string v2, "angle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lcom/layar/data/Transform;->angle:F

    .line 100
    .end local v0           #transformObject:Lorg/json/JSONObject;
    :cond_c
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 101
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/layar/data/POI;->type:I

    .line 103
    :cond_d
    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    iput-wide v0, p1, Lcom/layar/data/POI;->latitude:D

    .line 104
    const-string v0, "lon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    iput-wide v0, p1, Lcom/layar/data/POI;->longitude:D

    .line 106
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/layar/data/POI;->hasAltitude:Z

    .line 108
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/layar/data/POI;->altitude:F

    .line 111
    :cond_e
    const-string v0, "relativeAlt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/layar/data/POI;->hasRelativeAlt:Z

    .line 113
    const-string v0, "relativeAlt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/layar/data/POI;->relativeAlt:F

    .line 116
    :cond_f
    const-string v0, "imageURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 117
    const-string v0, "imageURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    .line 118
    :cond_10
    const-string v0, "null"

    iget-object v1, p1, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 119
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    .line 121
    :cond_11
    const-string v0, "actions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 122
    .local v3, jsonActions:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 123
    .local v0, actionsCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/PoiAction;>;"
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_17

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/layar/data/PoiAction;

    iput-object v0, p1, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    .line 130
    iget-object v0, p1, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    const-string v0, "inFocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .end local v1           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/PoiAction;>;"
    move-result v0

    iput-boolean v0, p1, Lcom/layar/data/POI;->inFocus:Z

    .line 134
    const-string v0, "showSmallBiw"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/layar/data/POI;->showSmallBiw:Z

    .line 135
    const-string v0, "showBiwOnClick"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/layar/data/POI;->showBiwOnClick:Z

    .line 137
    const-string v0, "animations"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .end local p0
    invoke-static {p0}, Lcom/layar/core/animation/AnimationsContainer;->parseAnimations(Lorg/json/JSONObject;)Lcom/layar/core/animation/AnimationsContainer;

    move-result-object p0

    iput-object p0, p1, Lcom/layar/data/POI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    move-object p0, p1

    .line 142
    .end local v2           #i:I
    .end local v3           #jsonActions:Lorg/json/JSONArray;
    .end local p1
    :goto_6
    return-object p0

    .line 44
    .restart local p0
    .restart local p1
    :cond_12
    const-string v0, "poiId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/layar/data/POI;->id:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 140
    .end local p0
    :catch_0
    move-exception p0

    .line 141
    .local p0, e:Lorg/json/JSONException;
    const-string p1, "layar.POI"

    .end local p1
    const-string v0, "JSONException:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 p0, 0x0

    goto :goto_6

    .line 70
    .local v0, baseURL:Ljava/lang/String;
    .local v1, jsonObject:Lorg/json/JSONObject;
    .local p0, json:Lorg/json/JSONObject;
    .restart local p1
    :cond_13
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "full"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 71
    :cond_14
    iget v2, p1, Lcom/layar/data/POI;->dimension:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 72
    const-string v2, "Layar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WARNING! You have not set mandatory field for spot: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "Layar"

    const-string v3, "WARNING! object.full is mandatory if dimension is 2 or 3!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 78
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "reduced"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 83
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #baseURL:Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 125
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/PoiAction;>;"
    .restart local v2       #i:I
    .restart local v3       #jsonActions:Lorg/json/JSONArray;
    :cond_17
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/data/PoiAction;->parse(Lorg/json/JSONObject;)Lcom/layar/data/PoiAction;

    move-result-object v0

    .line 126
    .local v0, action:Lcom/layar/data/PoiAction;
    if-eqz v0, :cond_18

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :cond_18
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto/16 :goto_5
.end method


# virtual methods
.method public getIconType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/layar/data/POI;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POI id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/POI;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",loc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/layar/data/POI;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget-wide v1, p0, Lcom/layar/data/POI;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
