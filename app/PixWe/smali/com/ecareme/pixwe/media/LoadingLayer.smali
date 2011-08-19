.class public final Lcom/ecareme/pixwe/media/LoadingLayer;
.super Lcom/ecareme/pixwe/media/Layer;
.source "LoadingLayer.java"


# static fields
.field private static final FADE_INTERVAL:F = 0.5f

.field private static final GRAY_VALUE:F = 0.1f

.field private static final PRELOAD_RESOURCES_ASYNC_SCALED:[I

.field private static final PRELOAD_RESOURCES_ASYNC_UNSCALED:[I


# instance fields
.field private mLoaded:Z

.field private final mOpacity:Lcom/ecareme/pixwe/media/FloatAnim;

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ecareme/pixwe/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_UNSCALED:[I

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/ecareme/pixwe/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_SCALED:[I

    .line 29
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 145
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mLoaded:Z

    .line 146
    new-instance v3, Lcom/ecareme/pixwe/media/FloatAnim;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v4}, Lcom/ecareme/pixwe/media/FloatAnim;-><init>(F)V

    iput-object v3, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mOpacity:Lcom/ecareme/pixwe/media/FloatAnim;

    .line 151
    const/high16 v0, 0x2710

    .line 152
    .local v0, dimension:I
    const/16 v3, 0xc

    new-array v2, v3, [I

    neg-int v3, v0

    aput v3, v2, v5

    const/4 v3, 0x1

    neg-int v4, v0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v3, 0x4

    neg-int v4, v0

    aput v4, v2, v3

    const/4 v3, 0x6

    neg-int v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v0, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    aput v0, v2, v3

    .line 153
    .local v2, vertices:[I
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 154
    .local v1, vertexByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 156
    iget-object v3, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 157
    iget-object v3, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    return-void
.end method


# virtual methods
.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 167
    iget-object v2, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v1, Lcom/ecareme/pixwe/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_UNSCALED:[I

    .line 171
    .local v1, textures:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 174
    sget-object v1, Lcom/ecareme/pixwe/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_SCALED:[I

    .line 175
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 178
    return-void

    .line 172
    :cond_0
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 10
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 183
    iget-boolean v5, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mLoaded:Z

    if-nez v5, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->processAllTextures()V

    .line 188
    sget-object v4, Lcom/ecareme/pixwe/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_SCALED:[I

    .line 189
    .local v4, textures:[I
    const/4 v1, 0x1

    .line 190
    .local v1, complete:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-ne v3, v5, :cond_1

    .line 196
    :goto_1
    sget-object v4, Lcom/ecareme/pixwe/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_UNSCALED:[I

    .line 197
    const/4 v3, 0x0

    :goto_2
    array-length v5, v4

    if-ne v3, v5, :cond_3

    .line 203
    :goto_3
    if-eqz v1, :cond_0

    .line 204
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mLoaded:Z

    .line 205
    iget-object v5, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mOpacity:Lcom/ecareme/pixwe/media/FloatAnim;

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ecareme/pixwe/media/FloatAnim;->animateValue(FFJ)V

    .line 210
    .end local v1           #complete:Z
    .end local v3           #i:I
    .end local v4           #textures:[I
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mOpacity:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->getFrameTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ecareme/pixwe/media/FloatAnim;->getValue(J)F

    move-result v0

    .line 211
    .local v0, alpha:F
    const v5, 0x3b83126f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    .line 212
    const v5, 0x3dcccccd

    mul-float v2, v5, v0

    .line 213
    .local v2, gray:F
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const/high16 v7, 0x4604

    invoke-interface {p2, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 214
    invoke-interface {p2, v2, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 215
    const/4 v5, 0x3

    const/16 v6, 0x140c

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p2, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 216
    const/16 v5, 0xde1

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 217
    const/16 v5, 0xb71

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 218
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {p2, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 219
    const/16 v5, 0xb71

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 220
    const/16 v5, 0xde1

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 221
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->resetColor()V

    .line 226
    .end local v2           #gray:F
    :goto_4
    return-void

    .line 191
    .end local v0           #alpha:F
    .restart local v1       #complete:Z
    .restart local v3       #i:I
    .restart local v4       #textures:[I
    :cond_1
    aget v5, v4, v3

    invoke-virtual {p1, v5}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v5

    iget v5, v5, Lcom/ecareme/pixwe/media/ResourceTexture;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 192
    const/4 v1, 0x0

    .line 193
    goto :goto_1

    .line 190
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_3
    aget v5, v4, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v5

    iget v5, v5, Lcom/ecareme/pixwe/media/ResourceTexture;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 199
    const/4 v1, 0x0

    .line 200
    goto :goto_3

    .line 197
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 224
    .end local v1           #complete:Z
    .end local v3           #i:I
    .end local v4           #textures:[I
    .restart local v0       #alpha:F
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/media/LoadingLayer;->setHidden(Z)V

    goto :goto_4
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mLoaded:Z

    .line 230
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LoadingLayer;->mOpacity:Lcom/ecareme/pixwe/media/FloatAnim;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    .line 231
    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/LoadingLayer;->setHidden(Z)V

    .line 232
    return-void
.end method
