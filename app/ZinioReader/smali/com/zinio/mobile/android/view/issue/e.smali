.class public Lcom/zinio/mobile/android/view/issue/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/zinio/mobile/android/view/issue/c;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/zinio/mobile/android/view/issue/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/issue/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zinio/mobile/android/view/issue/c;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/e;->b:Lcom/zinio/mobile/android/view/issue/c;

    .line 153
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter

    .prologue
    const/high16 v11, 0x3f00

    const/high16 v1, -0x4080

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 263
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 266
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->e:Landroid/view/MotionEvent;

    .line 268
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->l:F

    .line 269
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->m:F

    .line 270
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->n:F

    .line 272
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->d:Landroid/view/MotionEvent;

    .line 274
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 275
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 276
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 277
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 278
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 279
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 280
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 281
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 283
    sub-float v1, v3, v1

    .line 284
    sub-float v2, v4, v2

    .line 285
    sub-float v3, v7, v5

    .line 286
    sub-float v4, v8, v6

    .line 287
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->h:F

    .line 288
    iput v2, p0, Lcom/zinio/mobile/android/view/issue/e;->i:F

    .line 289
    iput v3, p0, Lcom/zinio/mobile/android/view/issue/e;->j:F

    .line 290
    iput v4, p0, Lcom/zinio/mobile/android/view/issue/e;->k:F

    .line 292
    mul-float v1, v3, v11

    add-float/2addr v1, v5

    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->f:F

    .line 293
    mul-float v1, v4, v11

    add-float/2addr v1, v6

    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->g:F

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zinio/mobile/android/view/issue/e;->q:J

    .line 295
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->o:F

    .line 296
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/e;->p:F

    .line 297
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 302
    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/e;->d:Landroid/view/MotionEvent;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/e;->e:Landroid/view/MotionEvent;

    .line 308
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->f:F

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    if-eqz v1, :cond_0

    .line 169
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    .line 172
    :cond_0
    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    if-nez v1, :cond_4

    .line 173
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x105

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/e;->d()V

    .line 181
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->d:Landroid/view/MotionEvent;

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zinio/mobile/android/view/issue/e;->q:J

    .line 184
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/issue/e;->b(Landroid/view/MotionEvent;)V

    .line 185
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->b:Lcom/zinio/mobile/android/view/issue/c;

    invoke-interface {v0, p0}, Lcom/zinio/mobile/android/view/issue/c;->b(Lcom/zinio/mobile/android/view/issue/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    .line 186
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGestureInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handled=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    if-nez v0, :cond_3

    .line 256
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    .line 259
    :cond_3
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    return v0

    .line 194
    :cond_4
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 231
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/issue/e;->b(Landroid/view/MotionEvent;)V

    .line 236
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->o:F

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/e;->p:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->b:Lcom/zinio/mobile/android/view/issue/c;

    invoke-interface {v0, p0}, Lcom/zinio/mobile/android/view/issue/c;->a(Lcom/zinio/mobile/android/view/issue/e;)Z

    .line 239
    :cond_5
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGestureInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handled=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MotionEvent.ACTION_MOVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/issue/e;->b(Landroid/view/MotionEvent;)V

    .line 201
    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    move v0, v2

    .line 203
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->f:F

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/e;->g:F

    .line 206
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->b:Lcom/zinio/mobile/android/view/issue/c;

    invoke-interface {v0}, Lcom/zinio/mobile/android/view/issue/c;->a()V

    .line 207
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    .line 209
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/e;->d()V

    .line 210
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGestureInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handled=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MotionEvent.ACTION_POINTER_1_UP || MotionEvent.ACTION_POINTER_2_UP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 201
    goto :goto_1

    .line 219
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/e;->b:Lcom/zinio/mobile/android/view/issue/c;

    invoke-interface {v0}, Lcom/zinio/mobile/android/view/issue/c;->a()V

    .line 220
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    .line 222
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/e;->d()V

    .line 223
    iput-boolean v2, p0, Lcom/zinio/mobile/android/view/issue/e;->r:Z

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGestureInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handled=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MotionEvent.ACTION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x106 -> :sswitch_1
    .end sparse-switch
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->g:F

    return v0
.end method

.method public final c()F
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 386
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->n:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 387
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->l:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->j:F

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/e;->k:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/e;->l:F

    :cond_0
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->l:F

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/e;->m:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/e;->h:F

    iget v2, p0, Lcom/zinio/mobile/android/view/issue/e;->i:F

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/zinio/mobile/android/view/issue/e;->m:F

    :cond_1
    iget v1, p0, Lcom/zinio/mobile/android/view/issue/e;->m:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/e;->n:F

    .line 389
    :cond_2
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/e;->n:F

    return v0
.end method
