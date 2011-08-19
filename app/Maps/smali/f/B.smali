.class Lf/B;
.super Ljava/lang/Object;

# interfaces
.implements Lf/j;


# instance fields
.field private final a:Ln/a;

.field private final b:Ljava/lang/String;

.field private final c:Lf/J;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Lf/W;

.field private final h:Ljava/util/Vector;

.field private final i:Ljava/util/Hashtable;

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:J

.field private o:J

.field private p:Z


# direct methods
.method constructor <init>(Lf/J;Ljava/lang/String;II)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iput-object v0, p0, Lf/B;->a:Ln/a;

    iput v1, p0, Lf/B;->e:I

    iput v1, p0, Lf/B;->f:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/B;->i:Ljava/util/Hashtable;

    iput v2, p0, Lf/B;->j:I

    iput v2, p0, Lf/B;->k:I

    iput-object p1, p0, Lf/B;->c:Lf/J;

    iput-object p2, p0, Lf/B;->b:Ljava/lang/String;

    const/16 v0, 0x7d0

    sub-int v0, p3, v0

    iput v0, p0, Lf/B;->m:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/B;->n:J

    const-wide/16 v2, 0x841

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/B;->o:J

    sub-int v0, p4, v4

    iput v0, p0, Lf/B;->d:I

    iput-boolean v4, p0, Lf/B;->l:Z

    invoke-direct {p0}, Lf/B;->j()V

    iput-boolean v4, p0, Lf/B;->p:Z

    new-instance v0, Lf/W;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf/W;-><init>(Lf/B;Lf/G;)V

    iput-object v0, p0, Lf/B;->g:Lf/W;

    return-void
.end method

.method static synthetic a(Lf/B;Lf/K;)Lf/L;
    .locals 1

    invoke-direct {p0, p1}, Lf/B;->b(Lf/K;)Lf/L;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lf/B;Lf/y;Lf/K;)Lf/P;
    .locals 1

    invoke-direct {p0, p1, p2}, Lf/B;->a(Lf/y;Lf/K;)Lf/P;

    move-result-object v0

    return-object v0
.end method

