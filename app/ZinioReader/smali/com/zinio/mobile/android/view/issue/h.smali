.class public Lcom/zinio/mobile/android/view/issue/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static final h:Landroid/graphics/Paint;

.field private static o:Ljava/lang/String;


# instance fields
.field private g:J

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Matrix;

.field private k:Landroid/graphics/Matrix;

.field private l:F

.field private m:I

.field private n:I

.field private final p:Ljava/util/List;

.field private q:Lcom/zinio/mobile/android/modules/overlays/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 30
    sput-wide v1, Lcom/zinio/mobile/android/view/issue/h;->a:J

    .line 31
    sput-wide v1, Lcom/zinio/mobile/android/view/issue/h;->b:J

    .line 32
    sput v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    .line 33
    sput v0, Lcom/zinio/mobile/android/view/issue/h;->d:I

    .line 34
    sput v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    .line 35
    sput v0, Lcom/zinio/mobile/android/view/issue/h;->f:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/h;->h:Landroid/graphics/Paint;

    .line 47
    const-class v0, Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/issue/h;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IILjava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    .line 75
    invoke-static {}, Lcom/zinio/mobile/android/App;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/view/issue/h;->g:J

    .line 77
    iget-wide v0, p0, Lcom/zinio/mobile/android/view/issue/h;->g:J

    .line 78
    sget-wide v2, Lcom/zinio/mobile/android/view/issue/h;->a:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/zinio/mobile/android/view/issue/h;->a:J

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new PageDrawable, size in bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/zinio/mobile/android/view/issue/h;->f()V

    .line 81
    const-wide/32 v2, 0xc3500

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 82
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 94
    int-to-float v0, p2

    int-to-float v3, v1

    div-float/2addr v0, v3

    .line 95
    int-to-float v3, p3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 96
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 97
    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 98
    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 99
    sub-int v3, p2, v3

    div-int/lit8 v3, v3, 0x2

    .line 100
    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    .line 102
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    .line 103
    iget-object v5, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 104
    iput v0, p0, Lcom/zinio/mobile/android/view/issue/h;->l:F

    .line 105
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 107
    iput p2, p0, Lcom/zinio/mobile/android/view/issue/h;->m:I

    .line 108
    iput p3, p0, Lcom/zinio/mobile/android/view/issue/h;->n:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->p:Ljava/util/List;

    .line 111
    if-eqz p4, :cond_4

    move v3, v9

    .line 112
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 113
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/g;

    .line 114
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/g;->a()Landroid/graphics/RectF;

    move-result-object v4

    .line 116
    iget v5, v4, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    .line 117
    iget v6, v4, Landroid/graphics/RectF;->top:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    .line 118
    iget v7, v4, Landroid/graphics/RectF;->right:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    .line 119
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v2

    mul-float/2addr v4, v8

    .line 121
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v5, v6, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 122
    iget-object v4, p0, Lcom/zinio/mobile/android/view/issue/h;->p:Ljava/util/List;

    new-instance v5, Lcom/zinio/mobile/android/a/a/g;

    invoke-direct {v5, v0, v8}, Lcom/zinio/mobile/android/a/a/g;-><init>(Lcom/zinio/mobile/android/a/a/g;Landroid/graphics/RectF;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 83
    :cond_1
    const-wide/32 v2, 0x186a00

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 84
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->d:I

    goto/16 :goto_0

    .line 85
    :cond_2
    const-wide/32 v2, 0x30d400

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 86
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    goto/16 :goto_0

    .line 88
    :cond_3
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->f:I

    goto/16 :goto_0

    .line 126
    :cond_4
    invoke-static {}, Lcom/zinio/mobile/android/f/d;->a()Lcom/zinio/mobile/android/f/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/f/d;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    invoke-static {p0}, Lcom/zinio/mobile/android/modules/overlays/InteractiveOverlaysModule;->a(Lcom/zinio/mobile/android/view/issue/h;)Lcom/zinio/mobile/android/modules/overlays/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->q:Lcom/zinio/mobile/android/modules/overlays/a;

    .line 134
    :cond_5
    return-void
.end method

.method private static f()V
    .locals 5

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tAll allocated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/zinio/mobile/android/view/issue/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tAll freed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/zinio/mobile/android/view/issue/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tDifference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/zinio/mobile/android/view/issue/h;->a:J

    sget-wide v3, Lcom/zinio/mobile/android/view/issue/h;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tPortrait thumbs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zinio/mobile/android/view/issue/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tLandscape thumbs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zinio/mobile/android/view/issue/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tPortrait HQ images:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zinio/mobile/android/view/issue/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tLandscape HQ images:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/zinio/mobile/android/view/issue/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/h;->m:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 289
    iget v1, p0, Lcom/zinio/mobile/android/view/issue/h;->n:I

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 290
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 291
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    monitor-exit p0

    return v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(FF)Lcom/zinio/mobile/android/a/a/n;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->q:Lcom/zinio/mobile/android/modules/overlays/a;

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->k:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->q:Lcom/zinio/mobile/android/modules/overlays/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/h;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1, p2}, Lcom/zinio/mobile/android/modules/overlays/a;->a(Landroid/graphics/Matrix;FF)Lcom/zinio/mobile/android/a/a/n;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->q:Lcom/zinio/mobile/android/modules/overlays/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1, p2}, Lcom/zinio/mobile/android/modules/overlays/a;->a(Landroid/graphics/Matrix;FF)Lcom/zinio/mobile/android/a/a/n;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->p:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 201
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 202
    sget-object v2, Lcom/zinio/mobile/android/view/issue/h;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 204
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->q:Lcom/zinio/mobile/android/modules/overlays/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->q:Lcom/zinio/mobile/android/modules/overlays/a;

    invoke-virtual {v0, p1, v1}, Lcom/zinio/mobile/android/modules/overlays/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 206
    :cond_2
    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/h;->k:Landroid/graphics/Matrix;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/h;->m:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 306
    iget v1, p0, Lcom/zinio/mobile/android/view/issue/h;->n:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 308
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    monitor-exit p0

    return v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/zinio/mobile/android/App;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/zinio/mobile/android/view/issue/h;->g:J

    .line 218
    sget-wide v2, Lcom/zinio/mobile/android/view/issue/h;->b:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/zinio/mobile/android/view/issue/h;->b:J

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycling PageDrawable, size in bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    const-wide/32 v2, 0xc3500

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 221
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    .line 229
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zinio/mobile/android/view/issue/h;->g:J

    .line 230
    invoke-static {}, Lcom/zinio/mobile/android/view/issue/h;->f()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_1
    monitor-exit p0

    return-void

    .line 222
    :cond_2
    const-wide/32 v2, 0x186a00

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 223
    :try_start_1
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->d:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_3
    const-wide/32 v2, 0x30d400

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 225
    :try_start_2
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    goto :goto_0

    .line 227
    :cond_4
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->f:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    .line 330
    iget v1, p0, Lcom/zinio/mobile/android/view/issue/h;->m:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/h;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 352
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 337
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 338
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 340
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 341
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 342
    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    .line 343
    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    .line 345
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    .line 346
    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 347
    iput v2, p0, Lcom/zinio/mobile/android/view/issue/h;->l:F

    .line 348
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/h;->j:Landroid/graphics/Matrix;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 350
    iput p1, p0, Lcom/zinio/mobile/android/view/issue/h;->m:I

    .line 351
    iput p2, p0, Lcom/zinio/mobile/android/view/issue/h;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/h;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/h;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/h;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 356
    invoke-static {}, Lcom/zinio/mobile/android/App;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-wide v0, p0, Lcom/zinio/mobile/android/view/issue/h;->g:J

    .line 358
    sget-wide v2, Lcom/zinio/mobile/android/view/issue/h;->b:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/zinio/mobile/android/view/issue/h;->b:J

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalizing PageDrawable, size in bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 361
    const-wide/32 v2, 0xc3500

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 362
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->c:I

    .line 371
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zinio/mobile/android/view/issue/h;->f()V

    .line 374
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 375
    return-void

    .line 363
    :cond_2
    const-wide/32 v2, 0x186a00

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 364
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->d:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->d:I

    goto :goto_0

    .line 365
    :cond_3
    const-wide/32 v2, 0x30d400

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 366
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->e:I

    goto :goto_0

    .line 368
    :cond_4
    sget v0, Lcom/zinio/mobile/android/view/issue/h;->f:I

    sub-int/2addr v0, v4

    sput v0, Lcom/zinio/mobile/android/view/issue/h;->f:I

    goto :goto_0
.end method
