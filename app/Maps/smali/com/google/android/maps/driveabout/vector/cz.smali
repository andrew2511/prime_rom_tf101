.class public Lcom/google/android/maps/driveabout/vector/cz;
.super Lcom/google/android/maps/driveabout/vector/aY;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/br;

.field private final c:Lcom/google/android/maps/driveabout/vector/br;

.field private final d:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final e:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final f:LG/Q;

.field private final g:LG/Q;

.field private final h:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cz;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(IILjava/util/Set;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Ljava/util/Set;)V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->f:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->g:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->h:LG/Q;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/vector/U;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    return-void
.end method

.method static a(LG/c;)I
    .locals 1

    invoke-virtual {p0}, LG/c;->h()LG/r;

    move-result-object v0

    invoke-virtual {v0}, LG/r;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LG/c;->c()LG/s;

    move-result-object v0

    invoke-virtual {v0}, LG/s;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static a(LG/w;[Ljava/lang/String;LG/j;Lcom/google/android/maps/driveabout/vector/aH;)Lcom/google/android/maps/driveabout/vector/cz;
    .locals 12

    invoke-virtual {p0}, LG/w;->i()LG/S;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v2

    move v8, v1

    :goto_0
    invoke-virtual {p2}, LG/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, LG/j;->b()LG/d;

    move-result-object v2

    instance-of v1, v2, LG/c;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    move-object v0, v2

    check-cast v0, LG/c;

    move-object v1, v0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cz;->c(LG/c;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v2

    check-cast v0, LG/c;

    move-object v3, v0

    invoke-static {p3, v3}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lcom/google/android/maps/driveabout/vector/aH;LG/c;)V

    :cond_0
    move-object v0, v2

    check-cast v0, LG/c;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/cz;->a(LG/c;)I

    move-result v1

    move-object v0, v2

    check-cast v0, LG/c;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/cz;->b(LG/c;)I

    move-result v3

    add-int v9, v8, v1

    const/16 v10, 0x4000

    if-gt v9, v10, :cond_1

    add-int v9, v7, v3

    const/16 v10, 0x4000

    if-le v9, v10, :cond_2

    :cond_1
    new-instance p2, Lcom/google/android/maps/driveabout/vector/cz;

    invoke-direct {p2, v8, v7, v6}, Lcom/google/android/maps/driveabout/vector/cz;-><init>(IILjava/util/Set;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/c;

    invoke-direct {p2, p0, v4, p1}, Lcom/google/android/maps/driveabout/vector/cz;->a(LG/w;LG/S;LG/c;)V

    goto :goto_1

    :cond_2
    add-int/2addr v1, v8

    add-int/2addr v3, v7

    invoke-interface {v2}, LG/d;->m()[I

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget v10, v7, v9

    if-ltz v10, :cond_3

    array-length v11, p1

    if-ge v10, v11, :cond_3

    aget-object v10, p1, v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    check-cast v2, LG/c;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, LG/j;->a()LG/d;

    move v7, v3

    move v8, v1

    goto :goto_0

    :cond_5
    return-object p2
.end method

.method private a(LG/w;LG/S;LG/c;)V
    .locals 15

    invoke-virtual/range {p3 .. p3}, LG/c;->h()LG/r;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, LG/c;->c()LG/s;

    move-result-object v0

    invoke-virtual {v0}, LG/s;->a()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, LG/r;->d()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    move v7, v2

    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/cz;->c(LG/c;)Z

    move-result v8

    if-nez v7, :cond_2

    if-eqz v8, :cond_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, LG/S;->d()LG/Q;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, LG/S;->g()I

    move-result v9

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LG/r;->c(I)I

    move-result v3

    move v10, v3

    :goto_2
    if-eqz v8, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LG/r;->a(I)I

    move-result v1

    move v11, v1

    :goto_3
    invoke-virtual/range {p3 .. p3}, LG/c;->e()[B

    move-result-object v12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v13, v3

    move v14, v1

    move v1, v4

    :goto_4
    if-ge v1, v6, :cond_8

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cz;->f:LG/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cz;->g:LG/Q;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->h:LG/Q;

    invoke-virtual/range {v0 .. v5}, LG/s;->a(ILG/Q;LG/Q;LG/Q;LG/Q;)V

    if-eqz v7, :cond_b

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cz;->f:LG/Q;

    invoke-virtual {v3, v4, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cz;->g:LG/Q;

    invoke-virtual {v3, v4, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cz;->h:LG/Q;

    invoke-virtual {v3, v4, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    add-int/lit8 v3, v14, 0x3

    :goto_5
    if-eqz v8, :cond_a

    aget-byte v4, v12, v1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->f:LG/Q;

    invoke-virtual {v4, v5, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->g:LG/Q;

    invoke-virtual {v4, v5, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    add-int/lit8 v4, v13, 0x2

    :goto_6
    aget-byte v5, v12, v1

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v13, p0, Lcom/google/android/maps/driveabout/vector/cz;->g:LG/Q;

    invoke-virtual {v5, v13, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v13, p0, Lcom/google/android/maps/driveabout/vector/cz;->h:LG/Q;

    invoke-virtual {v5, v13, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    add-int/lit8 v4, v4, 0x2

    :cond_3
    aget-byte v5, v12, v1

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v13, p0, Lcom/google/android/maps/driveabout/vector/cz;->h:LG/Q;

    invoke-virtual {v5, v13, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v13, p0, Lcom/google/android/maps/driveabout/vector/cz;->f:LG/Q;

    invoke-virtual {v5, v13, v9}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    add-int/lit8 v4, v4, 0x2

    :cond_4
    :goto_7
    add-int/lit8 v1, v1, 0x1

    move v13, v4

    move v14, v3

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, v10, v14}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, v11, v13}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    goto/16 :goto_0

    :cond_9
    move v4, v13

    goto :goto_6

    :cond_a
    move v4, v13

    goto :goto_7

    :cond_b
    move v3, v14

    goto :goto_5
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/aH;LG/c;)V
    .locals 12

    invoke-virtual {p1}, LG/c;->h()LG/r;

    move-result-object v4

    invoke-virtual {p1}, LG/c;->c()LG/s;

    move-result-object v0

    invoke-virtual {v0}, LG/s;->a()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, LG/r;->c()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LG/c;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, LG/c;->b()LG/ac;

    move-result-object v1

    invoke-virtual {p1}, LG/c;->l()I

    move-result v7

    invoke-virtual {p1}, LG/c;->i()I

    move-result v5

    invoke-virtual {p1}, LG/c;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, LG/c;->m()[I

    move-result-object v10

    invoke-virtual {p1}, LG/c;->e()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/y;->a(LG/s;[B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG/m;

    new-instance v0, LG/V;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v10}, LG/V;-><init>(LG/ac;LG/m;[LG/g;LG/r;ILjava/lang/String;IFI[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aH;->a(LG/d;)V

    goto :goto_0
.end method

.method static b(LG/c;)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/cz;->c(LG/c;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LG/c;->e()[B

    move-result-object v0

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x7

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cz;->a:[I

    aget v3, v4, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    return-void
.end method

.method private static c(LG/c;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, LG/c;->h()LG/r;

    move-result-object v0

    invoke-virtual {v0}, LG/r;->c()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LG/c;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0}, LG/r;->c()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, LG/r;->b(I)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_1
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0xb0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->e:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cz;->d:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method
