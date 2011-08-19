.class public final Landroid/media/videoeditor/VideoEditor$OverlayData;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayData"
.end annotation


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mClear:Z

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mRenderingMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 162
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    .line 171
    return-void
.end method


# virtual methods
.method public needsRendering()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public release()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 181
    :cond_c
    return-void
.end method

.method public renderOverlay(Landroid/graphics/Bitmap;)V
    .registers 16
    .parameter "destBitmap"

    .prologue
    const/4 v13, 0x0

    .line 219
    iget-boolean v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-eqz v11, :cond_9

    .line 220
    invoke-virtual {p1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 304
    :cond_8
    :goto_8
    return-void

    .line 221
    :cond_9
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_8

    .line 222
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    .local v7, overlayCanvas:Landroid/graphics/Canvas;
    iget v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    packed-switch v11, :pswitch_data_156

    .line 295
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rendering mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 227
    :pswitch_32
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v3, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    .local v3, destRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 299
    .local v9, srcRect:Landroid/graphics/Rect;
    :goto_50
    invoke-virtual {p1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 300
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v9, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 302
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    .line 237
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v9           #srcRect:Landroid/graphics/Rect;
    :pswitch_60
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 240
    .local v1, aROverlayImage:F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 243
    .local v0, aRCanvas:F
    cmpl-float v11, v1, v0

    if-lez v11, :cond_b8

    .line 244
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int v5, v11, v12

    .line 246
    .local v5, newHeight:I
    const/4 v4, 0x0

    .line 247
    .local v4, left:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    div-int/lit8 v10, v11, 0x2

    .line 248
    .local v10, top:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 249
    .local v8, right:I
    add-int v2, v10, v5

    .line 259
    .end local v5           #newHeight:I
    .local v2, bottom:I
    :goto_a1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    .restart local v3       #destRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    .restart local v9       #srcRect:Landroid/graphics/Rect;
    goto :goto_50

    .line 251
    .end local v2           #bottom:I
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v4           #left:I
    .end local v8           #right:I
    .end local v9           #srcRect:Landroid/graphics/Rect;
    .end local v10           #top:I
    :cond_b8
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int v6, v11, v12

    .line 253
    .local v6, newWidth:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v4, v11, 0x2

    .line 254
    .restart local v4       #left:I
    const/4 v10, 0x0

    .line 255
    .restart local v10       #top:I
    add-int v8, v4, v6

    .line 256
    .restart local v8       #right:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .restart local v2       #bottom:I
    goto :goto_a1

    .line 268
    .end local v0           #aRCanvas:F
    .end local v1           #aROverlayImage:F
    .end local v2           #bottom:I
    .end local v4           #left:I
    .end local v6           #newWidth:I
    .end local v8           #right:I
    .end local v10           #top:I
    :pswitch_da
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 270
    .restart local v1       #aROverlayImage:F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 272
    .restart local v0       #aRCanvas:F
    cmpg-float v11, v1, v0

    if-gez v11, :cond_131

    .line 273
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    div-int v5, v11, v12

    .line 276
    .restart local v5       #newHeight:I
    const/4 v4, 0x0

    .line 277
    .restart local v4       #left:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    div-int/lit8 v10, v11, 0x2

    .line 278
    .restart local v10       #top:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 279
    .restart local v8       #right:I
    add-int v2, v10, v5

    .line 289
    .end local v5           #newHeight:I
    .restart local v2       #bottom:I
    :goto_11d
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 290
    .restart local v9       #srcRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v3, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    .restart local v3       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_50

    .line 281
    .end local v2           #bottom:I
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v4           #left:I
    .end local v8           #right:I
    .end local v9           #srcRect:Landroid/graphics/Rect;
    .end local v10           #top:I
    :cond_131
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    div-int v6, v11, v12

    .line 283
    .restart local v6       #newWidth:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v4, v11, 0x2

    .line 284
    .restart local v4       #left:I
    const/4 v10, 0x0

    .line 285
    .restart local v10       #top:I
    add-int v8, v4, v6

    .line 286
    .restart local v8       #right:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .restart local v2       #bottom:I
    goto :goto_11d

    .line 225
    nop

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_32
        :pswitch_da
        :pswitch_60
    .end packed-switch
.end method

.method set(Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "overlayBitmap"
    .parameter "renderingMode"

    .prologue
    .line 199
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 200
    iput p2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    .line 202
    return-void
.end method

.method setClear()V
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    .line 209
    return-void
.end method
