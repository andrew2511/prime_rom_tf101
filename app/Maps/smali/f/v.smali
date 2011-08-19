.class public Lf/v;
.super Ljava/lang/Object;


# instance fields
.field private final A:Lf/s;

.field private B:Lf/q;

.field private C:I

.field private D:Z

.field private E:Lf/O;

.field private F:Ljava/lang/String;

.field protected final a:Lf/J;

.field protected b:Lf/C;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lf/K;

.field private s:Lf/K;

.field private t:[Lf/K;

.field private u:Lf/M;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(IIILf/h;Lf/l;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lf/v;->c:I

    iput v6, p0, Lf/v;->d:I

    iput v6, p0, Lf/v;->e:I

    iput v6, p0, Lf/v;->f:I

    iput v6, p0, Lf/v;->g:I

    iput v6, p0, Lf/v;->h:I

    iput v6, p0, Lf/v;->i:I

    iput v6, p0, Lf/v;->j:I

    iput v6, p0, Lf/v;->k:I

    iput v6, p0, Lf/v;->l:I

    iput v6, p0, Lf/v;->m:I

    iput v6, p0, Lf/v;->n:I

    iput v6, p0, Lf/v;->o:I

    iput v6, p0, Lf/v;->w:I

    new-instance v0, Lf/s;

    invoke-direct {v0}, Lf/s;-><init>()V

    iput-object v0, p0, Lf/v;->A:Lf/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/v;->B:Lf/q;

    iput v6, p0, Lf/v;->C:I

    iput-boolean v6, p0, Lf/v;->D:Z

    new-instance v0, Lf/J;

    const-string v5, "Tiles"

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lf/J;-><init>(IIIILjava/lang/String;)V

    iput-object v0, p0, Lf/v;->a:Lf/J;

    new-instance v0, Lf/C;

    const/4 v1, 0x3

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    invoke-direct {v0, p4, v1, v6}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    iput-object v0, p0, Lf/v;->b:Lf/C;

    invoke-direct {p0, p4, p5}, Lf/v;->a(Lf/h;Lf/l;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/v;->v:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x100

    invoke-static {p0, v0}, LA/h;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized a(IILf/C;)Lf/l;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->e(Lf/h;)I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lf/l;->d()Lf/l;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/v;->b(Lf/C;)I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {p3, v0}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/v;->e(Lf/C;)I

    move-result v1

    if-ge v1, p2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lf/l;->d()Lf/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/Hashtable;Ljava/util/Hashtable;I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v1, v2}, LR/a;->a(Ljava/util/Enumeration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v2, v3}, LR/a;->a(Ljava/util/Enumeration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v0, v3, v4

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/16 v0, 0x248

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x249

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    const/16 v0, 0x24b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    aput-object v0, v1, v4

    aput-object v2, v1, v6

    const/16 v0, 0x24a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lf/P;)V
    .locals 4

    invoke-virtual {p1}, Lf/P;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lf/P;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lf/v;->y:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lf/v;->y:J

    :cond_0
    return-void
.end method

.method private a(Lf/h;Lf/l;)V
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "Map info"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {v0}, Ln/c;->a([B)Ljava/io/DataInput;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-static {v0}, Lf/h;->a(Ljava/io/DataInput;)Lf/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :try_start_2
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move-object v3, v1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_3

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    move v1, v5

    :goto_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v5

    :goto_2
    new-instance v4, Lf/C;

    invoke-static {v3}, Lf/v;->f(Lf/h;)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lf/l;->b(I)Lf/l;

    move-result-object v2

    invoke-direct {v4, v3, v2, v1, v0}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    invoke-virtual {p0, v4}, Lf/v;->a(Lf/C;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    move v1, v4

    :goto_4
    const-string v3, "MAP"

    invoke-static {v3, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v3, "Map info"

    invoke-interface {v0, v3}, Ln/a;->a(Ljava/lang/String;)Z

    move v0, v4

    move-object v3, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    new-instance v0, Lf/C;

    invoke-direct {v0, p1, p2, v4}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    invoke-virtual {p0, v0}, Lf/v;->a(Lf/C;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move v1, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_4

    :cond_4
    move v0, v4

    move v2, v4

    move-object v3, v1

    move v1, v4

    goto :goto_0
.end method

.method private a(Lf/h;Lf/l;IILaF/a;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lf/h;->a(Lf/l;)I

    move-result v0

    sub-int/2addr v0, p3

    iput v0, p5, LaF/a;->a:I

    invoke-virtual {p2}, Lf/l;->b()I

    move-result v0

    iget v1, p5, LaF/a;->a:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    iget v1, p5, LaF/a;->a:I

    add-int/2addr v0, v1

    iput v0, p5, LaF/a;->a:I

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Lf/h;->b(Lf/l;)I

    move-result v0

    sub-int/2addr v0, p4

    iput v0, p5, LaF/a;->b:I

    iget-object v0, p0, Lf/v;->B:Lf/q;

    if-eqz v0, :cond_0

    iget v0, p5, LaF/a;->a:I

    iget v1, p0, Lf/v;->j:I

    add-int/2addr v0, v1

    iput v0, p5, LaF/a;->a:I

    iget v0, p5, LaF/a;->b:I

    iget v1, p0, Lf/v;->k:I

    add-int/2addr v0, v1

    iput v0, p5, LaF/a;->b:I

    iget-object v0, p0, Lf/v;->B:Lf/q;

    invoke-interface {v0, p5}, Lf/q;->a(LaF/a;)V

    iget v0, p5, LaF/a;->a:I

    iget v1, p0, Lf/v;->j:I

    sub-int/2addr v0, v1

    iput v0, p5, LaF/a;->a:I

    iget v0, p5, LaF/a;->b:I

    iget v1, p0, Lf/v;->k:I

    sub-int/2addr v0, v1

    iput v0, p5, LaF/a;->b:I

    goto :goto_0

    :cond_3
    iget v1, p5, LaF/a;->a:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_2

    iget v1, p5, LaF/a;->a:I

    sub-int v0, v1, v0

    iput v0, p5, LaF/a;->a:I

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 4

    iget-object v0, p0, Lf/v;->r:Lf/K;

    iget-object v1, p0, Lf/v;->s:Lf/K;

    iget v2, p0, Lf/v;->l:I

    iget v3, p0, Lf/v;->m:I

    invoke-virtual {p0, v2, v3}, Lf/v;->a(II)Lf/K;

    move-result-object v2

    iput-object v2, p0, Lf/v;->r:Lf/K;

    iget v2, p0, Lf/v;->n:I

    iget v3, p0, Lf/v;->o:I

    invoke-virtual {p0, v2, v3}, Lf/v;->a(II)Lf/K;

    move-result-object v2

    iput-object v2, p0, Lf/v;->s:Lf/K;

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lf/v;->r:Lf/K;

    invoke-virtual {v0, v2}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lf/v;->w()V

    :cond_1
    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v1, v0}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/v;->D:Z

    :cond_3
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(J)Z
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lf/K;IILk/m;IIZZZJJ)Z
    .locals 16

    move/from16 v0, p2

    mul-int/lit16 v0, v0, 0x100

    move v5, v0

    add-int v13, p5, v5

    move/from16 v0, p3

    mul-int/lit16 v0, v0, 0x100

    move v5, v0

    add-int v14, p6, v5

    invoke-virtual/range {p1 .. p1}, Lf/K;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p4, :cond_1

    const v5, 0xffffff

    move-object/from16 v0, p4

    move v1, v5

    invoke-interface {v0, v1}, Lk/m;->a(I)V

    const/16 v5, 0x100

    const/16 v6, 0x100

    move-object/from16 v0, p4

    move v1, v13

    move v2, v14

    move v3, v5

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lk/m;->b(IIII)V

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->f:I

    move v5, v0

    add-int/lit16 v6, v13, 0x80

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->g:I

    move v6, v0

    add-int/lit16 v7, v14, 0x80

    sub-int/2addr v6, v7

    mul-int/2addr v5, v5

    mul-int/2addr v6, v6

    add-int v7, v5, v6

    invoke-virtual/range {p0 .. p1}, Lf/v;->a(Lf/K;)Z

    move-result v12

    if-eqz p7, :cond_6

    if-nez v12, :cond_6

    const/4 v5, 0x0

    move v8, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->a:Lf/J;

    move-object v5, v0

    if-eqz p9, :cond_5

    const/4 v6, 0x2

    move v9, v6

    :goto_2
    move-object/from16 v6, p1

    move-wide/from16 v10, p12

    invoke-virtual/range {v5 .. v11}, Lf/J;->a(Lf/K;IZIJ)Lf/P;

    move-result-object v9

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->u:Lf/M;

    move-object v5, v0

    if-eqz v5, :cond_3

    if-eqz p9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->u:Lf/M;

    move-object v5, v0

    invoke-interface {v5, v9, v8}, Lf/M;->a(Lf/P;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9}, Lf/P;->t()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->C:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lf/v;->C:I

    :cond_3
    const/4 v5, 0x0

    if-eqz p4, :cond_4

    move-object/from16 v10, p4

    move-wide/from16 v11, p12

    move/from16 v15, p8

    invoke-virtual/range {v9 .. v15}, Lf/P;->a(Lk/m;JIIZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lf/v;->z:J

    move-wide v6, v0

    move-object v0, v9

    move-wide/from16 v1, p10

    move-wide v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/P;->a(JJ)V

    invoke-virtual {v9}, Lf/P;->i()I

    move-result v6

    if-lez v6, :cond_4

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lf/v;->a(Lf/P;)V

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lf/v;->b(Lf/P;)V

    const/4 v5, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->a:Lf/J;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v8

    move-wide/from16 v3, p12

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/J;->a(Lf/K;ZJ)Ljava/util/Vector;

    move-result-object v6

    if-eqz p4, :cond_0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_3
    if-ltz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/l;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move v2, v13

    move v3, v14

    invoke-interface {v0, v1, v2, v3}, Lk/m;->a(Lk/l;II)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    move v9, v6

    goto/16 :goto_2

    :cond_6
    move/from16 v8, p7

    goto/16 :goto_1
.end method

.method private a(Lk/m;ZZ)Z
    .locals 25

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->f:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->r:Lf/K;

    move-object v4, v0

    invoke-virtual {v4}, Lf/K;->f()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->b:Lf/C;

    move-object v4, v0

    invoke-virtual {v4}, Lf/C;->a()Lf/h;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->b:Lf/C;

    move-object v5, v0

    invoke-virtual {v5}, Lf/C;->b()Lf/l;

    move-result-object v5

    invoke-virtual {v4, v5}, Lf/h;->a(Lf/l;)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->g:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->r:Lf/K;

    move-object v5, v0

    invoke-virtual {v5}, Lf/K;->g()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->b:Lf/C;

    move-object v5, v0

    invoke-virtual {v5}, Lf/C;->a()Lf/h;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->b:Lf/C;

    move-object v6, v0

    invoke-virtual {v6}, Lf/C;->b()Lf/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Lf/h;->b(Lf/l;)I

    move-result v5

    sub-int v9, v4, v5

    move v8, v3

    :goto_0
    if-lez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->b:Lf/C;

    move-object v3, v0

    invoke-virtual {v3}, Lf/C;->b()Lf/l;

    move-result-object v3

    invoke-virtual {v3}, Lf/l;->b()I

    move-result v3

    sub-int v3, v8, v3

    move v8, v3

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->u:Lf/M;

    move-object v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->u:Lf/M;

    move-object v3, v0

    invoke-interface {v3}, Lf/M;->f()V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->p()Lac/p;

    move-result-object v5

    invoke-interface {v5}, Lac/p;->b()J

    move-result-wide v13

    invoke-interface {v5}, Lac/p;->a()J

    move-result-wide v17

    const/4 v5, 0x1

    if-nez p1, :cond_2

    const/4 v5, 0x0

    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lf/v;->y:J

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->l:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->m:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->t:[Lf/K;

    move-object/from16 v21, v0

    mul-int v6, v19, v20

    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    if-eq v6, v7, :cond_3

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_3
    const/4 v6, 0x0

    move/from16 v24, v6

    move v6, v3

    move v3, v5

    move/from16 v5, v24

    :goto_2
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const/4 v7, 0x0

    move v12, v3

    move/from16 v22, v4

    move v3, v6

    move v6, v7

    :goto_3
    move v0, v6

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    int-to-long v10, v3

    add-long v15, v17, v10

    add-int/lit8 v23, v3, 0x1

    aget-object v4, v21, v3

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v3 .. v16}, Lf/v;->a(Lf/K;IILk/m;IIZZZJJ)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    add-int v3, v3, v22

    if-eqz v12, :cond_c

    invoke-static {v13, v14}, Lf/v;->a(J)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v12, v4

    move/from16 v22, v3

    move/from16 v3, v23

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v6, v3

    move/from16 v4, v22

    move v3, v12

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lf/v;->d(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lf/v;->C:I

    move v3, v0

    const/16 v5, 0x30

    if-le v3, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->a:Lf/J;

    move-object v3, v0

    invoke-virtual {v3}, Lf/J;->f()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lf/v;->C:I

    :cond_7
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lf/v;->e(I)V

    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->a:Lf/J;

    move-object v3, v0

    invoke-virtual {v3}, Lf/J;->i()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->a:Lf/J;

    move-object v3, v0

    invoke-virtual {v3}, Lf/J;->j()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->u:Lf/M;

    move-object v3, v0

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/v;->u:Lf/M;

    move-object v3, v0

    invoke-interface {v3}, Lf/M;->g()V

    :cond_a
    invoke-static {}, Lf/y;->f()V

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lf/v;->z:J

    invoke-static {v13, v14}, Lf/v;->a(J)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move v4, v12

    goto :goto_5
.end method

.method private b(Lf/P;)V
    .locals 7

    invoke-virtual {p1}, Lf/P;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lf/P;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    const/16 v2, 0x16

    const-string v3, "pc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lf/P;->h()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private b(Lf/K;)Z
    .locals 3

    invoke-virtual {p1}, Lf/K;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lf/K;->d()I

    move-result v0

    iget-object v1, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v1}, Lf/K;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lf/K;->d()I

    move-result v0

    iget-object v1, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v1}, Lf/K;->d()I

    move-result v1

    iget v2, p0, Lf/v;->o:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lf/K;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lf/K;->e()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    iget v1, p0, Lf/v;->n:I

    if-lt v1, v0, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v1}, Lf/K;->c()I

    move-result v1

    iget v2, p0, Lf/v;->n:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    rem-int v0, v1, v0

    iget-object v1, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v1}, Lf/K;->c()I

    move-result v1

    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Lf/K;->c()I

    move-result v1

    iget-object v2, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v2}, Lf/K;->c()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lf/K;->c()I

    move-result v1

    if-gt v1, v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lf/K;->c()I

    move-result v1

    iget-object v2, p0, Lf/v;->s:Lf/K;

    invoke-virtual {v2}, Lf/K;->c()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lf/K;->c()I

    move-result v1

    if-gt v1, v0, :cond_5

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1
.end method

.method private d(I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lf/v;->t:[Lf/K;

    iget v1, p0, Lf/v;->l:I

    iget v2, p0, Lf/v;->m:I

    mul-int/2addr v1, v2

    array-length v2, v0

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lf/v;->E:Lf/O;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lf/v;->D:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lf/v;->n:I

    iget v2, p0, Lf/v;->o:I

    mul-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iput-boolean v8, p0, Lf/v;->D:Z

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v3, -0x1

    move v4, v3

    move v3, v8

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lf/v;->a(Lf/K;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lf/v;->a:Lf/J;

    aget-object v6, v0, v3

    const v7, 0x7a1200

    invoke-virtual {v5, v6, v7, v8, v8}, Lf/J;->a(Lf/K;IZZ)Lf/P;

    move-result-object v5

    invoke-virtual {v5}, Lf/P;->q()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lf/v;->a([Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v5}, Lf/P;->r()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lf/v;->a([Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v5}, Lf/P;->s()I

    move-result v6

    if-le v6, v4, :cond_2

    invoke-virtual {v5}, Lf/P;->s()I

    move-result v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v2, v4}, Lf/v;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/v;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lf/v;->F:Ljava/lang/String;

    iget-object v1, p0, Lf/v;->E:Lf/O;

    invoke-interface {v1, v0}, Lf/O;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 7

    const/16 v6, 0x16

    iget-wide v0, p0, Lf/v;->y:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput p1, p0, Lf/v;->w:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lf/v;->k()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    const-string v0, "s"

    :goto_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lf/v;->y:J

    sub-long/2addr v1, v3

    iget v3, p0, Lf/v;->w:I

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lf/v;->x:Z

    :cond_2
    iget v3, p0, Lf/v;->w:I

    if-ge v3, p1, :cond_3

    iget v3, p0, Lf/v;->l:I

    iget v4, p0, Lf/v;->m:I

    mul-int/2addr v3, v4

    if-ne p1, v3, :cond_3

    iget-boolean v3, p0, Lf/v;->x:Z

    if-eqz v3, :cond_4

    const-string v3, "tc"

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_3
    iput p1, p0, Lf/v;->w:I

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "h"

    goto :goto_1

    :pswitch_3
    const-string v0, "n"

    goto :goto_1

    :pswitch_4
    const-string v0, "m"

    goto/16 :goto_1

    :cond_4
    const-string v3, "tp"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static f(Lf/h;)I
    .locals 2

    const/16 v1, 0xf

    invoke-static {p0}, Lf/v;->h(Lf/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lf/v;->g(Lf/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static g(Lf/h;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    const v2, 0x16c6e44

    if-le v0, v2, :cond_0

    const v2, 0x2bf01d6

    if-ge v0, v2, :cond_0

    const v0, 0x7604113

    if-le v1, v0, :cond_0

    const v0, 0x8920c07

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lf/h;)Z
    .locals 7

    const v6, 0x7cfb66a

    const v5, 0x7ae0f28

    const v4, 0x7a8b1de

    const v3, 0x24e6895

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    const v2, 0x1f75f9c

    if-le v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    const v2, 0x76d5478

    if-le v1, v2, :cond_0

    if-lt v1, v4, :cond_3

    :cond_0
    const v2, 0x20de3a2

    if-le v0, v2, :cond_1

    if-ge v0, v3, :cond_1

    if-le v1, v4, :cond_1

    if-lt v1, v5, :cond_3

    :cond_1
    const v2, 0x2167b23

    if-le v0, v2, :cond_2

    if-ge v0, v3, :cond_2

    if-le v1, v5, :cond_2

    if-lt v1, v6, :cond_3

    :cond_2
    const v2, 0x234ffbd

    if-le v0, v2, :cond_4

    if-ge v0, v3, :cond_4

    if-le v1, v6, :cond_4

    const v0, 0x7de3697

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lf/v;->t:[Lf/K;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf/v;->k()B

    move-result v0

    move v1, v9

    move v2, v9

    :goto_0
    iget v3, p0, Lf/v;->l:I

    if-ge v1, v3, :cond_1

    move v3, v2

    move v2, v9

    :goto_1
    iget v4, p0, Lf/v;->m:I

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lf/v;->t:[Lf/K;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lf/v;->r:Lf/K;

    invoke-virtual {v6}, Lf/K;->c()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lf/v;->r:Lf/K;

    invoke-virtual {v7}, Lf/K;->d()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v8}, Lf/C;->b()Lf/l;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v1}, Lf/C;->b()Lf/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->a(Lf/l;)I

    move-result v0

    iput v0, p0, Lf/v;->p:I

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v1}, Lf/C;->b()Lf/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->b(Lf/l;)I

    move-result v0

    iput v0, p0, Lf/v;->q:I

    return-void
.end method

.method private y()B
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lf/K;->a()B

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Lf/J;
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    return-object v0
.end method

.method a(II)Lf/K;
    .locals 10

    const/16 v9, 0x80

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v1}, Lf/C;->b()Lf/l;

    move-result-object v1

    invoke-static {v0, v1}, Lf/K;->a(Lf/h;Lf/l;)I

    move-result v2

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1}, Lf/K;->b(Lf/h;Lf/l;)I

    move-result v3

    div-int/lit8 v4, p2, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lf/v;->k()B

    move-result v4

    invoke-static {v4, v0, v1}, Lf/K;->a(BLf/h;Lf/l;)Lf/K;

    move-result-object v0

    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    move v4, v8

    :goto_0
    iget v5, p0, Lf/v;->p:I

    invoke-virtual {v0}, Lf/K;->f()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v4, :cond_0

    if-le v5, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    rem-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    move v4, v8

    :goto_1
    iget v5, p0, Lf/v;->q:I

    invoke-virtual {v0}, Lf/K;->g()I

    move-result v0

    sub-int v0, v5, v0

    if-eqz v4, :cond_3

    if-le v0, v9, :cond_3

    add-int/lit8 v0, v3, 0x1

    :goto_2
    invoke-virtual {p0}, Lf/v;->k()B

    move-result v3

    invoke-static {v3, v2, v0, v1}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v0

    return-object v0

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public a(Lf/h;II)Lf/h;
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lf/v;->a(Lf/h;Lf/l;II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lf/h;Lf/l;II)Lf/h;
    .locals 2

    iget v0, p0, Lf/v;->j:I

    sub-int v0, p3, v0

    iget v1, p0, Lf/v;->k:I

    sub-int v1, p4, v1

    invoke-virtual {p1, v0, v1, p2}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a([Lf/h;Lf/h;)Lf/l;
    .locals 8

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lf/h;->d()I

    move-result v1

    move v3, v0

    move v4, v0

    move v0, v2

    move v2, v1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_6

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v5

    aget-object v6, p1, v0

    invoke-virtual {v6}, Lf/h;->d()I

    move-result v6

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    if-le v5, v3, :cond_3

    move v3, v5

    :cond_3
    if-ge v6, v2, :cond_4

    move v2, v6

    :cond_4
    if-le v6, v1, :cond_5

    move v1, v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    sub-int v0, v3, v4

    sub-int v5, v1, v2

    iget-object v6, p0, Lf/v;->b:Lf/C;

    if-eqz p2, :cond_7

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Lf/h;->b()I

    move-result v4

    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Lf/h;->d()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget-object v2, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v2, p2}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lf/v;->a(IILf/C;)Lf/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_7
    move v1, v5

    move v2, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a(IIII)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lf/v;->d:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lf/v;->c:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lf/v;->i:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lf/v;->h:I

    if-ne p4, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lf/v;->c:I

    iput p1, p0, Lf/v;->d:I

    iget v0, p0, Lf/v;->d:I

    iget v1, p0, Lf/v;->d:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lf/v;->c:I

    iget v2, p0, Lf/v;->c:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lf/v;->e:I

    iget v0, p0, Lf/v;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf/v;->f:I

    iget v0, p0, Lf/v;->c:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf/v;->g:I

    iput p4, p0, Lf/v;->h:I

    iput p3, p0, Lf/v;->i:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lf/v;->j:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p0, Lf/v;->k:I

    iget v0, p0, Lf/v;->l:I

    iget v1, p0, Lf/v;->m:I

    iget v2, p0, Lf/v;->n:I

    iget v3, p0, Lf/v;->o:I

    iget v4, p0, Lf/v;->d:I

    invoke-static {v4}, Lf/v;->a(I)I

    move-result v4

    iput v4, p0, Lf/v;->l:I

    iget v4, p0, Lf/v;->c:I

    invoke-static {v4}, Lf/v;->a(I)I

    move-result v4

    iput v4, p0, Lf/v;->m:I

    invoke-static {p3}, Lf/v;->a(I)I

    move-result v4

    iput v4, p0, Lf/v;->n:I

    invoke-static {p4}, Lf/v;->a(I)I

    move-result v4

    iput v4, p0, Lf/v;->o:I

    iget-object v4, p0, Lf/v;->t:[Lf/K;

    if-eqz v4, :cond_1

    mul-int v4, v0, v1

    iget v5, p0, Lf/v;->l:I

    iget v6, p0, Lf/v;->m:I

    mul-int/2addr v5, v6

    if-eq v4, v5, :cond_2

    :cond_1
    iget v4, p0, Lf/v;->l:I

    iget v5, p0, Lf/v;->m:I

    mul-int/2addr v4, v5

    new-array v4, v4, [Lf/K;

    iput-object v4, p0, Lf/v;->t:[Lf/K;

    :cond_2
    iget v4, p0, Lf/v;->l:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lf/v;->m:I

    if-eq v1, v0, :cond_5

    :cond_3
    move v0, v8

    :goto_1
    iget v1, p0, Lf/v;->n:I

    if-ne v2, v1, :cond_4

    iget v1, p0, Lf/v;->o:I

    if-eq v3, v1, :cond_6

    :cond_4
    move v1, v8

    :goto_2
    invoke-direct {p0, v0, v1}, Lf/v;->a(ZZ)V

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->n()V

    iput v7, p0, Lf/v;->w:I

    iput-boolean v7, p0, Lf/v;->x:Z

    goto/16 :goto_0

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    move v1, v7

    goto :goto_2
.end method

.method public a(Lax/g;)V
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0, p1}, Lf/J;->a(Lax/g;)V

    return-void
.end method

.method public declared-synchronized a(Lf/C;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lf/v;->b:Lf/C;

    invoke-virtual {p0}, Lf/v;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->e(Lf/h;)I

    move-result v0

    invoke-virtual {p1}, Lf/C;->b()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v0

    iput-object v0, p0, Lf/v;->b:Lf/C;

    :cond_1
    invoke-direct {p0}, Lf/v;->x()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/v;->a(ZZ)V

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->n()V

    const/4 v0, 0x0

    iput v0, p0, Lf/v;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/v;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lf/M;)V
    .locals 0

    iput-object p1, p0, Lf/v;->u:Lf/M;

    return-void
.end method

.method public a(Lf/O;)V
    .locals 0

    iput-object p1, p0, Lf/v;->E:Lf/O;

    return-void
.end method

.method public a(Lf/T;)V
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0, p1}, Lf/J;->a(Lf/T;)V

    return-void
.end method

.method public a(Lf/V;)V
    .locals 1

    iget-object v0, p0, Lf/v;->A:Lf/s;

    invoke-virtual {v0, p1}, Lf/s;->a(Lf/V;)V

    return-void
.end method

.method public declared-synchronized a(Lf/h;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0, p1}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->a(Lf/C;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lf/h;LaF/a;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lf/v;->c(Lf/h;LaF/a;)V

    iget v0, p2, LaF/a;->a:I

    iget v1, p0, Lf/v;->f:I

    add-int/2addr v0, v1

    iput v0, p2, LaF/a;->a:I

    iget v0, p2, LaF/a;->b:I

    iget v1, p0, Lf/v;->g:I

    add-int/2addr v0, v1

    iput v0, p2, LaF/a;->b:I

    return-void
.end method

.method public a(Lf/h;Lf/l;Lf/h;LaF/a;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lf/v;->b(Lf/h;Lf/l;Lf/h;LaF/a;)V

    iget v0, p4, LaF/a;->a:I

    iget v1, p0, Lf/v;->j:I

    add-int/2addr v0, v1

    iput v0, p4, LaF/a;->a:I

    iget v0, p4, LaF/a;->b:I

    iget v1, p0, Lf/v;->k:I

    add-int/2addr v0, v1

    iput v0, p4, LaF/a;->b:I

    return-void
.end method

.method public declared-synchronized a(Lf/l;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0, p1}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->a(Lf/C;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lf/q;)V
    .locals 0

    iput-object p1, p0, Lf/v;->B:Lf/q;

    return-void
.end method

.method public a(Lf/x;)V
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0, p1}, Lf/J;->a(Lf/x;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/v;->f()V

    :cond_0
    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0, p1}, Lf/J;->c(Z)V

    return-void
.end method

.method public a(Lf/K;)Z
    .locals 1

    invoke-direct {p0, p1}, Lf/v;->b(Lf/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lf/v;->c(Lf/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lf/h;Z)Z
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lf/v;->a(Lf/h;ZLf/l;)Z

    move-result v0

    return v0
.end method

.method public a(Lf/h;ZLf/l;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {p0}, Lf/v;->k()B

    move-result v1

    invoke-static {v1, p1, p3}, Lf/K;->a(BLf/h;Lf/l;)Lf/K;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, p2}, Lf/J;->a(Lf/K;IZZ)Lf/P;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lf/P;->m()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lf/P;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public a(Lk/m;ZZZZ)Z
    .locals 2

    iget v0, p0, Lf/v;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lf/v;->d:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map has zero size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lf/v;->A:Lf/s;

    invoke-virtual {v0, p3, p4, p0}, Lf/s;->a(ZZLf/v;)V

    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lf/v;->a(Lk/m;ZZ)Z

    move-result v0

    return v0
.end method

.method public b(Lf/C;)I
    .locals 5

    invoke-virtual {p1}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lf/C;->b()Lf/l;

    move-result-object v1

    iget v2, p0, Lf/v;->j:I

    iget v3, p0, Lf/v;->k:I

    invoke-virtual {v0, v2, v3, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v2

    iget v3, p0, Lf/v;->j:I

    neg-int v3, v3

    iget v4, p0, Lf/v;->k:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public b(Lf/h;)LaF/a;
    .locals 1

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lf/v;->b(Lf/h;LaF/a;)V

    return-object v0
.end method

.method public b()Lf/C;
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    return-object v0
.end method

.method public b(II)Lf/h;
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lf/v;->a(Lf/h;II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Lf/v;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lf/l;->c(I)V

    :cond_1
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0, p1}, Lf/C;->a(I)Lf/C;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->a(Lf/C;)V

    return-void
.end method

.method public b(Lax/g;)V
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0, p1}, Lf/J;->b(Lax/g;)V

    return-void
.end method

.method public b(Lf/h;LaF/a;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lf/v;->c(Lf/h;LaF/a;)V

    iget v0, p2, LaF/a;->a:I

    iget v1, p0, Lf/v;->j:I

    add-int/2addr v0, v1

    iput v0, p2, LaF/a;->a:I

    iget v0, p2, LaF/a;->b:I

    iget v1, p0, Lf/v;->k:I

    add-int/2addr v0, v1

    iput v0, p2, LaF/a;->b:I

    return-void
.end method

.method public b(Lf/h;Lf/l;Lf/h;LaF/a;)V
    .locals 6

    invoke-virtual {p1, p2}, Lf/h;->a(Lf/l;)I

    move-result v3

    invoke-virtual {p1, p2}, Lf/h;->b(Lf/l;)I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lf/v;->a(Lf/h;Lf/l;IILaF/a;)V

    return-void
.end method

.method public b(Lf/x;)V
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0, p1}, Lf/J;->b(Lf/x;)V

    return-void
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lf/v;->B:Lf/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/v;->B:Lf/q;

    invoke-interface {v0, p1}, Lf/q;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/l;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lf/h;)LaF/a;
    .locals 1

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lf/v;->c(Lf/h;LaF/a;)V

    return-object v0
.end method

.method public c(Lf/C;)Lf/h;
    .locals 4

    invoke-virtual {p1}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lf/C;->b()Lf/l;

    move-result-object v1

    iget v2, p0, Lf/v;->j:I

    iget v3, p0, Lf/v;->k:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Lf/l;
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v1}, Lf/C;->b()Lf/l;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->a(Lf/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lf/h;LaF/a;)V
    .locals 6

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v2

    iget v3, p0, Lf/v;->p:I

    iget v4, p0, Lf/v;->q:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lf/v;->a(Lf/h;Lf/l;IILaF/a;)V

    return-void
.end method

.method public d()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public d(Lf/C;)Lf/h;
    .locals 4

    invoke-virtual {p1}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lf/C;->b()Lf/l;

    move-result-object v1

    iget v2, p0, Lf/v;->j:I

    neg-int v2, v2

    iget v3, p0, Lf/v;->k:I

    invoke-virtual {v0, v2, v3, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public d(II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p1, p2}, Lf/v;->a(IIII)V

    return-void
.end method

.method public declared-synchronized d(Lf/h;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0, p1}, Lf/v;->a(Lf/h;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lf/v;->a(Lk/m;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v0}, Lf/v;->a(Lf/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0}, Lf/v;->a(Lf/h;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()I
    .locals 3

    invoke-virtual {p0}, Lf/v;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/v;->e(Lf/h;)I

    move-result v0

    invoke-virtual {p0}, Lf/v;->c()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    const/16 v2, 0x1388

    div-int/2addr v2, v0

    sub-int/2addr v0, v1

    mul-int/2addr v0, v2

    return v0
.end method

.method public e(Lf/C;)I
    .locals 5

    invoke-virtual {p1}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lf/C;->b()Lf/l;

    move-result-object v1

    iget v2, p0, Lf/v;->j:I

    iget v3, p0, Lf/v;->k:I

    invoke-virtual {v0, v2, v3, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v2

    iget v3, p0, Lf/v;->j:I

    neg-int v3, v3

    iget v4, p0, Lf/v;->k:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v1

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    sub-int v0, v1, v0

    if-gez v0, :cond_0

    const v1, 0x15752a00

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public e(Lf/h;)I
    .locals 2

    invoke-virtual {p0}, Lf/v;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/P;->w()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lac/m;->H()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x12

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x14

    goto :goto_0
.end method

.method public declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v2}, Lf/C;->a()Lf/h;

    move-result-object v2

    invoke-static {v2, v1}, Lf/h;->a(Lf/h;Ljava/io/DataOutput;)V

    iget-object v2, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v2}, Lf/C;->b()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v3}, Lf/C;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v3}, Lf/C;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x4

    :cond_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "Map info"

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v3}, Lf/C;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MAP"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()[Lf/K;
    .locals 1

    iget-object v0, p0, Lf/v;->t:[Lf/K;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lf/v;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/v;->v:Z

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->o()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lf/v;->v:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lf/v;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lf/v;->F:Ljava/lang/String;

    iput-boolean v1, p0, Lf/v;->D:Z

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->p()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lf/v;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->q()V

    return-void
.end method

.method public k()B
    .locals 2

    invoke-direct {p0}, Lf/v;->y()B

    move-result v0

    iget-object v1, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v1}, Lf/C;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    :cond_0
    return v0
.end method

.method public declared-synchronized l()Lf/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {p0, v0}, Lf/v;->c(Lf/C;)Lf/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Lf/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {p0, v0}, Lf/v;->d(Lf/C;)Lf/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {p0, v0}, Lf/v;->b(Lf/C;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {p0, v0}, Lf/v;->e(Lf/C;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lf/v;->b:Lf/C;

    invoke-virtual {v0}, Lf/C;->d()Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lf/v;->c:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lf/v;->d:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lf/v;->h:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lf/v;->i:I

    return v0
.end method

.method public u()Law/e;
    .locals 4

    invoke-virtual {p0}, Lf/v;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Lf/v;->n()I

    move-result v1

    invoke-virtual {p0}, Lf/v;->o()I

    move-result v2

    invoke-virtual {p0}, Lf/v;->c()Lf/l;

    move-result-object v3

    invoke-virtual {v3}, Lf/l;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
