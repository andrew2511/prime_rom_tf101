.class public Lcom/layar/data/layer/LayerManager$POIResponse;
.super Lcom/layar/data/Response;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "POIResponse"
.end annotation


# instance fields
.field public final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/PoiAction;",
            ">;"
        }
    .end annotation
.end field

.field animations:Lcom/layar/core/animation/AnimationsContainer;

.field public final delete:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dialog:Lcom/layar/data/ActionsDialogData;

.field public layerName:Ljava/lang/String;

.field message:Ljava/lang/String;

.field public pageKey:Ljava/lang/String;

.field public pois:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/POI;",
            ">;"
        }
    .end annotation
.end field

.field public radius:I

.field public final refresh:Lcom/layar/data/layer/LayerRefresher;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->actions:Ljava/util/ArrayList;

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    .line 1055
    new-instance v0, Lcom/layar/data/layer/LayerRefresher;

    invoke-direct {v0}, Lcom/layar/data/layer/LayerRefresher;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->refresh:Lcom/layar/data/layer/LayerRefresher;

    .line 1056
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->delete:Ljava/util/HashSet;

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->pois:Ljava/util/ArrayList;

    .line 1031
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->actions:Ljava/util/ArrayList;

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    .line 1055
    new-instance v0, Lcom/layar/data/layer/LayerRefresher;

    invoke-direct {v0}, Lcom/layar/data/layer/LayerRefresher;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->refresh:Lcom/layar/data/layer/LayerRefresher;

    .line 1056
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->delete:Ljava/util/HashSet;

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->pois:Ljava/util/ArrayList;

    .line 1035
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerManager$POIResponse;
    .locals 2
    .parameter "json"
    .parameter "layerHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    .line 1152
    .local v1, response:Lcom/layar/data/Response;
    new-instance v0, Lcom/layar/data/layer/LayerManager$POIResponse;

    invoke-direct {v0, v1}, Lcom/layar/data/layer/LayerManager$POIResponse;-><init>(Lcom/layar/data/Response;)V

    .line 1154
    .local v0, poiResp:Lcom/layar/data/layer/LayerManager$POIResponse;
    invoke-direct {v0, p0, p1}, Lcom/layar/data/layer/LayerManager$POIResponse;->parsePoi(Lorg/json/JSONObject;Lcom/layar/data/layer/LayerHandler;)V

    .line 1155
    return-object v0
.end method

