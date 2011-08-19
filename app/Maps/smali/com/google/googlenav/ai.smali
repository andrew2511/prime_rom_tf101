.class public Lcom/google/googlenav/ai;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x1

    const/16 v8, 0x30

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9223372036854775808"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    move v9, v5

    move v5, v3

    move v3, v9

    :goto_1
    if-ltz v4, :cond_2

    if-ltz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2
    sub-int/2addr v6, v8

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    rem-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Law/e;Law/e;)Z
    .locals 5

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {p0, v2}, Law/b;->h(Law/e;I)Z

    move-result v0

    invoke-static {p0, v3}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2}, Law/b;->h(Law/e;I)Z

    move-result v2

    invoke-static {p1, v3}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v4, :cond_0

    if-ne v0, v4, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Law/e;ZLjava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v2, :cond_0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
