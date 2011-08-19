.class public Lcom/google/android/maps/driveabout/app/W;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lak/h;

.field private final b:Ljava/io/File;

.field private c:Lf/h;

.field private d:Lf/C;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:[B

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->a:Lak/h;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/W;->b:Ljava/io/File;

    return-void
.end method

.method private a(LF/M;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, LF/M;->l()LF/u;

    move-result-object v0

    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v0

    invoke-virtual {v0}, LF/s;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x19000

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_1
    :try_start_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a(LF/M;LF/M;Laa/E;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, LF/M;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, LF/M;->m()LG/m;

    move-result-object v0

    invoke-virtual {p1}, LF/M;->b()I

    move-result v1

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [LG/y;

    invoke-virtual {p1}, LF/M;->k()LF/u;

    move-result-object v2

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p3}, Laa/E;->l()LG/y;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, LG/y;

    invoke-virtual {v0}, LG/Q;->a()I

    move-result v4

    invoke-virtual {v0}, LG/Q;->c()I

    move-result v0

    invoke-direct {v3, v4, v0}, LG/y;-><init>(II)V

    aput-object v3, v1, v2

    invoke-virtual {p2}, LF/M;->k()LF/u;

    move-result-object v0

    invoke-virtual {v0}, LF/u;->e()LG/y;

    move-result-object v0

    invoke-virtual {p2}, LF/M;->l()LF/u;

    move-result-object v2

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/W;->a(LF/M;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LF/M;->c()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LaT/c;->a(LG/y;[LG/y;LG/y;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [LG/y;

    invoke-virtual {p3}, Laa/E;->l()LG/y;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, LF/M;->k()LF/u;

    move-result-object v1

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v1

    invoke-virtual {p1}, LF/M;->l()LF/u;

    move-result-object v2

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/W;->a(LF/M;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LF/M;->c()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, LaT/c;->a(LG/y;[LG/y;LG/y;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(LaT/d;Lcom/google/android/maps/driveabout/app/Q;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->i:[B

    invoke-virtual {p1}, LaT/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;Lcom/google/android/maps/driveabout/app/e;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    invoke-virtual {v0}, Laa/E;->m()Lf/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->c:Lf/h;

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aH;->b()LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v0

    invoke-virtual {v0}, LG/R;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->a()I

    move-result v1

    invoke-virtual {v0}, LG/R;->f()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/W;->g:I

    invoke-virtual {v0}, LG/R;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->c()I

    move-result v1

    invoke-virtual {v0}, LG/R;->f()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->c()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/W;->h:I

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aH;->c()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/e;->h()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    new-instance v3, Lf/C;

    new-instance v4, Lf/h;

    invoke-virtual {v0}, LG/Q;->a()I

    move-result v5

    invoke-virtual {v0}, LG/Q;->c()I

    move-result v0

    invoke-direct {v4, v5, v0}, Lf/h;-><init>(II)V

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-direct {v3, v4, v0, v2, v6}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/W;->d:Lf/C;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->e:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->k()LF/M;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/W;->a(LF/M;LF/M;Laa/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->f:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method public a(ZLaH/b;)V
    .locals 15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/W;->a(Ljava/io/File;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->c:Lf/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, LaH/a;

    const/16 v1, 0x9

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/W;->c:Lf/h;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/W;->d:Lf/C;

    iget v8, p0, Lcom/google/android/maps/driveabout/app/W;->g:I

    iget v9, p0, Lcom/google/android/maps/driveabout/app/W;->h:I

    iget-object v10, p0, Lcom/google/android/maps/driveabout/app/W;->f:Ljava/lang/String;

    move/from16 v5, p1

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, LaH/a;-><init>(ILjava/lang/String;[BLf/h;ZILf/C;IILjava/lang/String;LaH/b;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/W;->a:Lak/h;

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    goto :goto_0

    :cond_2
    const/4 v10, -0x1

    const/4 v11, -0x1

    new-instance v0, LaH/a;

    const/16 v1, 0x9

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/W;->c:Lf/h;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/W;->d:Lf/C;

    iget v8, p0, Lcom/google/android/maps/driveabout/app/W;->g:I

    iget v9, p0, Lcom/google/android/maps/driveabout/app/W;->h:I

    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/W;->e:Ljava/lang/String;

    iget-object v13, p0, Lcom/google/android/maps/driveabout/app/W;->f:Ljava/lang/String;

    move/from16 v5, p1

    move-object/from16 v14, p2

    invoke-direct/range {v0 .. v14}, LaH/a;-><init>(ILjava/lang/String;[BLf/h;ZILf/C;IIIILjava/lang/String;Ljava/lang/String;LaH/b;)V

    goto :goto_1
.end method
