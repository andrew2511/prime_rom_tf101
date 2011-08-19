.class public Lcom/zinio/mobile/android/view/issue/o;
.super Lcom/zinio/mobile/android/modules/imageloader/b;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/l;
.implements Lcom/zinio/mobile/android/a/a/v;


# static fields
.field private static h:Lcom/zinio/mobile/android/view/issue/o;

.field private static final i:Ljava/lang/String;


# instance fields
.field private a:Lcom/zinio/mobile/android/view/issue/d;

.field private b:Lcom/zinio/mobile/android/view/issue/b;

.field private c:Lcom/zinio/mobile/android/view/issue/h;

.field private d:Lcom/zinio/mobile/android/view/issue/h;

.field private e:Lcom/zinio/mobile/android/modules/imageloader/a;

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/zinio/mobile/android/view/issue/o;->h:Lcom/zinio/mobile/android/view/issue/o;

    .line 62
    const-class v0, Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/issue/o;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/high16 v6, -0x8000

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 64
    invoke-direct {p0}, Lcom/zinio/mobile/android/modules/imageloader/b;-><init>()V

    .line 47
    iput v3, p0, Lcom/zinio/mobile/android/view/issue/o;->f:I

    .line 48
    new-instance v0, Lcom/zinio/mobile/android/view/issue/p;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/issue/p;-><init>(Lcom/zinio/mobile/android/view/issue/o;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->g:Landroid/os/Handler;

    .line 65
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 68
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 69
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 71
    new-instance v0, Lcom/zinio/mobile/android/view/issue/d;

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    move v7, v6

    move-object v8, v1

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/issue/d;-><init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    .line 75
    invoke-static {}, Lcom/zinio/mobile/android/f/d;->a()Lcom/zinio/mobile/android/f/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/f/d;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/modules/imageloader/ImageLoaderModule;

    .line 77
    invoke-interface {v0, p0}, Lcom/zinio/mobile/android/modules/imageloader/ImageLoaderModule;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/modules/imageloader/a;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/issue/o;)Lcom/zinio/mobile/android/view/issue/b;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->b:Lcom/zinio/mobile/android/view/issue/b;

    return-object v0
.end method

