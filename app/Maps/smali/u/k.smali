.class public Lu/k;
.super Ljava/lang/Object;


# instance fields
.field a:[Lu/e;

.field protected b:Ljava/util/List;

.field final synthetic c:Lu/v;

.field private d:[Lf/h;

.field private e:[I

.field private f:[Lu/f;

.field private g:[Lf/h;

.field private h:Lf/h;

.field private i:Lf/h;

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:I

.field private o:Lu/x;

.field private p:Ljava/lang/String;

.field private q:Law/e;

.field private r:Law/e;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:Lf/h;


# direct methods
.method constructor <init>(Lu/v;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lu/k;->c:Lu/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lu/k;->e:[I

    iput-boolean v1, p0, Lu/k;->s:Z

    return-void
.end method

.method constructor <init>(Lu/v;Law/e;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lu/k;->c:Lu/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lu/k;->e:[I

    iput-boolean v1, p0, Lu/k;->s:Z

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, p2}, Lu/k;->b(Law/e;)V

    invoke-direct {p0, p2}, Lu/k;->c(Law/e;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lu/k;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lu/k;->e(Law/e;)Z

    move-result v1

    iput-boolean v1, p0, Lu/k;->s:Z

    invoke-direct {p0, v0}, Lu/k;->d(Law/e;)V

    invoke-virtual {p0}, Lu/k;->s()V

    invoke-direct {p0, v0}, Lu/k;->f(Law/e;)V

    return-void
.end method

.method static synthetic a(Lu/k;)I
    .locals 1

    iget v0, p0, Lu/k;->w:I

    return v0
.end method

.method static synthetic a(Lu/k;I)I
    .locals 0

    iput p1, p0, Lu/k;->n:I

    return p1
.end method

.method private a(Law/e;Z)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lu/k;->n:I

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    iput-boolean v0, p0, Lu/k;->k:Z

    invoke-static {p1, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lu/k;->j:I

    :cond_0
    iget v0, p0, Lu/k;->n:I

    iget v1, p0, Lu/k;->j:I

    invoke-static {v0, v1}, Lu/x;->a(II)Lu/x;

    move-result-object v0

    iput-object v0, p0, Lu/k;->o:Lu/x;

    return-void
.end method

.method static synthetic a(Lu/k;Law/e;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu/k;->a(Law/e;Z)V

    return-void
.end method

.method private a(Law/e;I)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    iget-object v1, p0, Lu/k;->c:Lu/v;

    invoke-static {v1}, Lu/v;->a(Lu/v;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lu/k;->c:Lu/v;

    invoke-static {v0}, Lu/v;->e(Law/e;)I

    move-result v2

    invoke-static {v1, v2}, Lu/v;->a(Lu/v;I)I

    :cond_0
    iget-object v1, p0, Lu/k;->d:[Lf/h;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v3

    aput-object v3, v1, p2

    invoke-static {v0}, Lf/I;->d(Law/e;)Lf/l;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Law/e;->c(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v10, [B

    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v2

    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/io/DataInput;->readShort()S

    move-result v2

    invoke-interface {v3}, Ljava/io/DataInput;->readShort()S

    move-result v4

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    sub-int v6, v1, v11

    aget-object v5, v5, v6

    iget-object v6, p0, Lu/k;->c:Lu/v;

    invoke-static {v6}, Lu/v;->a(Lu/v;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lu/k;->d:[Lf/h;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v2, v4, v0}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v2

    aput-object v2, v6, v1

    move v1, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lu/k;->d:[Lf/h;

    add-int/lit8 v7, v1, 0x1

    new-instance v8, Lf/h;

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v9

    add-int/2addr v2, v9

    invoke-virtual {v5}, Lf/h;->d()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v8, v2, v4}, Lf/h;-><init>(II)V

    aput-object v8, v6, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v10

    :goto_1
    return v0

    :catch_1
    move-exception v0

    move v0, v11

    goto :goto_1
.end method

.method static synthetic b(Lu/k;)I
    .locals 1

    iget v0, p0, Lu/k;->v:I

    return v0
.end method

.method private b(Law/e;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lu/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    iput-boolean v1, p0, Lu/k;->k:Z

    invoke-static {v0, v3}, Law/b;->e(Law/e;I)I

    move-result v1

    iput v1, p0, Lu/k;->j:I

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    iput-boolean v1, p0, Lu/k;->m:Z

    invoke-static {v0, v2}, Law/b;->e(Law/e;I)I

    move-result v1

    iput v1, p0, Lu/k;->l:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lu/k;->p:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v1

    iput v1, p0, Lu/k;->n:I

    iget v1, p0, Lu/k;->n:I

    iget v2, p0, Lu/k;->j:I

    invoke-static {v1, v2}, Lu/x;->a(II)Lu/x;

    move-result-object v1

    iput-object v1, p0, Lu/k;->o:Lu/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    iput-object v1, p0, Lu/k;->q:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lu/k;->r:Law/e;

    return-void
.end method

.method static synthetic c(Lu/k;)Lf/h;
    .locals 1

    iget-object v0, p0, Lu/k;->x:Lf/h;

    return-object v0
.end method

.method private c(Law/e;)Ljava/util/List;
    .locals 6

    const/16 v5, 0x1a

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lu/w;

    invoke-virtual {p1, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lu/w;-><init>(Law/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic d(Lu/k;)Lf/h;
    .locals 1

    iget-object v0, p0, Lu/k;->h:Lf/h;

    return-object v0
.end method

.method private d(Law/e;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lu/k;->d:[Lf/h;

    move-object v3, v0

    array-length v3, v3

    const/16 v4, 0xc

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lu/k;->j:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lu/k;->n:I

    move v6, v0

    add-int/2addr v5, v6

    new-array v6, v3, [I

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lu/k;->e:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lu/k;->e:[I

    move-object v6, v0

    const/4 v7, 0x0

    aput v5, v6, v7

    new-array v6, v3, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1
    if-ge v8, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lu/k;->d:[Lf/h;

    move-object v9, v0

    aget-object v9, v9, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lu/k;->d:[Lf/h;

    move-object v10, v0

    const/4 v11, 0x1

    sub-int v11, v8, v11

    aget-object v10, v10, v11

    sget-object v11, Lu/l;->a:Lf/l;

    invoke-virtual {v9, v10, v11}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    move/from16 v21, v8

    move v8, v5

    move/from16 v5, v21

    :goto_2
    if-ge v5, v4, :cond_0

    const/16 v9, 0xc

    move-object/from16 v0, p1

    move v1, v9

    move v2, v5

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Law/e;->d(I)I

    move-result v10

    const/16 v11, 0xd

    invoke-virtual {v9, v11}, Law/e;->d(I)I

    move-result v9

    if-lt v9, v3, :cond_3

    const/4 v3, 0x0

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lu/k;->e:[I

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_5

    const-wide/16 v11, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v12, v21

    move v11, v7

    :goto_3
    if-ge v11, v9, :cond_4

    add-int/lit8 v14, v11, 0x1

    aget v14, v6, v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-nez v11, :cond_7

    const-wide/16 v11, 0x1

    :goto_4
    move-wide v13, v14

    :goto_5
    if-ge v7, v9, :cond_6

    add-int/lit8 v15, v7, 0x1

    aget v15, v6, v15

    int-to-long v15, v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lu/k;->e:[I

    move-object v15, v0

    add-int/lit8 v16, v7, 0x1

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-int v19, v10, v8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v19, v19, v13

    div-long v19, v19, v11

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lu/k;->e:[I

    move-object v7, v0

    const/4 v8, 0x0

    aput v10, v7, v8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move v7, v9

    move v8, v10

    goto :goto_2

    :cond_7
    move-wide v11, v12

    goto :goto_4
.end method

.method private e(Law/e;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x7

    const/4 v5, 0x0

    iget-object v0, p0, Lu/k;->c:Lu/v;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lu/v;->a(Lu/v;I)I

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    move v1, v5

    move v2, v5

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v6, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3}, Lu/v;->f(Law/e;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v2, [Lf/h;

    iput-object v1, p0, Lu/k;->d:[Lf/h;

    move v1, v5

    move v2, v5

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lu/k;->a(Law/e;I)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v5

    :goto_2
    return v0

    :cond_1
    invoke-static {v3}, Lu/v;->f(Law/e;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lu/k;->d:[Lf/h;

    aget-object v0, v0, v5

    iput-object v0, p0, Lu/k;->h:Lf/h;

    iget-object v0, p0, Lu/k;->d:[Lf/h;

    iget-object v1, p0, Lu/k;->d:[Lf/h;

    array-length v1, v1

    sub-int/2addr v1, v7

    aget-object v0, v0, v1

    iput-object v0, p0, Lu/k;->i:Lf/h;

    move v0, v7

    goto :goto_2
.end method

.method private f(Law/e;)V
    .locals 14

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0xa

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p1, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Law/e;

    sget-object v2, Ls/v;->m:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lu/k;->c:Lu/v;

    invoke-static {v3}, Lu/v;->b(Lu/v;)Lu/h;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x5

    iget-object v3, p0, Lu/k;->d:[Lf/h;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Law/e;->a(ILaw/e;)V

    :cond_0
    new-array v1, v0, [Lu/e;

    iput-object v1, p0, Lu/k;->a:[Lu/e;

    new-array v1, v0, [Lf/h;

    iput-object v1, p0, Lu/k;->g:[Lf/h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lu/k;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v13, v2

    move v2, v1

    move v1, v13

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lu/k;->a:[Lu/e;

    new-instance v4, Lu/e;

    invoke-direct {v4}, Lu/e;-><init>()V

    aput-object v4, v3, v1

    iget-object v3, p0, Lu/k;->a:[Lu/e;

    aget-object v3, v3, v1

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lu/e;->c(Law/e;)V

    iget-object v3, p0, Lu/k;->a:[Lu/e;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lu/e;->v()I

    move-result v3

    iget-object v4, p0, Lu/k;->d:[Lf/h;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lu/k;->a:[Lu/e;

    aget-object v3, v3, v1

    iget-object v4, p0, Lu/k;->d:[Lf/h;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lu/e;->c(I)V

    :cond_1
    iget-object v3, p0, Lu/k;->a:[Lu/e;

    aget-object v3, v3, v1

    iget-object v4, p0, Lu/k;->g:[Lf/h;

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    iget-object v6, p0, Lu/k;->a:[Lu/e;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lu/e;->v()I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    invoke-virtual {v3, v5}, Lu/e;->a(Lf/h;)V

    iget-boolean v3, p0, Lu/k;->t:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lu/k;->c:Lu/v;

    invoke-virtual {v3}, Lu/v;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lu/k;->a:[Lu/e;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lu/e;->y()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lu/k;->t:Z

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v12, v1

    move-object v7, v0

    :goto_2
    iget-object v0, p0, Lu/k;->a:[Lu/e;

    array-length v0, v0

    if-ge v2, v0, :cond_b

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lu/e;->v()I

    move-result v4

    invoke-virtual {v1}, Lu/e;->w()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v12

    move-object v1, v7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v12, v0

    move-object v7, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lu/e;->y()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    new-instance v0, Lu/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lu/e;->A()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lu/f;-><init>(Lu/e;IIILf/h;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/k;->r()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v7, :cond_e

    new-instance v5, Lu/o;

    iget-object v3, p0, Lu/k;->d:[Lf/h;

    aget-object v9, v3, v4

    invoke-virtual {v1}, Lu/e;->A()Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lu/o;-><init>(Lu/e;IILf/h;Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    :goto_4
    invoke-virtual {v1, v0}, Lu/o;->a(Lu/f;)V

    move-object v0, v1

    :goto_5
    move-object v1, v0

    move v0, v12

    goto :goto_3

    :cond_7
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lu/e;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    move v3, v0

    :goto_6
    if-eqz v7, :cond_9

    const/4 v0, 0x3

    if-ne v3, v0, :cond_a

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v7}, Lu/o;->c()Lu/e;

    move-result-object v5

    invoke-virtual {v5, v0}, Lu/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v7, v0

    :cond_9
    new-instance v0, Lu/f;

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lu/e;->A()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lu/f;-><init>(Lu/e;IIILf/h;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lu/k;->c:Lu/v;

    invoke-virtual {v4}, Lu/v;->o()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    if-nez v12, :cond_c

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lu/f;->a(Z)V

    const/4 v0, 0x1

    move v8, v0

    :goto_8
    iget-object v0, p0, Lu/k;->a:[Lu/e;

    add-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lu/e;->v()I

    move-result v4

    new-instance v0, Lu/f;

    const/4 v3, 0x2

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    aget-object v5, v5, v4

    iget-object v6, p0, Lu/k;->a:[Lu/e;

    add-int/lit8 v9, v2, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lu/e;->A()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lu/f;-><init>(Lu/e;IIILf/h;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    move-object v1, v7

    goto/16 :goto_3

    :pswitch_1
    const/4 v0, 0x3

    move v3, v0

    goto :goto_6

    :pswitch_2
    const/4 v0, 0x1

    move v3, v0

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lu/f;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lu/f;

    iput-object p1, p0, Lu/k;->f:[Lu/f;

    return-void

    :cond_c
    move v8, v12

    goto :goto_8

    :cond_d
    move v0, v12

    move-object v1, v7

    goto/16 :goto_3

    :cond_e
    move-object v1, v7

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i(I)I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lu/k;->d:[Lf/h;

    sub-int v1, p1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lu/k;->c:Lu/v;

    invoke-static {v1}, Lu/v;->a(Lu/v;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lu/k;->d:[Lf/h;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lf/h;->b()I

    move-result v1

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v0

    sub-int v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x16

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    iget-object v2, p0, Lu/k;->d:[Lf/h;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lf/h;->a(Lf/l;)I

    move-result v2

    invoke-virtual {v0, v1}, Lf/h;->a(Lf/l;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_0
.end method

.method private j(I)I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lu/k;->d:[Lf/h;

    sub-int v1, p1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lu/k;->c:Lu/v;

    invoke-static {v1}, Lu/v;->a(Lu/v;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lu/k;->d:[Lf/h;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lf/h;->d()I

    move-result v1

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    sub-int v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x16

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    iget-object v2, p0, Lu/k;->d:[Lf/h;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lf/h;->b(Lf/l;)I

    move-result v2

    invoke-virtual {v0, v1}, Lf/h;->b(Lf/l;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_0
.end method

.method private k(I)Z
    .locals 1

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/k;->u:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lu/f;
    .locals 1

    iget-object v0, p0, Lu/k;->f:[Lu/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/k;->f:[Lu/f;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a(Law/e;)V
    .locals 12

    const/4 v9, 0x7

    const/4 v4, 0x1

    const/4 v8, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->n:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Law/e;->a(ILaw/e;)V

    iget-object v1, p0, Lu/k;->u:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x14

    iget-object v2, p0, Lu/k;->u:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lu/k;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lu/k;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_1
    invoke-virtual {p0}, Lu/k;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lu/k;->k()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Law/e;->h(II)V

    :cond_2
    iget-object v1, p0, Lu/k;->p:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x6

    iget-object v2, p0, Lu/k;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lu/k;->c:Lu/v;

    invoke-virtual {v1}, Lu/v;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_4
    iget-object v1, p0, Lu/k;->q:Law/e;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lu/k;->q:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lu/k;->r:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_5
    iget-object v1, p0, Lu/k;->d:[Lf/h;

    aget-object v1, v1, v8

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v10, v4

    move-object v4, v1

    move v1, v10

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    :goto_0
    :try_start_0
    iget-object v5, p0, Lu/k;->d:[Lf/h;

    array-length v5, v5

    if-ge v1, v5, :cond_7

    invoke-direct {p0, v1}, Lu/k;->i(I)I

    move-result v5

    invoke-direct {p0, v1}, Lu/k;->j(I)I

    move-result v6

    invoke-direct {p0, v5}, Lu/k;->k(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v6}, Lu/k;->k(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-interface {v2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    iget-object v5, p0, Lu/k;->c:Lu/v;

    invoke-static {v5}, Lu/v;->a(Lu/v;)I

    move-result v5

    invoke-static {v4, v5}, Lu/v;->a(Lf/h;I)Law/e;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v5, v6}, Lu/v;->a(Law/e;[B)Law/e;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Law/e;->a(ILaw/e;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    aget-object v4, v5, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_1

    :cond_7
    move-object v1, v3

    :goto_2
    iget-object v2, p0, Lu/k;->c:Lu/v;

    invoke-static {v2}, Lu/v;->a(Lu/v;)I

    move-result v2

    invoke-static {v4, v2}, Lu/v;->a(Lf/h;I)Law/e;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v2, v1}, Lu/v;->a(Law/e;[B)Law/e;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Law/e;->a(ILaw/e;)V

    move v1, v8

    :goto_3
    iget-object v2, p0, Lu/k;->a:[Lu/e;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0xa

    iget-object v3, p0, Lu/k;->a:[Lu/e;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lu/e;->d()Law/e;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void

    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method a(III)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ge p3, p2, :cond_2

    if-le p1, p3, :cond_0

    if-lt p1, p2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-gt p1, p3, :cond_1

    if-lt p1, p2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public b(I)Lu/e;
    .locals 1

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lu/k;->s:Z

    return v0
.end method

.method public c(I)Lf/h;
    .locals 1

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lu/e;->e()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lu/k;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lu/k;->f:[Lu/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/k;->f:[Lu/f;

    array-length v0, v0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 1

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    array-length v0, v0

    return v0
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lu/e;->v()I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lu/k;->f:[Lu/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/k;->f:[Lu/f;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lu/k;->f:[Lu/f;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lu/f;->b()I

    move-result v0

    goto :goto_0
.end method

.method public f()[Lf/h;
    .locals 1

    iget-object v0, p0, Lu/k;->d:[Lf/h;

    return-object v0
.end method

.method public g(I)J
    .locals 2

    iget-object v0, p0, Lu/k;->f:[Lu/f;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lu/f;->c()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lf/h;
    .locals 1

    iget-object v0, p0, Lu/k;->h:Lf/h;

    return-object v0
.end method

.method public h()Lf/h;
    .locals 1

    iget-object v0, p0, Lu/k;->i:Lf/h;

    return-object v0
.end method

.method public h(I)Z
    .locals 2

    iget-object v0, p0, Lu/k;->a:[Lu/e;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lu/k;->j:I

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lu/k;->k:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lu/k;->l:I

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lu/k;->m:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lu/k;->n:I

    return v0
.end method

.method public o()Lu/x;
    .locals 1

    iget-object v0, p0, Lu/k;->o:Lu/x;

    return-object v0
.end method

.method public p()Law/e;
    .locals 1

    iget-object v0, p0, Lu/k;->q:Law/e;

    return-object v0
.end method

.method public q()Law/e;
    .locals 1

    iget-object v0, p0, Lu/k;->r:Law/e;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lu/k;->t:Z

    return v0
.end method

.method s()V
    .locals 12

    const/4 v10, 0x1

    const v9, 0x15752a00

    const/4 v5, 0x0

    iget-object v0, p0, Lu/k;->d:[Lf/h;

    array-length v0, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lu/k;->d:[Lf/h;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    iget-object v1, p0, Lu/k;->d:[Lf/h;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lf/h;->d()I

    move-result v1

    iget-object v2, p0, Lu/k;->d:[Lf/h;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v2

    iget-object v3, p0, Lu/k;->d:[Lf/h;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lf/h;->b()I

    move-result v3

    iput v5, p0, Lu/k;->w:I

    iput v5, p0, Lu/k;->v:I

    new-instance v4, Lf/h;

    invoke-direct {v4, v5, v5}, Lf/h;-><init>(II)V

    iput-object v4, p0, Lu/k;->x:Lf/h;

    move v4, v0

    move v0, v10

    move v11, v1

    move v1, v3

    move v3, v11

    :goto_1
    iget-object v5, p0, Lu/k;->d:[Lf/h;

    array-length v5, v5

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lu/k;->d:[Lf/h;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lf/h;->d()I

    move-result v5

    iget-object v6, p0, Lu/k;->d:[Lf/h;

    sub-int v7, v0, v10

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lf/h;->d()I

    move-result v6

    sub-int v7, v5, v6

    if-gez v7, :cond_1

    add-int/2addr v7, v9

    :cond_1
    sub-int v8, v6, v5

    if-gez v8, :cond_2

    add-int/2addr v8, v9

    :cond_2
    if-ge v8, v7, :cond_6

    invoke-virtual {p0, v4, v5, v6}, Lu/k;->a(III)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v5, v4, v3}, Lu/k;->a(III)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v9, p0, Lu/k;->w:I

    :cond_3
    move v4, v5

    :cond_4
    :goto_2
    iget-object v5, p0, Lu/k;->d:[Lf/h;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v5

    if-le v5, v2, :cond_8

    move v2, v5

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3, v6, v5}, Lu/k;->a(III)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eq v3, v5, :cond_4

    invoke-virtual {p0, v5, v4, v3}, Lu/k;->a(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iput v9, p0, Lu/k;->w:I

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    if-ge v5, v1, :cond_5

    move v1, v5

    goto :goto_3

    :cond_9
    if-lt v3, v4, :cond_a

    sub-int v0, v3, v4

    :goto_4
    iget v3, p0, Lu/k;->w:I

    if-le v0, v3, :cond_b

    :goto_5
    iput v0, p0, Lu/k;->w:I

    sub-int v0, v2, v1

    iput v0, p0, Lu/k;->v:I

    new-instance v0, Lf/h;

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lu/k;->w:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    iput-object v0, p0, Lu/k;->x:Lf/h;

    goto/16 :goto_0

    :cond_a
    sub-int v0, v4, v3

    sub-int v0, v9, v0

    goto :goto_4

    :cond_b
    iget v0, p0, Lu/k;->w:I

    goto :goto_5
.end method

.method public t()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lu/k;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move v0, v5

    :goto_1
    iget-object v3, p0, Lu/k;->f:[Lu/f;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lu/k;->f:[Lu/f;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lu/f;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lu/f;->q()Lu/o;

    move-result-object v4

    if-eq v2, v4, :cond_1

    invoke-virtual {v3}, Lu/f;->q()Lu/o;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lu/f;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/f;

    iput-object v0, p0, Lu/k;->f:[Lu/f;

    iget-object v0, p0, Lu/k;->c:Lu/v;

    invoke-static {v0, v5}, Lu/v;->b(Lu/v;I)I

    goto :goto_0
.end method

.method public u()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lu/k;->c:Lu/v;

    invoke-virtual {v0}, Lu/v;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v5

    :goto_1
    iget-object v0, p0, Lu/k;->f:[Lu/f;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lu/k;->f:[Lu/f;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lu/f;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lu/f;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v0, Lu/o;

    move v3, v5

    :goto_2
    invoke-virtual {v0}, Lu/o;->s()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lu/o;->b(I)Lu/f;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lu/f;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/f;

    iput-object v0, p0, Lu/k;->f:[Lu/f;

    iget-object v0, p0, Lu/k;->c:Lu/v;

    invoke-static {v0, v5}, Lu/v;->b(Lu/v;I)I

    goto :goto_0
.end method

.method public v()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lu/k;->r()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lu/k;->f:[Lu/f;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lu/k;->f:[Lu/f;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lu/f;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public w()Z
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lu/k;->a:[Lu/e;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lu/k;->a:[Lu/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lu/e;->d()Law/e;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public x()[I
    .locals 1

    iget-object v0, p0, Lu/k;->e:[I

    return-object v0
.end method
