.class public Lu/m;
.super Ljava/lang/Object;


# static fields
.field private static f:Lu/m;


# instance fields
.field a:Z

.field b:Ljava/util/Hashtable;

.field c:Law/e;

.field private final d:Ln/a;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iput-object v0, p0, Lu/m;->d:Ln/a;

    iput-boolean v1, p0, Lu/m;->a:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lu/m;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lu/m;->e:Ljava/lang/String;

    invoke-direct {p0}, Lu/m;->e()Z

    return-void
.end method

.method public static declared-synchronized a()Lu/m;
    .locals 2

    const-class v0, Lu/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu/m;->f:Lu/m;

    if-nez v1, :cond_0

    invoke-static {}, Lu/m;->b()V

    :cond_0
    sget-object v1, Lu/m;->f:Lu/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Law/e;)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lu/m;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lu/m;->d:Ln/a;

    invoke-interface {v2, v1, v0}, Ln/a;->b([BLjava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving directions options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lu/m;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lu/m;->f:Lu/m;

    if-eqz v2, :cond_0

    sget-object v2, Lu/m;->f:Lu/m;

    iget-object v2, v2, Lu/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Lu/m;

    invoke-direct {v2, v1}, Lu/m;-><init>(Ljava/lang/String;)V

    sput-object v2, Lu/m;->f:Lu/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/m;->a:Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lu/q;

    invoke-direct {v1, p0}, Lu/q;-><init>(Lu/m;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lu/m;->f()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lu/m;->a(Law/e;Z)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Law/e;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lu/m;->d:Ln/a;

    invoke-direct {p0}, Lu/m;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, Ls/T;->d:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionDefinitionBlock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Law/e;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-object p1, p0, Lu/m;->c:Law/e;

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(I)V

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lu/m;->b:Ljava/util/Hashtable;

    iput-boolean v7, p0, Lu/m;->a:Z

    if-nez p2, :cond_1

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v6, p1}, Law/e;->a(ILaw/e;)V

    invoke-direct {p0, v0}, Lu/m;->a(Law/e;)V

    :cond_1
    return-void
.end method

.method public a([I)V
    .locals 3

    iget-boolean v0, p0, Lu/m;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    aget v2, p1, v0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lu/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lu/m;->d()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b([I)Ljava/util/Vector;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lu/m;->c:Law/e;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/Vector;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v1, p0, Lu/m;->c:Law/e;

    invoke-virtual {v1, v7}, Law/e;->i(I)I

    move-result v1

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lu/m;->c:Law/e;

    invoke-virtual {v3, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v7}, Law/e;->d(I)I

    move-result v4

    move v5, v8

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_3

    aget v6, p1, v5

    if-ne v4, v6, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lu/m;->c:Law/e;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lu/m;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lu/m;->d()V

    :cond_0
    return-void
.end method