.method public static a()Lcom/zinio/mobile/android/view/issue/o;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/zinio/mobile/android/view/issue/o;->h:Lcom/zinio/mobile/android/view/issue/o;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/zinio/mobile/android/view/issue/o;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/issue/o;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/o;->h:Lcom/zinio/mobile/android/view/issue/o;

    .line 91
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/view/issue/o;->h:Lcom/zinio/mobile/android/view/issue/o;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 255
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->x()I

    move-result v1

    .line 259
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v2

    .line 260
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v3

    .line 262
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 264
    const v0, 0x7f02005d

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 265
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v0, v1, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    new-instance v5, Lcom/zinio/mobile/android/view/issue/h;

    invoke-direct {v5, v0, v2, v3, v8}, Lcom/zinio/mobile/android/view/issue/h;-><init>(Landroid/graphics/Bitmap;IILjava/util/List;)V

    iput-object v5, p0, Lcom/zinio/mobile/android/view/issue/o;->c:Lcom/zinio/mobile/android/view/issue/h;

    .line 270
    const v0, 0x7f02005e

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 271
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 273
    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v0, v1, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/zinio/mobile/android/view/issue/h;

    invoke-direct {v1, v0, v2, v3, v8}, Lcom/zinio/mobile/android/view/issue/h;-><init>(Landroid/graphics/Bitmap;IILjava/util/List;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->d:Lcom/zinio/mobile/android/view/issue/h;

    .line 275
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v1

    .line 280
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v2

    .line 281
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/a;->a(Lcom/zinio/mobile/android/view/issue/d;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    invoke-interface {v0}, Lcom/zinio/mobile/android/modules/imageloader/a;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 106
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v1

    invoke-static {v1}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 113
    :cond_2
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/resources/a/a;->b(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v2

    invoke-static {v2}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 118
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/zinio/mobile/android/a/a/s;->a(I)Lcom/zinio/mobile/android/a/a/s;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/a;->b(Lcom/zinio/mobile/android/view/issue/d;)V

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/o;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(I)V
    .locals 2
    .parameter

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/a;->a(Lcom/zinio/mobile/android/view/issue/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 235
    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/view/issue/d;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v3

    iget-object v4, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/view/issue/d;->j()Z

    move-result v4

    iget-object v5, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/view/issue/d;->d()Z

    move-result v5

    iget-object v6, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v8

    iget-object v6, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v9

    move v6, p2

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/issue/d;-><init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    .line 241
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->c:Lcom/zinio/mobile/android/view/issue/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->d:Lcom/zinio/mobile/android/view/issue/h;

    if-nez v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/o;->d()V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/a;->a(Lcom/zinio/mobile/android/view/issue/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_1
    monitor-exit p0

    return-void

    .line 245
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->c:Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V

    .line 246
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->d:Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/view/issue/h;->c(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 10
    .parameter

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 207
    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/view/issue/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v6

    iget-object v7, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v7}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v7

    const/high16 v9, -0x8000

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/issue/d;-><init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    .line 214
    if-eqz p1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->f()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->e()I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/o;->d()V

    .line 217
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/o;->e()V

    .line 219
    :cond_1
    invoke-virtual {p1, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_2
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 312
    invoke-interface {p1}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    check-cast p1, Lcom/zinio/mobile/android/a/a/h;

    .line 315
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/h;->a()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    .line 317
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v3

    .line 320
    sub-int v4, v3, v2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_1

    sub-int v1, v3, v5

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v3, 0x3

    if-ne v0, v1, :cond_1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/a;->a(Lcom/zinio/mobile/android/view/issue/d;)V

    .line 340
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v5

    .line 317
    goto :goto_0

    .line 329
    :cond_3
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    check-cast p1, Lcom/zinio/mobile/android/a/a/s;

    .line 332
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/s;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/s;->a()I

    move-result v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/s;->a()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->e:Lcom/zinio/mobile/android/modules/imageloader/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-interface {v0, v1}, Lcom/zinio/mobile/android/modules/imageloader/a;->b(Lcom/zinio/mobile/android/view/issue/d;)V

    goto :goto_1
.end method

.method public final a(Lcom/zinio/mobile/android/view/issue/b;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/o;->b:Lcom/zinio/mobile/android/view/issue/b;

    .line 344
    return-void
.end method

.method public final declared-synchronized a(Lcom/zinio/mobile/android/view/issue/d;)V
    .locals 4
    .parameter

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    .line 382
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/o;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Lcom/zinio/mobile/android/view/issue/h;
    .locals 9
    .parameter

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    .line 146
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->g()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->d()Z

    move-result v2

    .line 148
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->h()I

    move-result v3

    .line 149
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v4

    .line 150
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->a()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v5

    .line 151
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->c()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v6

    .line 152
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->b()Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v0

    .line 153
    if-eqz v4, :cond_2

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    .line 155
    :goto_0
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/zinio/mobile/android/view/issue/o;->d:Lcom/zinio/mobile/android/view/issue/h;

    .line 157
    :goto_1
    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    .line 159
    :goto_2
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->W()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 160
    neg-int v3, v3

    .line 162
    :cond_0
    packed-switch v3, :pswitch_data_0

    move-object v0, v7

    .line 190
    :cond_1
    :goto_3
    monitor-exit p0

    return-object v0

    .line 153
    :cond_2
    sub-int v3, p1, v3

    goto :goto_0

    .line 155
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/zinio/mobile/android/view/issue/o;->c:Lcom/zinio/mobile/android/view/issue/h;

    goto :goto_1

    .line 157
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 164
    :pswitch_0
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    move-object v0, v5

    .line 165
    goto :goto_3

    .line 169
    :pswitch_1
    if-eqz v0, :cond_5

    if-nez v2, :cond_1

    .line 182
    :cond_5
    if-eqz v2, :cond_6

    if-lez p1, :cond_6

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    if-gt p1, v0, :cond_6

    .line 183
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    .line 185
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 186
    if-eqz v4, :cond_6

    .line 187
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move-object v0, v7

    .line 190
    goto :goto_3

    .line 174
    :pswitch_2
    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    move-object v0, v6

    .line 175
    goto :goto_3

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/o;->a:Lcom/zinio/mobile/android/view/issue/d;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/d;->k()V

    .line 296
    return-void
.end method
