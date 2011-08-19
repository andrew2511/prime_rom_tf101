.class public Lcom/layar/core/LayerRenderer;
.super Lcom/layar/core/ARRenderer;
.source "LayerRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private layerHandler:Lcom/layar/data/layer/LayerHandler;

.field private renderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/layar/core/POIRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/layar/core/LayerRenderer;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/core/LayerRenderer;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/layar/core/ARRenderer;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 19

    .prologue
    .line 46
    monitor-enter p0

    .line 51
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v15, v0

    if-nez v15, :cond_0

    sget-object v15, Lcom/layar/core/LayerRenderer;->TAG:Ljava/lang/String;

    const-string v16, "poisContainer == null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v15, v0

    invoke-interface {v15}, Lcom/layar/core/POIsContainer;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v4

    check-cast v4, [Lcom/layar/data/POI;

    .line 54
    .local v4, dataList:[Lcom/layar/data/POI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v15, v0

    invoke-interface {v15}, Lcom/layar/core/POIsContainer;->getPOIsToDelete()[Lcom/layar/data/BasePOI;

    move-result-object v3

    check-cast v3, [Lcom/layar/data/POI;

    .line 63
    .local v3, dataDelList:[Lcom/layar/data/POI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    move-object v12, v0

    .line 64
    .local v12, safeRenderersCopy:[Lcom/layar/core/POIRenderer;
    array-length v15, v12

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_3

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v8, newRenderers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/POIRenderer;>;"
    if-eqz v4, :cond_1

    .line 70
    array-length v13, v4

    .line 71
    .local v13, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v13, :cond_4

    .line 90
    .end local v5           #i:I
    .end local v13           #size:I
    :cond_1
    if-eqz v3, :cond_2

    .line 91
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    array-length v15, v3

    if-lt v7, v15, :cond_7

    .line 112
    .end local v7           #j:I
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lcom/layar/core/POIRenderer;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #dataDelList:[Lcom/layar/data/POI;
    check-cast v3, [Lcom/layar/core/POIRenderer;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/core/LayerRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 46
    monitor-exit p0

    .line 115
    return-void

    .line 64
    .end local v8           #newRenderers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/POIRenderer;>;"
    .restart local v3       #dataDelList:[Lcom/layar/data/POI;
    :cond_3
    aget-object v10, v12, v16

    .line 65
    .local v10, render:Lcom/layar/core/POIRenderer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 72
    .end local v10           #render:Lcom/layar/core/POIRenderer;
    .restart local v5       #i:I
    .restart local v8       #newRenderers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/POIRenderer;>;"
    .restart local v13       #size:I
    :cond_4
    aget-object v9, v4, v5

    .line 73
    .local v9, poi:Lcom/layar/data/POI;
    iget-object v6, v9, Lcom/layar/data/POI;->id:Ljava/lang/String;

    .line 75
    .local v6, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->mModelProvider:Lcom/layar/core/ModelProvider;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/layar/core/POIRenderer;->wrapPoi(Landroid/content/Context;Lcom/layar/data/POI;Lcom/layar/core/ModelProvider;)Lcom/layar/core/POIRenderer;

    move-result-object v11

    .line 77
    .local v11, renderer:Lcom/layar/core/POIRenderer;
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 86
    .end local v6           #id:Ljava/lang/String;
    :goto_3
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 79
    .end local v11           #renderer:Lcom/layar/core/POIRenderer;
    .restart local v6       #id:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #id:Ljava/lang/String;
    check-cast v6, Lcom/layar/core/POIRenderer;

    invoke-virtual {v6, v9}, Lcom/layar/core/POIRenderer;->updateObject(Lcom/layar/data/POI;)Lcom/layar/core/POIRenderer;

    move-result-object v14

    .line 80
    .local v14, updatedRenderer:Lcom/layar/core/POIRenderer;
    if-nez v14, :cond_6

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->mModelProvider:Lcom/layar/core/ModelProvider;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/layar/core/POIRenderer;->wrapPoi(Landroid/content/Context;Lcom/layar/data/POI;Lcom/layar/core/ModelProvider;)Lcom/layar/core/POIRenderer;

    move-result-object v11

    .line 84
    .restart local v11       #renderer:Lcom/layar/core/POIRenderer;
    :goto_4
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    goto :goto_3

    .line 46
    .end local v3           #dataDelList:[Lcom/layar/data/POI;
    .end local v4           #dataList:[Lcom/layar/data/POI;
    .end local v5           #i:I
    .end local v8           #newRenderers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/POIRenderer;>;"
    .end local v9           #poi:Lcom/layar/data/POI;
    .end local v11           #renderer:Lcom/layar/core/POIRenderer;
    .end local v12           #safeRenderersCopy:[Lcom/layar/core/POIRenderer;
    .end local v13           #size:I
    .end local v14           #updatedRenderer:Lcom/layar/core/POIRenderer;
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 83
    .restart local v3       #dataDelList:[Lcom/layar/data/POI;
    .restart local v4       #dataList:[Lcom/layar/data/POI;
    .restart local v5       #i:I
    .restart local v8       #newRenderers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/POIRenderer;>;"
    .restart local v9       #poi:Lcom/layar/data/POI;
    .restart local v12       #safeRenderersCopy:[Lcom/layar/core/POIRenderer;
    .restart local v13       #size:I
    .restart local v14       #updatedRenderer:Lcom/layar/core/POIRenderer;
    :cond_6
    move-object v11, v14

    .restart local v11       #renderer:Lcom/layar/core/POIRenderer;
    goto :goto_4

    .line 92
    .end local v5           #i:I
    .end local v9           #poi:Lcom/layar/data/POI;
    .end local v11           #renderer:Lcom/layar/core/POIRenderer;
    .end local v13           #size:I
    .end local v14           #updatedRenderer:Lcom/layar/core/POIRenderer;
    .restart local v7       #j:I
    :cond_7
    :try_start_1
    aget-object v9, v3, v7

    .line 93
    .restart local v9       #poi:Lcom/layar/data/POI;
    iget-object v6, v9, Lcom/layar/data/POI;->id:Ljava/lang/String;

    .line 94
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/LayerRenderer;->renderers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/layar/core/POIRenderer;

    .line 97
    .restart local v11       #renderer:Lcom/layar/core/POIRenderer;
    iget-boolean v15, v11, Lcom/layar/core/POIRenderer;->deleted:Z

    if-nez v15, :cond_8

    .line 98
    iget v15, v11, Lcom/layar/core/POIRenderer;->animState:I

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 100
    const/4 v15, 0x3

    invoke-virtual {v11, v15}, Lcom/layar/core/POIRenderer;->stopAnimation(I)V

    .line 101
    const/4 v15, 0x4

    invoke-virtual {v11, v15}, Lcom/layar/core/POIRenderer;->stopAnimation(I)V

    .line 102
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/layar/core/POIRenderer;->stopAnimation(I)V

    .line 104
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 105
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v11           #renderer:Lcom/layar/core/POIRenderer;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public dataUpdateStarted()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public layerChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 130
    iget-object v1, p0, Lcom/layar/core/LayerRenderer;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 131
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, v0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/layar/core/LayerRenderer;->icons:[[Landroid/graphics/Bitmap;

    .line 133
    iget-object v1, v0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/layar/core/LayerRenderer;->textureReady:[[Z

    .line 134
    iget-object v1, v0, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/layar/core/LayerRenderer;->textureIds:[[I

    .line 136
    const/4 v1, 0x0

    iget v2, v0, Lcom/layar/data/layer/Layer20;->innerColor:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/layar/core/LayerRenderer;->createSpotBitmapNew(III)V

    .line 137
    const/4 v1, 0x1

    iget v2, v0, Lcom/layar/data/layer/Layer20;->middleColor:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/layar/core/LayerRenderer;->createSpotBitmapNew(III)V

    .line 138
    const/4 v1, 0x2

    iget v2, v0, Lcom/layar/data/layer/Layer20;->outerColor:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/layar/core/LayerRenderer;->createSpotBitmapNew(III)V

    .line 139
    const/4 v1, 0x3

    iget v2, v0, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/layar/core/LayerRenderer;->createSpotBitmapNew(III)V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-object v2, p0, Lcom/layar/core/LayerRenderer;->icons:[[Landroid/graphics/Bitmap;

    .line 142
    iput-object v2, p0, Lcom/layar/core/LayerRenderer;->textureReady:[[Z

    .line 143
    iput-object v2, p0, Lcom/layar/core/LayerRenderer;->textureIds:[[I

    goto :goto_0
.end method

.method public preparePOIs()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/layar/core/LayerRenderer;->dataChanged()V

    .line 150
    return-void
.end method

.method public setLayerHandler(Lcom/layar/data/layer/LayerHandler;)V
    .locals 0
    .parameter "layerHandler"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/layar/core/ARRenderer;->setPoisContainer(Lcom/layar/core/POIsContainer;)V

    .line 40
    iput-object p1, p0, Lcom/layar/core/LayerRenderer;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 41
    invoke-virtual {p0}, Lcom/layar/core/LayerRenderer;->layerChanged()V

    .line 42
    return-void
.end method
