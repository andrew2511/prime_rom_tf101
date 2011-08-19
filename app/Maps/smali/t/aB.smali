.class public Lt/aB;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private c:Z

.field private d:[B

.field private e:Ljava/lang/ref/WeakReference;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt/aB;->b:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lt/aB;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/aB;->a:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt/aB;->h:J

    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v1, p0, Lt/aB;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lt/aB;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iput v4, p0, Lt/aB;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lt/aB;->d:[B

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(J)V
    .locals 0

    iput-wide p1, p0, Lt/aB;->h:J

    return-void
.end method

.method a(Lt/ae;)V
    .locals 2

    iget-object v0, p0, Lt/aB;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/aB;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lt/aB;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lt/aB;->c:Z

    return v0
.end method

.method a(Law/e;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Law/e;->e(I)J

    move-result-wide v2

    iput-wide v2, p0, Lt/aB;->g:J

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->c(I)[B

    move-result-object v0

    iput-object v0, p0, Lt/aB;->d:[B

    iput v6, p0, Lt/aB;->b:I

    :goto_0
    iget v0, p0, Lt/aB;->b:I

    if-ne v0, v6, :cond_1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    iput v4, p0, Lt/aB;->b:I

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_3
    iput v4, p0, Lt/aB;->b:I

    goto :goto_2
.end method

.method public b()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lt/aB;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lt/aB;->b:I

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lt/aB;->b:I

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lt/aB;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/aB;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Lt/aB;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lt/aB;->d:[B

    if-eqz v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt/aB;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lt/aB;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lt/aB;->d:[B

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lt/aB;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lt/aB;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit p0

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lt/aB;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lt/an;

    invoke-direct {v1, p0, v0}, Lt/an;-><init>(Lt/aB;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method f()J
    .locals 2

    iget-wide v0, p0, Lt/aB;->g:J

    return-wide v0
.end method

.method g()J
    .locals 2

    iget-wide v0, p0, Lt/aB;->h:J

    return-wide v0
.end method

.method h()V
    .locals 3

    iget-object v1, p0, Lt/aB;->a:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lt/aB;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lt/aB;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    invoke-interface {v0, p0}, Lt/ae;->a(Lt/aB;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt/aB;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/aB;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
