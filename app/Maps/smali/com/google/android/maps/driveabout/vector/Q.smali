.class public Lcom/google/android/maps/driveabout/vector/Q;
.super Lcom/google/android/maps/driveabout/vector/aY;


# static fields
.field private static a:I

.field private static b:F

.field private static c:F


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/vector/br;

.field private final e:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final f:I

.field private final g:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/Q;->a:I

    sput v1, Lcom/google/android/maps/driveabout/vector/Q;->b:F

    sput v1, Lcom/google/android/maps/driveabout/vector/Q;->c:F

    return-void
.end method

.method private constructor <init>(IILjava/util/Set;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    const/high16 v0, 0x1

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:I

    return-void
.end method

.method private static a(LG/J;)I
    .locals 1

    invoke-virtual {p0}, LG/J;->a()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    return v0
.end method

.method public static a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/Q;
    .locals 14

    const/16 v13, 0x4000

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, LG/w;->i()LG/S;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    move v7, v11

    :goto_0
    invoke-virtual/range {p2 .. p2}, LG/j;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, LG/j;->b()LG/d;

    move-result-object v2

    instance-of v3, v2, LG/J;

    if-eqz v3, :cond_6

    if-le v1, v12, :cond_3

    :cond_0
    :goto_1
    if-gez v1, :cond_1

    move v1, v12

    :cond_1
    new-instance v2, Lcom/google/android/maps/driveabout/vector/Q;

    invoke-direct {v2, v7, v1, v5}, Lcom/google/android/maps/driveabout/vector/Q;-><init>(IILjava/util/Set;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/d;

    instance-of v5, v1, LG/J;

    if-eqz v5, :cond_9

    check-cast v1, LG/J;

    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/w;LG/S;LG/J;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    check-cast v0, LG/J;

    move-object v1, v0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/J;)I

    move-result v1

    add-int v3, v1, v7

    if-le v3, v13, :cond_4

    move v1, v12

    goto :goto_1

    :cond_4
    add-int/2addr v1, v7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v1, v12

    :goto_3
    invoke-interface {v2}, LG/d;->m()[I

    move-result-object v2

    array-length v7, v2

    move v8, v11

    :goto_4
    if-ge v8, v7, :cond_8

    aget v9, v2, v8

    if-ltz v9, :cond_5

    array-length v10, p1

    if-ge v9, v10, :cond_5

    aget-object v9, p1, v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    instance-of v3, v2, LG/V;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, LG/V;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/V;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, LG/d;->h()LG/r;

    move-result-object v3

    invoke-virtual {v3, v11}, LG/r;->b(I)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/Q;->b(F)I

    move-result v3

    if-eq v3, v1, :cond_7

    if-gtz v1, :cond_0

    move v1, v3

    :cond_7
    move-object v0, v2

    check-cast v0, LG/V;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/Q;->b(LG/V;)I

    move-result v3

    add-int v8, v3, v7

    if-gt v8, v13, :cond_0

    add-int/2addr v3, v7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual/range {p2 .. p2}, LG/j;->a()LG/d;

    move v7, v3

    goto/16 :goto_0

    :cond_9
    instance-of v5, v1, LG/V;

    if-eqz v5, :cond_2

    check-cast v1, LG/V;

    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/w;LG/S;LG/V;)V

    goto :goto_2

    :cond_a
    return-object v2
.end method

.method public static declared-synchronized a(F)V
    .locals 4

    const-class v0, Lcom/google/android/maps/driveabout/vector/Q;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/google/android/maps/driveabout/vector/Q;->c:F

    const/high16 v1, 0x3f80

    const/4 v2, 0x5

    sget v3, Lcom/google/android/maps/driveabout/vector/Q;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/android/maps/driveabout/vector/Q;->c:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/google/android/maps/driveabout/vector/Q;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(I)V
    .locals 4

    const-class v0, Lcom/google/android/maps/driveabout/vector/Q;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/google/android/maps/driveabout/vector/Q;->a:I

    const/high16 v1, 0x3f80

    const/4 v2, 0x5

    sget v3, Lcom/google/android/maps/driveabout/vector/Q;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/android/maps/driveabout/vector/Q;->c:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/google/android/maps/driveabout/vector/Q;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(LG/w;LG/S;LG/J;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p3}, LG/J;->h()LG/r;

    move-result-object v0

    invoke-virtual {v0}, LG/r;->c()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v8}, LG/r;->b(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, v8}, LG/r;->a(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, LG/J;->a()LG/m;

    move-result-object v1

    invoke-virtual {v1}, LG/m;->b()I

    move-result v2

    invoke-virtual {p2}, LG/S;->d()LG/Q;

    move-result-object v3

    invoke-virtual {p2}, LG/S;->g()I

    move-result v4

    move v5, v8

    :goto_1
    if-ge v5, v2, :cond_2

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-virtual {v1, v5, v6}, LG/m;->a(ILG/Q;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-static {v6, v3, v7}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-virtual {v6, v7, v4}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, v8}, LG/r;->a(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    goto :goto_0
.end method

.method private a(LG/w;LG/S;LG/V;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p3}, LG/V;->h()LG/r;

    move-result-object v0

    invoke-virtual {v0}, LG/r;->c()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v9}, LG/r;->b(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, v9}, LG/r;->a(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, LG/V;->c()LG/m;

    move-result-object v1

    invoke-virtual {v1}, LG/m;->b()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p2}, LG/S;->d()LG/Q;

    move-result-object v4

    invoke-virtual {p2}, LG/S;->g()I

    move-result v5

    move v6, v9

    :goto_1
    if-gt v6, v2, :cond_3

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-virtual {v1, v6, v7}, LG/m;->a(ILG/Q;)V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-static {v7, v4, v8}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-virtual {v7, v8, v5}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    if-lez v6, :cond_2

    if-ge v6, v2, :cond_2

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/Q;->g:LG/Q;

    invoke-virtual {v7, v8, v5}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, v9}, LG/r;->a(I)I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    goto :goto_0
.end method

.method public static declared-synchronized a(LG/V;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/google/android/maps/driveabout/vector/Q;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LG/V;->h()LG/r;

    move-result-object v1

    invoke-virtual {v1}, LG/r;->c()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, LG/V;->h()LG/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LG/r;->b(I)F

    move-result v1

    sget v2, Lcom/google/android/maps/driveabout/vector/Q;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    move v1, v4

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized b(F)I
    .locals 4

    const-class v0, Lcom/google/android/maps/driveabout/vector/Q;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/google/android/maps/driveabout/vector/Q;->a:I

    sget v3, Lcom/google/android/maps/driveabout/vector/Q;->c:F

    mul-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(LG/V;)I
    .locals 2

    invoke-virtual {p0}, LG/V;->c()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 5

    const/high16 v4, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    goto :goto_0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method
