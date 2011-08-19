.class public abstract Lcom/layar/core/POIRenderer;
.super Ljava/lang/Object;
.source "POIRenderer.java"


# static fields
.field protected static final FULL_MIN_VIEWSIZE:F = 100.0f

.field protected static final REDUCED_MIN_VIEWSIZE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "layar.POIRenderer"


# instance fields
.field public animState:I

.field centerAltitude:F

.field deleted:Z

.field drawn:Z

.field private icon:Landroid/graphics/Bitmap;

.field private iconDownload:Ljava/lang/Runnable;

.field private iconReady:Z

.field private iconTextureId:I

.field public iconWidthReduced:F

.field private isIconMissed:Z

.field protected mContext:Landroid/content/Context;

.field mPoi:Lcom/layar/data/BasePOI;

.field protected mStatus:Lcom/layar/util/StatusHelper;

.field protected showThrobber:Z

.field public transformationState:Lcom/layar/core/animation/TransformationState;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/layar/data/BasePOI;)V
    .locals 1
    .parameter "context"
    .parameter "poi"

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/core/POIRenderer;-><init>(Landroid/content/Context;Lcom/layar/data/BasePOI;Z)V

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/layar/data/BasePOI;Z)V
    .locals 3
    .parameter "context"
    .parameter "poi"
    .parameter "downloadIcon"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/layar/core/POIRenderer;->animState:I

    .line 38
    new-instance v0, Lcom/layar/core/animation/TransformationState;

    invoke-direct {v0}, Lcom/layar/core/animation/TransformationState;-><init>()V

    iput-object v0, p0, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/POIRenderer;->centerAltitude:F

    .line 44
    iput-boolean v1, p0, Lcom/layar/core/POIRenderer;->deleted:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/core/POIRenderer;->icon:Landroid/graphics/Bitmap;

    .line 47
    iput v2, p0, Lcom/layar/core/POIRenderer;->iconTextureId:I

    .line 48
    iput-boolean v1, p0, Lcom/layar/core/POIRenderer;->iconReady:Z

    .line 49
    iput-boolean v1, p0, Lcom/layar/core/POIRenderer;->isIconMissed:Z

    .line 50
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/layar/core/POIRenderer;->iconWidthReduced:F

    .line 57
    new-instance v0, Lcom/layar/core/POIRenderer$1;

    invoke-direct {v0, p0}, Lcom/layar/core/POIRenderer$1;-><init>(Lcom/layar/core/POIRenderer;)V

    iput-object v0, p0, Lcom/layar/core/POIRenderer;->iconDownload:Ljava/lang/Runnable;

    .line 96
    iput-object p2, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    .line 97
    iput-object p1, p0, Lcom/layar/core/POIRenderer;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iput-object v0, p0, Lcom/layar/core/POIRenderer;->mStatus:Lcom/layar/util/StatusHelper;

    .line 101
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->iconDownload:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/layar/util/DownloadManager;->enqueueRunnable(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/layar/core/POIRenderer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/layar/core/POIRenderer;->isIconMissed:Z

    return-void
.end method

.method static synthetic access$1(Lcom/layar/core/POIRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/layar/core/POIRenderer;->isIconMissed:Z

    return v0
.end method

.method static synthetic access$2(Lcom/layar/core/POIRenderer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/layar/core/POIRenderer;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static wrapPoi(Landroid/content/Context;Lcom/layar/data/POI;Lcom/layar/core/ModelProvider;)Lcom/layar/core/POIRenderer;
    .locals 1
    .parameter "context"
    .parameter "poi"
    .parameter "modelProvider"

    .prologue
    .line 80
    iget v0, p1, Lcom/layar/data/POI;->dimension:I

    packed-switch v0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    new-instance v0, Lcom/layar/core/POIRenderer1D;

    invoke-direct {v0, p0, p1}, Lcom/layar/core/POIRenderer1D;-><init>(Landroid/content/Context;Lcom/layar/data/POI;)V

    goto :goto_0

    .line 84
    :pswitch_1
    new-instance v0, Lcom/layar/core/POIRenderer2D;

    invoke-direct {v0, p0, p1}, Lcom/layar/core/POIRenderer2D;-><init>(Landroid/content/Context;Lcom/layar/data/POI;)V

    goto :goto_0

    .line 86
    :pswitch_2
    new-instance v0, Lcom/layar/core/POIRenderer3D;

    invoke-direct {v0, p0, p1, p2}, Lcom/layar/core/POIRenderer3D;-><init>(Landroid/content/Context;Lcom/layar/data/POI;Lcom/layar/core/ModelProvider;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected _needUpdate2D3D(Lcom/layar/data/POI;)Z
    .locals 3
    .parameter "poi"

    .prologue
    const/4 v2, 0x1

    .line 211
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    iget-object v1, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v1, v1, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 221
    :goto_0
    return v0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    iget-object v1, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v1, v1, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    .line 219
    goto :goto_0

    .line 221
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAnimation(Lcom/layar/core/animation/Animation;I)V
    .locals 1
    .parameter "anim"
    .parameter "state"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v0, p1, p2}, Lcom/layar/core/animation/AnimationsContainer;->add(Lcom/layar/core/animation/Animation;I)V

    .line 275
    return-void
.end method

.method protected applyAnimations()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v1}, Lcom/layar/core/animation/AnimationsContainer;->getActive()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v1}, Lcom/layar/core/animation/AnimationsContainer;->checkForDelete()Z

    move-result v1

    iput-boolean v1, p0, Lcom/layar/core/POIRenderer;->deleted:Z

    .line 271
    return-void

    .line 267
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 268
    .local v0, a:Lcom/layar/core/animation/Animation;
    iget-object v2, p0, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v0, v2}, Lcom/layar/core/animation/Animation;->apply(Lcom/layar/core/animation/TransformationState;)V

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;ZFFZ)V
    .locals 7
    .parameter "gl"
    .parameter "useAlt"
    .parameter "altitude"
    .parameter "range"
    .parameter "focus"

    .prologue
    const v6, 0x47012f00

    const v5, 0x46180400

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 123
    iput-boolean v3, p0, Lcom/layar/core/POIRenderer;->drawn:Z

    .line 124
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v1, v1, Lcom/layar/data/BasePOI;->geodistance:I

    int-to-float v1, v1

    cmpl-float v1, v1, p4

    if-lez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-boolean v1, p0, Lcom/layar/core/POIRenderer;->isIconMissed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/layar/core/POIRenderer;->iconReady:Z

    if-nez v1, :cond_1

    .line 127
    new-array v0, v4, [I

    .line 128
    .local v0, textures:[I
    invoke-interface {p1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 130
    aget v1, v0, v3

    iput v1, p0, Lcom/layar/core/POIRenderer;->iconTextureId:I

    .line 131
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 132
    iget v1, p0, Lcom/layar/core/POIRenderer;->iconTextureId:I

    invoke-interface {p1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 134
    const/16 v1, 0x2801

    invoke-interface {p1, v2, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 135
    const/16 v1, 0x2800

    invoke-interface {p1, v2, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 136
    const/16 v1, 0x2802

    invoke-interface {p1, v2, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 137
    const/16 v1, 0x2803

    invoke-interface {p1, v2, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 139
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->icon:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 140
    iput-boolean v4, p0, Lcom/layar/core/POIRenderer;->iconReady:Z

    .line 143
    .end local v0           #textures:[I
    :cond_1
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v1}, Lcom/layar/core/animation/TransformationState;->initFrame()V

    .line 145
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-boolean v1, v1, Lcom/layar/data/BasePOI;->hasAltitude:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v1, v1, Lcom/layar/data/BasePOI;->altitude:F

    sub-float/2addr v1, p3

    iput v1, p0, Lcom/layar/core/POIRenderer;->centerAltitude:F

    .line 148
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    iget-object v2, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v2, v2, Lcom/layar/data/BasePOI;->x:F

    iget-object v3, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v3, v3, Lcom/layar/data/BasePOI;->y:F

    iget v4, p0, Lcom/layar/core/POIRenderer;->centerAltitude:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/layar/core/animation/TransformationState;->translate(FFF)V

    .line 150
    invoke-virtual {p0, p1, p5}, Lcom/layar/core/POIRenderer;->drawObject(Ljavax/microedition/khronos/opengles/GL10;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layar/core/POIRenderer;->drawn:Z

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-boolean v1, v1, Lcom/layar/data/BasePOI;->hasRelativeAlt:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v1, v1, Lcom/layar/data/BasePOI;->relativeAlt:F

    iput v1, p0, Lcom/layar/core/POIRenderer;->centerAltitude:F

    goto :goto_1
.end method

.method protected abstract drawObject(Ljavax/microedition/khronos/opengles/GL10;Z)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 109
    if-ne p1, p0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 113
    .end local p1
    :goto_0
    return v0

    .line 111
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/layar/core/POIRenderer;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    check-cast p1, Lcom/layar/core/POIRenderer;

    .end local p1
    iget-object v1, p1, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 113
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconScale()F
    .locals 1

    .prologue
    .line 164
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getIconTextureId()I
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/layar/core/POIRenderer;->iconReady:Z

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lcom/layar/core/POIRenderer;->iconTextureId:I

    if-lez v0, :cond_0

    .line 156
    iget v0, p0, Lcom/layar/core/POIRenderer;->iconTextureId:I

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/POIRenderer;->iconReady:Z

    .line 160
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getViewSize(F)F
    .locals 3
    .parameter "size"

    .prologue
    .line 179
    const/high16 v0, 0x3f80

    .line 180
    .local v0, scale:F
    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v0, v1, Lcom/layar/data/Transform;->scale:F

    .line 182
    :cond_0
    mul-float v1, p1, v0

    iget-object v2, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v2, v2, Lcom/layar/data/BasePOI;->geodistance:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/layar/core/ARRenderer;->getPixelSize(FF)F

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected abstract intersect([F[F)F
.end method

.method protected needUpdate(Lcom/layar/data/POI;)Z
    .locals 4
    .parameter "poi"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 186
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 207
    :goto_0
    return v0

    .line 192
    :cond_2
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v0, :cond_7

    .line 193
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 194
    :cond_3
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    .line 196
    goto :goto_0

    .line 197
    :cond_5
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v3

    .line 198
    goto :goto_0

    .line 200
    :cond_6
    iget-object v0, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v0, v0, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v1, v1, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 202
    goto :goto_0

    :cond_7
    move v0, v3

    .line 207
    goto :goto_0
.end method

.method protected resetObject()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/core/POIRenderer;->iconDownload:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/layar/util/DownloadManager;->enqueueRunnable(Ljava/lang/Runnable;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public resetTextures()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/layar/core/POIRenderer;->iconReady:Z

    .line 175
    iput-boolean v0, p0, Lcom/layar/core/POIRenderer;->isIconMissed:Z

    .line 176
    return-void
.end method

.method public startAnimation(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v0, p1}, Lcom/layar/core/animation/AnimationsContainer;->startAnimations(I)V

    .line 279
    return-void
.end method

.method public stopAnimation(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v0, p1}, Lcom/layar/core/animation/AnimationsContainer;->stopAnimations(I)V

    .line 283
    return-void
.end method

.method public updateObject(Lcom/layar/data/POI;)Lcom/layar/core/POIRenderer;
    .locals 5
    .parameter "poi"

    .prologue
    .line 226
    iget-object v3, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    if-ne p1, v3, :cond_0

    move-object v3, p0

    .line 263
    :goto_0
    return-object v3

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v3, v3, Lcom/layar/data/BasePOI;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, p0

    .line 235
    goto :goto_0

    .line 239
    :cond_1
    iget v3, p1, Lcom/layar/data/POI;->dimension:I

    iget-object v4, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v4, v4, Lcom/layar/data/BasePOI;->dimension:I

    if-eq v3, v4, :cond_2

    .line 241
    const/4 v3, 0x0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v3, p1, Lcom/layar/data/POI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/layar/core/animation/AnimationsContainer;->get(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 245
    .local v2, updateAnimations:Ljava/util/List;,"Ljava/util/List<Lcom/layar/core/animation/Animation;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 250
    iget-object v3, p1, Lcom/layar/data/POI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    iget-object v4, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->animations:Lcom/layar/core/animation/AnimationsContainer;

    invoke-virtual {v3, v4}, Lcom/layar/core/animation/AnimationsContainer;->updateAnimations(Lcom/layar/core/animation/AnimationsContainer;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/layar/core/POIRenderer;->needUpdate(Lcom/layar/data/POI;)Z

    move-result v1

    .line 254
    .local v1, needUpdate:Z
    iput-object p1, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    .line 257
    if-eqz v1, :cond_4

    .line 260
    invoke-virtual {p0}, Lcom/layar/core/POIRenderer;->resetObject()V

    :cond_4
    move-object v3, p0

    .line 263
    goto :goto_0

    .line 245
    .end local v1           #needUpdate:Z
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/animation/Animation;

    .line 246
    .local v0, animation:Lcom/layar/core/animation/Animation;
    invoke-virtual {v0}, Lcom/layar/core/animation/Animation;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    iget-object v4, p0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    invoke-virtual {v0, v4, p1}, Lcom/layar/core/animation/Animation;->calculateUpdate(Lcom/layar/data/BasePOI;Lcom/layar/data/BasePOI;)V

    goto :goto_1
.end method
