.class public Lk/g;
.super Ljava/lang/Object;

# interfaces
.implements Lk/f;


# instance fields
.field private final a:Lk/f;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lk/f;Ljava/lang/String;IILjava/util/Hashtable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/g;->a:Lk/f;

    iput p3, p0, Lk/g;->b:I

    iput p4, p0, Lk/g;->c:I

    iput-object p6, p0, Lk/g;->f:Ljava/lang/String;

    if-eqz p5, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lk/g;->e()V

    :goto_0
    return-void

    :cond_1
    monitor-enter p5

    :try_start_0
    invoke-virtual {p5, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p5, p2}, Lk/g;->b(Ljava/util/Hashtable;Ljava/lang/String;)V

    :goto_1
    monitor-exit p5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lk/g;->e()V

    invoke-virtual {p0, p5, p2}, Lk/g;->a(Ljava/util/Hashtable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private a(I)I
    .locals 0

    return p1
.end method

.method private b(I)I
    .locals 2

    iget v0, p0, Lk/g;->d:I

    sub-int v0, p1, v0

    iget v1, p0, Lk/g;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lac/m;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bb5\u6e05\u8511Ag$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bb5\u6e05\u8511Ag$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATbdqyg$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()V
    .locals 13

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lk/g;->d()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0, v8}, Lk/f;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0}, Lk/f;->a()I

    move-result v0

    add-int/lit8 v9, v0, 0x14

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Lk/i;->a(II)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->d()Lk/m;

    move-result-object v10

    iget-object v1, p0, Lk/g;->a:Lk/f;

    invoke-interface {v10, v1}, Lk/m;->a(Lk/f;)V

    iget-object v1, p0, Lk/g;->a:Lk/f;

    invoke-interface {v1}, Lk/f;->b()I

    move-result v1

    const v4, 0xffffff

    xor-int/2addr v1, v4

    invoke-interface {v10, v1}, Lk/m;->a(I)V

    invoke-interface {v10, v2, v2, v3, v9}, Lk/m;->b(IIII)V

    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lk/l;->a([IIIIIII)V

    aget v11, v1, v2

    iget-object v4, p0, Lk/g;->a:Lk/f;

    invoke-interface {v4}, Lk/f;->b()I

    move-result v4

    invoke-interface {v10, v4}, Lk/m;->a(I)V

    const/4 v4, 0x3

    const/16 v12, 0xa

    invoke-interface {v10, v8, v4, v12}, Lk/m;->a(Ljava/lang/String;II)V

    const/16 v4, 0x7f

    move v5, v2

    move v8, v2

    move v10, v4

    :goto_0
    if-ge v5, v9, :cond_2

    move v4, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lk/l;->a([IIIIIII)V

    move v4, v2

    move v6, v8

    move v8, v10

    :goto_1
    if-ge v4, v3, :cond_1

    aget v10, v1, v4

    if-eq v10, v11, :cond_0

    if-ge v5, v8, :cond_3

    move v6, v5

    :goto_2
    move v8, v6

    move v6, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v10, v8

    move v8, v6

    goto :goto_0

    :cond_2
    sub-int v0, v10, v12

    iput v0, p0, Lk/g;->d:I

    sub-int v0, v8, v10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/g;->e:I

    return-void

    :cond_3
    move v6, v8

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lk/g;->e:I

    iget v1, p0, Lk/g;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lk/g;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(C)I
    .locals 1

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0, p1}, Lk/f;->a(C)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0, p1}, Lk/f;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0, p1, p2, p3}, Lk/f;->a(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method a(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lk/g;->d:I

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    iget v2, p0, Lk/g;->e:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lk/m;Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-direct {p0, p3}, Lk/g;->a(I)I

    move-result v1

    invoke-direct {p0, p4}, Lk/g;->b(I)I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lk/f;->a(Lk/m;Ljava/lang/String;II)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0}, Lk/f;->b()I

    move-result v0

    return v0
.end method

.method b(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    iput v1, p0, Lk/g;->d:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput v0, p0, Lk/g;->e:I

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lk/g;->a:Lk/f;

    invoke-interface {v0}, Lk/f;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lk/g;->b(I)I

    move-result v0

    return v0
.end method
