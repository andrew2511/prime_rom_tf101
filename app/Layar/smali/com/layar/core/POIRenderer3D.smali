.class public Lcom/layar/core/POIRenderer3D;
.super Lcom/layar/core/POIRenderer;
.source "POIRenderer3D.java"


# static fields
.field protected static final REDUCED_MIN_VIEWSIZE_3D:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "layar.POIRenderer3D"


# instance fields
.field private fullModel:Lcom/layar/core/ModelRenderer;

.field private hasReduced:Z

.field private mFullUrl:Ljava/lang/String;

.field private final mModelProvider:Lcom/layar/core/ModelProvider;

.field private mReducedUrl:Ljava/lang/String;

.field private reducedModel:Lcom/layar/core/ModelRenderer;

.field private rendered:Lcom/layar/core/ModelRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/POI;Lcom/layar/core/ModelProvider;)V
    .locals 2
    .parameter "context"
    .parameter "poi"
    .parameter "modelProvider"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/layar/core/POIRenderer;-><init>(Landroid/content/Context;Lcom/layar/data/BasePOI;)V

    .line 30
    iput-object p3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    .line 31
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v1, p0, Lcom/layar/core/POIRenderer3D;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v1}, Lcom/layar/core/ModelProvider;->setStatusHelper(Lcom/layar/util/StatusHelper;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/POIRenderer3D;->showThrobber:Z

    .line 36
    invoke-virtual {p0}, Lcom/layar/core/POIRenderer3D;->hasReduceModel()Z

    .line 37
    return-void
.end method


# virtual methods
.method protected drawObject(Ljavax/microedition/khronos/opengles/GL10;Z)Z
    .locals 9
    .parameter "gl"
    .parameter "focus"

    .prologue
    const/high16 v6, 0x41a0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 77
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v3, v3, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 164
    :goto_0
    return v3

    .line 79
    :cond_1
    iget-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    if-eqz v3, :cond_5

    const/high16 v3, 0x42c8

    move v2, v3

    .line 81
    .local v2, fullSize:F
    :goto_1
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v3, v3, Lcom/layar/data/BasePOI$POIObject;->size:F

    invoke-virtual {p0, v3}, Lcom/layar/core/POIRenderer3D;->getViewSize(F)F

    move-result v1

    .line 83
    .local v1, fixedScale:F
    monitor-enter p0

    .line 84
    cmpl-float v3, v1, v2

    if-lez v3, :cond_7

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    if-nez v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->hasModelRenderer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    .line 89
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/layar/core/animation/AnimationsContainer;->startAnimations(I)V

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    if-eqz v3, :cond_6

    .line 95
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 97
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v3, :cond_4

    .line 98
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->transformationState:Lcom/layar/core/animation/TransformationState;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v4, v4, Lcom/layar/data/Transform;->scale:F

    iget-object v5, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v5, v5, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-object v5, v5, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    iget v5, v5, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v4, v5

    .line 99
    iget-object v5, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v5, v5, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v5, v5, Lcom/layar/data/Transform;->scale:F

    iget-object v6, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v6, v6, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-object v6, v6, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    iget v6, v6, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v5, v6

    .line 100
    iget-object v6, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v6, v6, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v6, v6, Lcom/layar/data/Transform;->scale:F

    iget-object v7, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-object v7, v7, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    iget v7, v7, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v6, v7

    .line 98
    invoke-virtual {v3, v4, v5, v6}, Lcom/layar/core/animation/TransformationState;->scale(FFF)V

    .line 101
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v0, v3, Lcom/layar/data/Transform;->angle:F

    .line 102
    .local v0, angle:F
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-boolean v3, v3, Lcom/layar/data/Transform;->rel:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget v3, v3, Lcom/layar/data/BasePOI;->bearing:F

    sub-float/2addr v0, v3

    .line 103
    :cond_3
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->transformationState:Lcom/layar/core/animation/TransformationState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/layar/core/animation/TransformationState;->rotate(FFFF)V

    .line 106
    .end local v0           #angle:F
    :cond_4
    invoke-virtual {p0}, Lcom/layar/core/POIRenderer3D;->applyAnimations()V

    .line 108
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v3, p1}, Lcom/layar/core/animation/TransformationState;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 110
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    invoke-virtual {v3, p1}, Lcom/layar/core/ModelRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 111
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    .line 112
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 113
    monitor-exit p0

    move v3, v8

    goto/16 :goto_0

    .end local v1           #fixedScale:F
    .end local v2           #fullSize:F
    :cond_5
    move v2, v6

    .line 79
    goto/16 :goto_1

    .line 114
    .restart local v1       #fixedScale:F
    .restart local v2       #fullSize:F
    :cond_6
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->isMissed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 115
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->showThrobber:Z

    .line 125
    :cond_7
    :goto_2
    iget-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    if-eqz v3, :cond_e

    cmpl-float v3, v1, v6

    if-lez v3, :cond_e

    .line 127
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    if-nez v3, :cond_8

    .line 128
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->hasModelRenderer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    .line 130
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/layar/core/animation/AnimationsContainer;->startAnimations(I)V

    .line 134
    :cond_8
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    if-eqz v3, :cond_d

    .line 135
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 137
    invoke-virtual {p0}, Lcom/layar/core/POIRenderer3D;->applyAnimations()V

    .line 139
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v3, :cond_a

    .line 140
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v3, v3, Lcom/layar/data/Transform;->scale:F

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-object v4, v4, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    iget v4, v4, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    .line 141
    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v4, v4, Lcom/layar/data/Transform;->scale:F

    iget-object v5, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v5, v5, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-object v5, v5, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    iget v5, v5, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v4, v5

    .line 142
    iget-object v5, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v5, v5, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v5, v5, Lcom/layar/data/Transform;->scale:F

    iget-object v6, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v6, v6, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-object v6, v6, Lcom/layar/data/Transform;->scaleDim:Lcom/layar/core/math/Vector3f;

    iget v6, v6, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v5, v6

    .line 140
    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 143
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v0, v3, Lcom/layar/data/Transform;->angle:F

    .line 144
    .restart local v0       #angle:F
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-boolean v3, v3, Lcom/layar/data/Transform;->rel:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget v3, v3, Lcom/layar/data/BasePOI;->bearing:F

    sub-float/2addr v0, v3

    .line 145
    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-interface {p1, v0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 148
    .end local v0           #angle:F
    :cond_a
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v3, p1}, Lcom/layar/core/animation/TransformationState;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 150
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    invoke-virtual {v3, p1}, Lcom/layar/core/ModelRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 151
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    .line 152
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 153
    monitor-exit p0

    move v3, v8

    goto/16 :goto_0

    .line 116
    :cond_b
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->isFetched(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 117
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->showThrobber:Z

    .line 119
    iget-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->isFetched(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 120
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    .line 121
    :cond_c
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    goto/16 :goto_2

    .line 83
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 154
    :cond_d
    :try_start_1
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->isMissed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 155
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->showThrobber:Z

    .line 83
    :cond_e
    :goto_3
    monitor-exit p0

    move v3, v5

    .line 164
    goto/16 :goto_0

    .line 156
    :cond_f
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->isFetched(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 157
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/layar/core/POIRenderer3D;->showThrobber:Z

    .line 159
    iget-object v3, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public getIconScale()F
    .locals 7

    .prologue
    const/high16 v6, 0x41a0

    .line 210
    const/high16 v3, 0x3f80

    .line 211
    .local v3, scale:F
    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v3, v4, Lcom/layar/data/Transform;->scale:F

    .line 213
    :cond_0
    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v5, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/layar/core/ModelProvider;->hasModelRenderer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    iget-boolean v4, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v5, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/layar/core/ModelProvider;->hasModelRenderer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    move v0, v4

    .line 215
    .local v0, areAllModelsMissed:Z
    :goto_0
    if-eqz v0, :cond_3

    move v4, v3

    .line 225
    :goto_1
    return v4

    .line 214
    .end local v0           #areAllModelsMissed:Z
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 218
    .restart local v0       #areAllModelsMissed:Z
    :cond_3
    iget-object v4, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v2, v4, Lcom/layar/data/BasePOI$POIObject;->size:F

    .line 219
    .local v2, objectSize:F
    invoke-virtual {p0, v2}, Lcom/layar/core/POIRenderer3D;->getViewSize(F)F

    move-result v1

    .line 220
    .local v1, currentScale:F
    cmpg-float v4, v1, v6

    if-gez v4, :cond_4

    .line 221
    invoke-virtual {p0, v2}, Lcom/layar/core/POIRenderer3D;->getViewSize(F)F

    move-result v4

    div-float v4, v6, v4

    goto :goto_1

    .line 222
    :cond_4
    invoke-static {}, Lcom/layar/core/ARRenderer;->getMaxPoiSize()F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    .line 223
    invoke-static {}, Lcom/layar/core/ARRenderer;->getMaxPoiSize()F

    move-result v4

    invoke-virtual {p0, v2}, Lcom/layar/core/POIRenderer3D;->getViewSize(F)F

    move-result v5

    div-float/2addr v4, v5

    goto :goto_1

    :cond_5
    move v4, v3

    .line 225
    goto :goto_1
.end method

.method public hasReduceModel()Z
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    .line 47
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    iput-object v0, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    iput-object v0, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/layar/core/POIRenderer3D;->hasReduced:Z

    return v0
.end method

.method protected intersect([F[F)F
    .locals 22
    .parameter "near"
    .parameter "far"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object v12, v0

    if-nez v12, :cond_0

    const/high16 v12, -0x4080

    .line 206
    :goto_0
    return v12

    .line 172
    :cond_0
    const/16 v12, 0x10

    new-array v11, v12, [F

    .line 173
    .local v11, matrix:[F
    invoke-static {v11}, Lcom/layar/util/MathUtil;->matrixIdentity([F)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->transformationState:Lcom/layar/core/animation/TransformationState;

    move-object v12, v0

    invoke-virtual {v12, v11}, Lcom/layar/core/animation/TransformationState;->apply([F)V

    .line 177
    const/16 v12, 0x8

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    .line 178
    .local v6, cube:[[F
    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget-object v14, v6, v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    aget-object v16, v6, v16

    const/16 v17, 0x0

    const/16 v18, 0x3

    aget-object v18, v6, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 179
    const/4 v12, 0x4

    aget-object v12, v6, v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    aget-object v14, v6, v14

    const/4 v15, 0x0

    const/16 v16, 0x6

    aget-object v16, v6, v16

    const/16 v17, 0x0

    const/16 v18, 0x7

    aget-object v18, v6, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 180
    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v6, v14

    const/4 v15, 0x1

    const/16 v16, 0x4

    aget-object v16, v6, v16

    const/16 v17, 0x1

    const/16 v18, 0x5

    aget-object v18, v6, v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 181
    const/4 v12, 0x2

    aget-object v12, v6, v12

    const/4 v13, 0x1

    const/4 v14, 0x3

    aget-object v14, v6, v14

    const/4 v15, 0x1

    const/16 v16, 0x6

    aget-object v16, v6, v16

    const/16 v17, 0x1

    const/16 v18, 0x7

    aget-object v18, v6, v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 182
    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x2

    const/4 v14, 0x2

    aget-object v14, v6, v14

    const/4 v15, 0x2

    const/16 v16, 0x4

    aget-object v16, v6, v16

    const/16 v17, 0x2

    const/16 v18, 0x6

    aget-object v18, v6, v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 183
    const/4 v12, 0x1

    aget-object v12, v6, v12

    const/4 v13, 0x2

    const/4 v14, 0x3

    aget-object v14, v6, v14

    const/4 v15, 0x2

    const/16 v16, 0x5

    aget-object v16, v6, v16

    const/16 v17, 0x2

    const/16 v18, 0x7

    aget-object v18, v6, v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer3D;->rendered:Lcom/layar/core/ModelRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 184
    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x3

    const/4 v14, 0x1

    aget-object v14, v6, v14

    const/4 v15, 0x3

    const/16 v16, 0x2

    aget-object v16, v6, v16

    const/16 v17, 0x3

    const/16 v18, 0x3

    aget-object v18, v6, v18

    const/16 v19, 0x3

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 185
    const/4 v12, 0x4

    aget-object v12, v6, v12

    const/4 v13, 0x3

    const/4 v14, 0x5

    aget-object v14, v6, v14

    const/4 v15, 0x3

    const/16 v16, 0x6

    aget-object v16, v6, v16

    const/16 v17, 0x3

    const/16 v18, 0x7

    aget-object v18, v6, v18

    const/16 v19, 0x3

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 187
    const/4 v12, 0x3

    new-array v5, v12, [F

    .line 188
    .local v5, boxMin:[F
    const/4 v12, 0x3

    new-array v4, v12, [F

    .line 189
    .local v4, boxMax:[F
    const/16 v12, 0x8

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    .line 191
    .local v7, cubeW:[[F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v12, 0x8

    if-lt v9, v12, :cond_1

    .line 200
    new-instance v3, Lcom/layar/util/OrientedBoundingBox;

    invoke-direct {v3, v5, v4}, Lcom/layar/util/OrientedBoundingBox;-><init>([F[F)V

    .line 202
    .local v3, box:Lcom/layar/util/OrientedBoundingBox;
    const/4 v12, 0x3

    new-array v8, v12, [F

    .line 203
    .local v8, dir:[F
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 204
    invoke-static {v8}, Lcom/layar/util/MathUtil;->vectorNormalize([F)V

    .line 206
    move-object v0, v3

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/layar/util/OrientedBoundingBox;->nearestRayIntersection([F[F)F

    move-result v12

    goto/16 :goto_0

    .line 192
    .end local v3           #box:Lcom/layar/util/OrientedBoundingBox;
    .end local v8           #dir:[F
    :cond_1
    aget-object v12, v6, v9

    aget-object v13, v7, v9

    invoke-static {v11, v12, v13}, Lcom/layar/util/MathUtil;->matrixVectorMultiply([F[F[F)V

    .line 194
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    const/4 v12, 0x3

    if-lt v10, v12, :cond_2

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 195
    :cond_2
    if-eqz v9, :cond_3

    aget-object v12, v7, v9

    aget v12, v12, v10

    aget v13, v5, v10

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    :cond_3
    aget-object v12, v7, v9

    aget v12, v12, v10

    aput v12, v5, v10

    .line 196
    :cond_4
    if-eqz v9, :cond_5

    aget-object v12, v7, v9

    aget v12, v12, v10

    aget v13, v4, v10

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    :cond_5
    aget-object v12, v7, v9

    aget v12, v12, v10

    aput v12, v4, v10

    .line 194
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method protected needUpdate(Lcom/layar/data/POI;)Z
    .locals 2
    .parameter "poi"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/layar/core/POIRenderer;->needUpdate(Lcom/layar/data/POI;)Z

    move-result v0

    .line 69
    .local v0, res:Z
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layar/core/POIRenderer3D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/layar/core/POIRenderer3D;->_needUpdate2D3D(Lcom/layar/data/POI;)Z

    move-result v0

    .line 72
    :cond_0
    return v0
.end method

.method protected resetObject()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/layar/core/POIRenderer;->resetObject()V

    .line 61
    invoke-virtual {p0}, Lcom/layar/core/POIRenderer3D;->hasReduceModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v1, p0, Lcom/layar/core/POIRenderer3D;->mReducedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    iget-object v1, p0, Lcom/layar/core/POIRenderer3D;->mFullUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/core/ModelProvider;->getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    .line 64
    return-void
.end method

.method public resetTextures()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/layar/core/POIRenderer;->resetTextures()V

    .line 41
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    invoke-virtual {v0}, Lcom/layar/core/ModelRenderer;->reloadTextures()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    invoke-virtual {v0}, Lcom/layar/core/ModelRenderer;->reloadTextures()V

    .line 43
    :cond_1
    return-void
.end method

.method public setLightingEnabled(Z)V
    .locals 2
    .parameter "lightingEnabled"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->mModelProvider:Lcom/layar/core/ModelProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/core/ModelProvider;->setLightingEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->fullModel:Lcom/layar/core/ModelRenderer;

    invoke-virtual {v0, p1}, Lcom/layar/core/ModelRenderer;->setLightingEnabled(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/core/POIRenderer3D;->reducedModel:Lcom/layar/core/ModelRenderer;

    invoke-virtual {v0, p1}, Lcom/layar/core/ModelRenderer;->setLightingEnabled(Z)V

    .line 233
    :cond_1
    return-void
.end method

.method public startAnimation(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    invoke-super {p0, p1}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 241
    :cond_0
    return-void
.end method