.method private a(Lf/y;Lf/K;)Lf/P;
    .locals 3

    invoke-virtual {p0, p1}, Lf/B;->a(Lf/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lf/y;->a(Ljava/lang/String;Lf/K;)Lf/P;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lf/y;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lf/B;->b(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lf/B;->a(Lf/y;I)V

    iget-object v2, p0, Lf/B;->a:Ln/a;

    invoke-virtual {p0, v1}, Lf/B;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ln/a;->a(Ljava/lang/String;)Z

    monitor-exit p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/Hashtable;I)Lf/y;
    .locals 7

    const/4 v3, 0x1

    new-instance v1, Lf/y;

    invoke-direct {v1}, Lf/y;-><init>()V

    iget-object v0, p0, Lf/B;->c:Lf/J;

    invoke-virtual {v0}, Lf/J;->h()[Lf/K;

    move-result-object v2

    array-length v0, v2

    sub-int/2addr v0, v3

    move v4, v3

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    aget-object v0, v2, v3

    iget-object v5, p0, Lf/B;->i:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    invoke-virtual {v0}, Lf/P;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lf/L;

    invoke-direct {v5, v0}, Lf/L;-><init>(Lf/P;)V

    invoke-virtual {v5}, Lf/L;->c()I

    move-result v0

    add-int v6, v4, v0

    if-gt v6, p2, :cond_1

    invoke-virtual {v1, v5}, Lf/y;->a(Lf/L;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/2addr v0, v4

    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method private a(Lf/y;I)V
    .locals 4

    invoke-virtual {p1}, Lf/y;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lf/y;->a()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/B;->l:Z

    invoke-virtual {p1}, Lf/y;->e()V

    iget-object v1, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lf/y;->a(I)Lf/L;

    move-result-object v2

    iget-object v3, p0, Lf/B;->i:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lf/L;->a()Lf/K;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized a(Lf/y;[BI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lf/B;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/B;->a:Ln/a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    iget-object v2, p0, Lf/B;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Lf/B;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p2}, Lf/y;->a(Ljava/lang/String;I[B)V

    invoke-direct {p0, p1}, Lf/B;->b(Lf/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ln/f; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v0, v1}, Lf/B;->a(Ln/f;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private a(Ln/f;Z)V
    .locals 4

    invoke-virtual {p0}, Lf/B;->i()I

    move-result v0

    invoke-virtual {p0}, Lf/B;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v3, " catalog"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ln/f;->a()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lf/B;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x3e8

    sub-int/2addr v0, v1

    iput v0, p0, Lf/B;->m:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v3, ""

    goto :goto_0

    :cond_2
    iput v1, p0, Lf/B;->d:I

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private b(I)I
    .locals 3

    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/y;

    invoke-virtual {v0}, Lf/y;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(Lf/K;)Lf/L;
    .locals 1

    iget-object v0, p0, Lf/B;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/y;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lf/y;->a(Lf/K;)Lf/L;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lf/y;)V
    .locals 4

    invoke-virtual {p1}, Lf/y;->a()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/B;->l:Z

    iget v1, p0, Lf/B;->j:I

    invoke-virtual {p1}, Lf/y;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lf/B;->j:I

    iget-object v1, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lf/y;->a(I)Lf/L;

    move-result-object v2

    iget-object v3, p0, Lf/B;->i:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lf/L;->a()Lf/K;

    move-result-object v2

    invoke-virtual {v3, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)Lf/y;
    .locals 1

    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/y;

    return-object p0
.end method

.method private declared-synchronized j()V
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0xa

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf/B;->l:Z

    iget-object v0, p0, Lf/B;->a:Ln/a;

    iget-object v1, p0, Lf/B;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ln/c;->a([B)Ljava/io/DataInput;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v6, :cond_2

    move v0, v2

    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lf/B;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lf/B;->f()V

    :cond_0
    if-eq v0, v6, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/B;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    invoke-interface {v1}, Ljava/io/DataInput;->readShort()S

    move-result v3

    iput v3, p0, Lf/B;->e:I

    invoke-interface {v1}, Ljava/io/DataInput;->readShort()S

    move-result v3

    iput v3, p0, Lf/B;->f:I

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-static {v1}, Lf/y;->a(Ljava/io/DataInput;)Lf/y;

    move-result-object v5

    invoke-direct {p0, v5}, Lf/B;->b(Lf/y;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    array-length v0, v0

    iput v0, p0, Lf/B;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/B;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v6

    :goto_2
    :try_start_3
    const-string v2, "FLASH"

    invoke-static {v2, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method private k()Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/B;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lf/B;->a:Ln/a;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v1, v2, v0}, Ln/a;->a([BLjava/lang/String;)I

    iget-object v1, p0, Lf/B;->a:Ln/a;

    invoke-interface {v1, v0}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ln/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/Hashtable;)I
    .locals 24

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x2

    new-array v5, v5, [Lf/y;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v6

    invoke-virtual {v6}, Lac/m;->p()Lac/p;

    move-result-object v6

    invoke-interface {v6}, Lac/p;->a()J

    move-result-wide v6

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lf/B;->p:Z

    move v8, v0

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lf/B;->g()Z

    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lf/B;->p:Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lf/B;->m:I

    move v8, v0

    invoke-virtual/range {p0 .. p0}, Lf/B;->i()I

    move-result v9

    sub-int/2addr v8, v9

    const v9, 0x11940

    if-lt v8, v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lf/B;->d()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lf/B;->d:I

    move v10, v0

    if-lt v9, v10, :cond_a

    :cond_1
    const/4 v9, -0x1

    const/4 v10, -0x1

    const-wide/high16 v11, -0x8000

    const-wide/high16 v13, -0x8000

    invoke-virtual/range {p0 .. p0}, Lf/B;->d()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v20, v16

    move/from16 v16, v9

    move/from16 v9, v20

    move-wide/from16 v21, v11

    move/from16 v23, v10

    move-wide v10, v13

    move-wide/from16 v12, v21

    move/from16 v14, v23

    :goto_0
    if-ge v9, v15, :cond_6

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lf/B;->c(I)Lf/y;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lf/y;->a(J)J

    move-result-wide v17

    const/16 v19, -0x1

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    cmp-long v19, v17, v10

    if-lez v19, :cond_4

    :cond_2
    const/4 v10, -0x1

    move/from16 v0, v16

    move v1, v10

    if-eq v0, v1, :cond_3

    cmp-long v10, v17, v12

    if-lez v10, :cond_5

    :cond_3
    move-wide v10, v12

    move/from16 v14, v16

    move-wide/from16 v12, v17

    move/from16 v16, v9

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move-wide/from16 v10, v17

    move v14, v9

    goto :goto_1

    :cond_6
    const/4 v9, -0x1

    move/from16 v0, v16

    move v1, v9

    if-eq v0, v1, :cond_7

    const/4 v9, 0x0

    aput v16, v4, v9

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lf/B;->c(I)Lf/y;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Lf/y;->b()I

    move-result v9

    add-int/2addr v8, v9

    :cond_7
    const v9, 0x11940

    if-ge v8, v9, :cond_8

    const/4 v9, -0x1

    if-eq v14, v9, :cond_8

    const/4 v9, 0x1

    aput v14, v4, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lf/B;->c(I)Lf/y;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Lf/y;->b()I

    move-result v9

    add-int/2addr v8, v9

    :cond_8
    const v9, 0x11940

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x1770

    if-ge v8, v9, :cond_b

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lf/B;->a:Ln/a;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v7, v5, v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lf/B;->a(Lf/y;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ln/a;->a(Ljava/lang/String;)Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-direct {v0, v1, v2}, Lf/B;->a(Lf/y;I)V

    :cond_9
    const/4 v4, 0x1

    :goto_3
    return v4

    :cond_a
    const v8, 0x11940

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_b
    monitor-enter p1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/B;->c:Lf/J;

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lf/J;->b(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-direct {v0, v1, v2}, Lf/B;->a(Ljava/util/Hashtable;I)Lf/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/B;->c:Lf/J;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lf/J;->b(Z)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v8}, Lf/y;->b()I

    move-result v9

    const/16 v10, 0x1770

    if-lt v9, v10, :cond_14

    const/4 v10, -0x1

    monitor-enter p0

    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lf/B;->m:I

    move v11, v0

    invoke-virtual/range {p0 .. p0}, Lf/B;->i()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    new-array v12, v12, [Z

    fill-array-data v12, :array_1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v20, v14

    move v14, v13

    move/from16 v13, v20

    :goto_4
    const/4 v15, 0x2

    if-ge v13, v15, :cond_16

    aget-object v15, v5, v13

    if-eqz v15, :cond_c

    aget-object v15, v5, v13

    invoke-virtual {v15}, Lf/y;->d()Z

    move-result v15

    if-eqz v15, :cond_c

    aget-object v15, v5, v13

    invoke-virtual {v15, v6, v7}, Lf/y;->a(J)J

    move-result-wide v15

    invoke-virtual {v8, v6, v7}, Lf/y;->a(J)J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_c

    const/4 v15, 0x1

    aput-boolean v15, v12, v13

    aget-object v15, v5, v13

    invoke-virtual {v15}, Lf/y;->b()I

    move-result v15

    add-int/2addr v14, v15

    :cond_c
    add-int v15, v11, v14

    if-gt v9, v15, :cond_e

    move v6, v14

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lf/B;->d()I

    move-result v7

    add-int/2addr v6, v11

    if-le v9, v6, :cond_f

    const/4 v4, 0x2

    move v5, v4

    move v4, v10

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ltz v4, :cond_d

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lf/y;->a(Ljava/util/Hashtable;)[B

    move-result-object v6

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v6

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lf/B;->a(Lf/y;[BI)V

    :cond_d
    move v4, v5

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lf/B;->e()Z

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/B;->c:Lf/J;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lf/J;->b(Z)V

    throw v4

    :catchall_2
    move-exception v4

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    :try_start_6
    aget-boolean v6, v12, v6

    if-eqz v6, :cond_12

    if-gt v9, v11, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lf/B;->d:I

    move v6, v0

    if-lt v7, v6, :cond_12

    :cond_10
    const/4 v6, 0x4

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7}, Lf/y;->c()I

    move-result v7

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    aget v10, v4, v10

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-direct {v0, v1, v2}, Lf/B;->a(Lf/y;I)V

    const/4 v9, 0x1

    aget-boolean v9, v12, v9

    if-eqz v9, :cond_15

    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    if-ge v9, v10, :cond_11

    const/4 v9, 0x1

    aget v10, v4, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput v10, v4, v9

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lf/B;->a:Ln/a;

    move-object v9, v0

    const/4 v10, 0x1

    aget-object v10, v5, v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lf/B;->a(Lf/y;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ln/a;->a(Ljava/lang/String;)Z

    const/4 v9, 0x1

    aget-object v5, v5, v9

    const/4 v9, 0x1

    aget v4, v4, v9

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-direct {v0, v1, v2}, Lf/B;->a(Lf/y;I)V

    move v4, v7

    move v5, v6

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lf/B;->d:I

    move v4, v0

    if-ge v7, v4, :cond_13

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lf/B;->j:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lf/B;->j:I

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto/16 :goto_6

    :cond_13
    const/4 v4, 0x5

    move v5, v4

    move v4, v10

    goto/16 :goto_6

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_15
    move v4, v7

    move v5, v6

    goto/16 :goto_6

    :cond_16
    move v6, v14

    goto/16 :goto_5

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public a(Lf/K;)Lf/P;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lf/B;->b(Lf/K;)Lf/L;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lf/B;->g:Lf/W;

    invoke-virtual {v0, v1, p1}, Lf/W;->a(Lf/L;Lf/K;)Lf/P;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lf/L;->a(J)V

    :cond_0
    return-object v0
.end method

.method a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/B;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lf/y;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/y;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lf/B;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/B;->n:J

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lf/B;->c()Z

    invoke-virtual {p0}, Lf/B;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lf/B;->e:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lf/B;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lf/B;->f:I

    if-eq p2, v0, :cond_3

    iget v0, p0, Lf/B;->f:I

    if-eq v0, v1, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    iput p1, p0, Lf/B;->e:I

    iput p2, p0, Lf/B;->f:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lf/B;->f()V

    iput-boolean v2, p0, Lf/B;->l:Z

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/B;->n:J

    return-void
.end method

.method public c()Z
    .locals 10

    const-wide/16 v8, 0x841

    const/4 v7, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-object v2, p0, Lf/B;->c:Lf/J;

    invoke-virtual {v2}, Lf/J;->a()Ljava/util/Hashtable;

    move-result-object v2

    iget-wide v3, p0, Lf/B;->o:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_2

    iget-wide v3, p0, Lf/B;->n:J

    const-wide/16 v5, 0x5dc

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_2

    :try_start_0
    invoke-virtual {p0, v2}, Lf/B;->a(Ljava/util/Hashtable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, p0, Lf/B;->o:J

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, p0, Lf/B;->o:J

    throw v0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method declared-synchronized e()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf/B;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v3, p0, Lf/B;->e:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v3, p0, Lf/B;->f:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v3, v5

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-direct {p0, v3}, Lf/B;->c(I)Lf/y;

    move-result-object v4

    invoke-virtual {v4, v2}, Lf/y;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lf/B;->a:Ln/a;

    iget-object v2, p0, Lf/B;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ln/a;->a([BLjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ln/f; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v6

    :goto_2
    :try_start_3
    array-length v0, v0

    iput v0, p0, Lf/B;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/B;->l:Z

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lf/B;->a(Ln/f;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/B;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Lf/B;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lf/B;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/B;->l:Z

    iget-object v0, p0, Lf/B;->a:Ln/a;

    iget-object v1, p0, Lf/B;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/B;->a:Ln/a;

    iget-object v1, p0, Lf/B;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lf/B;->d()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v2

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/y;

    invoke-virtual {p0, v0}, Lf/B;->a(Lf/y;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lf/B;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v0, v2}, Lf/B;->a(Lf/y;I)V

    move v0, v5

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_4

    iget-object v0, p0, Lf/B;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lf/B;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    move v2, v5

    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_2

    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    iget-object v3, p0, Lf/B;->a:Ln/a;

    invoke-interface {v3, v4}, Ln/a;->a(Ljava/lang/String;)Z

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_3
    invoke-virtual {p0}, Lf/B;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_3

    if-nez v0, :cond_3

    move v0, v5

    :goto_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v5

    move v1, v3

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method declared-synchronized h()I
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lf/B;->c(I)Lf/y;

    move-result-object v3

    invoke-virtual {v3}, Lf/y;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lf/B;->k:I

    invoke-virtual {p0}, Lf/B;->h()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
