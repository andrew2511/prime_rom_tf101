.class public LA/r;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([JIIJ)I
    .locals 5

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_5

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than a.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    if-ge v1, v0, :cond_4

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    aget-wide v3, p0, v2

    cmp-long v3, p3, v3

    if-gez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    aget-wide v3, p0, v2

    cmp-long v1, p3, v3

    if-lez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    goto :goto_1

    :cond_5
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LA/r;->a([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2

    move v0, p2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {p1, v1}, LA/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a([Ljava/lang/Object;)Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Vector;ILjava/util/Vector;)V
    .locals 3

    monitor-enter p2

    move v0, p1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    sub-int v2, v0, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a([Ljava/lang/Object;LA/i;)V
    .locals 3

    const/4 v2, 0x1

    array-length v0, p0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    sub-int/2addr v0, v2

    invoke-static {p0, p1, v1, v0}, LA/r;->a([Ljava/lang/Object;LA/i;II)V

    :cond_0
    return-void
.end method

.method public static a([Ljava/lang/Object;LA/i;II)V
    .locals 6

    const/4 v5, 0x1

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget-object v0, p0, v0

    move v1, p3

    move v2, p2

    :goto_0
    aget-object v3, p0, v2

    invoke-interface {p1, v3, v0}, LA/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    aget-object v3, p0, v1

    invoke-interface {p1, v0, v3}, LA/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-lt v2, v1, :cond_4

    sub-int v0, v2, v5

    if-ge p2, v0, :cond_2

    sub-int v0, v2, v5

    invoke-static {p0, p1, p2, v0}, LA/r;->a([Ljava/lang/Object;LA/i;II)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    if-ge v0, p3, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, p1, v0, p3}, LA/r;->a([Ljava/lang/Object;LA/i;II)V

    :cond_3
    return-void

    :cond_4
    aget-object v3, p0, v2

    aget-object v4, p0, v1

    aput-object v4, p0, v2

    aput-object v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, LA/r;->a([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, LA/r;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Vector;

    check-cast p1, Ljava/util/Vector;

    invoke-static {p0, p1}, LA/r;->a(Ljava/util/Vector;Ljava/util/Vector;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_4

    if-nez p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Vector;Ljava/util/Vector;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, LA/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_0
.end method

.method public static a([B[B)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, LA/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method
