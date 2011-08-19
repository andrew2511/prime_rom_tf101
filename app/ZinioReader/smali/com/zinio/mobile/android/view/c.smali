.class public final Lcom/zinio/mobile/android/view/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:Z

.field private final p:Landroid/os/Handler;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 90
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    iput v1, p0, Lcom/zinio/mobile/android/view/c;->a:I

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/c;->l:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/c;->m:Landroid/graphics/Paint;

    .line 92
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 94
    iput-object p1, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    .line 95
    iput-object p2, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    .line 96
    iput-boolean p3, p0, Lcom/zinio/mobile/android/view/c;->o:Z

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/c;->p:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/zinio/mobile/android/view/bp;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/bp;-><init>(Lcom/zinio/mobile/android/view/c;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/c;->q:Ljava/lang/Runnable;

    .line 103
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iput v2, p0, Lcom/zinio/mobile/android/view/c;->e:I

    .line 112
    const/16 v0, 0xff

    iput v0, p0, Lcom/zinio/mobile/android/view/c;->f:I

    .line 113
    iput v2, p0, Lcom/zinio/mobile/android/view/c;->i:I

    .line 114
    const/16 v0, 0x190

    iput v0, p0, Lcom/zinio/mobile/android/view/c;->g:I

    iput v0, p0, Lcom/zinio/mobile/android/view/c;->h:I

    .line 115
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/c;->c:Z

    .line 116
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/zinio/mobile/android/view/c;->a:I

    .line 117
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/c;->invalidateSelf()V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/16 v6, 0xff

    .line 168
    .line 170
    iget v0, p0, Lcom/zinio/mobile/android/view/c;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v4

    .line 192
    :goto_0
    iget v1, p0, Lcom/zinio/mobile/android/view/c;->i:I

    .line 193
    iget-boolean v2, p0, Lcom/zinio/mobile/android/view/c;->b:Z

    .line 195
    iget-object v3, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    .line 196
    iget-object v4, p0, Lcom/zinio/mobile/android/view/c;->l:Landroid/graphics/Paint;

    .line 198
    if-eqz v2, :cond_1

    sub-int v5, v6, v1

    if-lez v5, :cond_3

    .line 199
    :cond_1
    if-eqz v2, :cond_2

    .line 200
    sub-int v5, v6, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    :cond_2
    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    if-eqz v2, :cond_3

    .line 204
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    :cond_3
    if-lez v1, :cond_4

    .line 209
    iget-object v2, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    .line 210
    iget-object v3, p0, Lcom/zinio/mobile/android/view/c;->m:Landroid/graphics/Paint;

    .line 211
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/zinio/mobile/android/view/c;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 213
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    :cond_4
    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/c;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_5
    return-void

    .line 172
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/view/c;->d:J

    .line 174
    iput v4, p0, Lcom/zinio/mobile/android/view/c;->a:I

    move v0, v8

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    iget-wide v0, p0, Lcom/zinio/mobile/android/view/c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zinio/mobile/android/view/c;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/zinio/mobile/android/view/c;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 181
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_7

    move v1, v4

    .line 182
    :goto_1
    iget v2, p0, Lcom/zinio/mobile/android/view/c;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/zinio/mobile/android/view/c;->f:I

    iget v4, p0, Lcom/zinio/mobile/android/view/c;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/zinio/mobile/android/view/c;->i:I

    .line 184
    if-eqz v1, :cond_6

    .line 185
    const/4 v0, 0x2

    iput v0, p0, Lcom/zinio/mobile/android/view/c;->a:I

    .line 186
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->p:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/c;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v1, v8

    .line 181
    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getMinimumHeight()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/c;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 284
    return-void
.end method

.method public final setBounds(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    sub-int v0, p3, p1

    .line 239
    sub-int v1, p4, p2

    .line 242
    iget-boolean v2, p0, Lcom/zinio/mobile/android/view/c;->o:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x4170

    .line 244
    :goto_0
    const/16 v3, 0xb

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 245
    iget-boolean v3, p0, Lcom/zinio/mobile/android/view/c;->o:Z

    if-eqz v3, :cond_1

    int-to-float v0, v0

    .line 246
    :goto_1
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x4130

    invoke-direct {v3, v2, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/zinio/mobile/android/view/c;->n:Landroid/graphics/RectF;

    .line 247
    return-void

    .line 242
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 245
    :cond_1
    const/16 v3, 0xf

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_1
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 289
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 290
    return-void
.end method

.method public final setDither(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 271
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 272
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 273
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 278
    iget-object v0, p0, Lcom/zinio/mobile/android/view/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 279
    return-void
.end method