.method private parsePoi(Lorg/json/JSONObject;Lcom/layar/data/layer/LayerHandler;)V
    .locals 19
    .parameter "json"
    .parameter "layerHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/layar/data/layer/LayerManager$POIResponse;->isSuccessful()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1064
    const-string v15, "animations"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 1063
    invoke-static {v15}, Lcom/layar/core/animation/AnimationsContainer;->parseAnimations(Lorg/json/JSONObject;)Lcom/layar/core/animation/AnimationsContainer;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->animations:Lcom/layar/core/animation/AnimationsContainer;

    .line 1066
    const-string v15, "hotspots"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1067
    .local v10, jsonAry:Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 1071
    .local v14, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v14, :cond_4

    .line 1083
    const-string v15, "layer"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->layerName:Ljava/lang/String;

    .line 1084
    const-string v15, "morePages"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1085
    const-string v15, "nextPageKey"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->pageKey:Ljava/lang/String;

    .line 1089
    :goto_1
    const-string v15, "radius"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->radius:I

    .line 1090
    const-string v15, "showMessage"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1091
    const-string v15, "showMessage"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->message:Ljava/lang/String;

    .line 1093
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->refresh:Lcom/layar/data/layer/LayerRefresher;

    move-object v15, v0

    .line 1094
    const-string v16, "refreshInterval"

    const-wide/16 v17, 0x12c

    .line 1093
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/layar/data/layer/LayerRefresher;->setRefreshInterval(J)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->refresh:Lcom/layar/data/layer/LayerRefresher;

    move-object v15, v0

    .line 1096
    const-string v16, "refreshDistance"

    const/16 v17, 0x64

    .line 1095
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/layar/data/layer/LayerRefresher;->setRefreshDistance(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->refresh:Lcom/layar/data/layer/LayerRefresher;

    move-object v15, v0

    .line 1098
    const-string v16, "fullRefresh"

    const/16 v17, 0x1

    .line 1097
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/layar/data/layer/LayerRefresher;->setFullRefresh(Z)V

    .line 1100
    const-string v15, "deletedHotspots"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1101
    .local v6, deleteArray:Lorg/json/JSONArray;
    if-eqz v6, :cond_1

    .line 1102
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1103
    .local v5, count:I
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v5, :cond_8

    .line 1110
    .end local v5           #count:I
    :cond_1
    const-string v15, "actions"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1111
    const-string v15, "actions"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1112
    .local v9, jsonAction:Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1113
    .restart local v5       #count:I
    const/4 v7, 0x0

    :goto_3
    if-lt v7, v5, :cond_9

    .line 1119
    .end local v5           #count:I
    .end local v9           #jsonAction:Lorg/json/JSONArray;
    :cond_2
    const-string v15, "showDialog"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1120
    .local v13, showDialog:Lorg/json/JSONObject;
    if-eqz v13, :cond_3

    .line 1121
    new-instance v15, Lcom/layar/data/ActionsDialogData;

    invoke-direct {v15}, Lcom/layar/data/ActionsDialogData;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    move-object v15, v0

    const-string v16, "title"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/layar/data/ActionsDialogData;->title:Ljava/lang/String;

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    move-object v15, v0

    const-string v16, "description"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/layar/data/ActionsDialogData;->description:Ljava/lang/String;

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    move-object v15, v0

    const-string v16, "iconURL"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/layar/data/ActionsDialogData;->icon:Ljava/lang/String;

    .line 1125
    const-string v15, "actions"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1126
    const-string v15, "actions"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1127
    .restart local v9       #jsonAction:Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1128
    .restart local v5       #count:I
    const/4 v7, 0x0

    :goto_4
    if-lt v7, v5, :cond_a

    .line 1141
    .end local v5           #count:I
    .end local v6           #deleteArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v9           #jsonAction:Lorg/json/JSONArray;
    .end local v10           #jsonAry:Lorg/json/JSONArray;
    .end local v13           #showDialog:Lorg/json/JSONObject;
    .end local v14           #size:I
    :cond_3
    return-void

    .line 1072
    .restart local v7       #i:I
    .restart local v10       #jsonAry:Lorg/json/JSONArray;
    .restart local v14       #size:I
    :cond_4
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1073
    .local v11, jsonSpot:Lorg/json/JSONObject;
    invoke-static {v11}, Lcom/layar/data/POI;->parsePOIData(Lorg/json/JSONObject;)Lcom/layar/data/POI;

    move-result-object v12

    .line 1074
    .local v12, poi:Lcom/layar/data/POI;
    if-eqz v12, :cond_6

    .line 1076
    iget-object v15, v12, Lcom/layar/data/POI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->animations:Lcom/layar/core/animation/AnimationsContainer;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/layar/core/animation/AnimationsContainer;->rewrite(Lcom/layar/core/animation/AnimationsContainer;)V

    .line 1077
    iget-boolean v15, v12, Lcom/layar/data/POI;->inFocus:Z

    if-eqz v15, :cond_5

    .line 1078
    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 1079
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->pois:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v11           #jsonSpot:Lorg/json/JSONObject;
    .end local v12           #poi:Lcom/layar/data/POI;
    :cond_7
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->pageKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 1104
    .restart local v5       #count:I
    .restart local v6       #deleteArray:Lorg/json/JSONArray;
    :cond_8
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1106
    .local v8, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->delete:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1103
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1114
    .end local v8           #id:Ljava/lang/String;
    .restart local v9       #jsonAction:Lorg/json/JSONArray;
    :cond_9
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15}, Lcom/layar/data/PoiAction;->parse(Lorg/json/JSONObject;)Lcom/layar/data/PoiAction;

    move-result-object v4

    .line 1115
    .local v4, action:Lcom/layar/data/PoiAction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->actions:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1129
    .end local v4           #action:Lcom/layar/data/PoiAction;
    .restart local v13       #showDialog:Lorg/json/JSONObject;
    :cond_a
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15}, Lcom/layar/data/PoiAction;->parse(Lorg/json/JSONObject;)Lcom/layar/data/PoiAction;

    move-result-object v4

    .line 1130
    .restart local v4       #action:Lcom/layar/data/PoiAction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    move-object v15, v0

    iget-object v15, v15, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    if-nez v15, :cond_b

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    move-object v15, v0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    .line 1132
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    move-object v15, v0

    iget-object v15, v15, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerManager$POIResponse;->getResponseCode()I

    move-result v0

    .line 1040
    .local v0, responseCode:I
    if-eqz v0, :cond_1

    .line 1041
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1042
    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    .line 1040
    goto :goto_0
.end method

.method public parseSelf(Lorg/json/JSONObject;Lcom/layar/data/layer/LayerHandler;)V
    .locals 2
    .parameter "json"
    .parameter "layerHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {p1}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v0

    .line 1145
    .local v0, resp:Lcom/layar/data/Response;
    invoke-virtual {v0}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->responseCode:I

    .line 1146
    invoke-virtual {v0}, Lcom/layar/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/data/layer/LayerManager$POIResponse;->responseMessage:Ljava/lang/String;

    .line 1147
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerManager$POIResponse;->parsePoi(Lorg/json/JSONObject;Lcom/layar/data/layer/LayerHandler;)V

    .line 1148
    return-void
.end method
