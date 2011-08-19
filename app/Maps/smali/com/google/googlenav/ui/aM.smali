.class public Lcom/google/googlenav/ui/aM;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/ui/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aC;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/aC;-><init>(Lcom/google/googlenav/ui/j;)V

    sput-object v0, Lcom/google/googlenav/ui/aM;->a:Lcom/google/googlenav/ui/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 10

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const v9, 0xea60

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 2

    mul-int/lit8 v0, p0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(J)I
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ax;->a(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/aM;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Lu/v;)J
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lu/v;->P()Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;)Law/e;
    .locals 6

    new-instance v0, Law/e;

    sget-object v1, Ls/b;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/aM;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(IZ)Ljava/lang/String;
    .locals 6

    const v2, 0x15180

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_3

    :goto_0
    div-int v1, v0, v2

    rem-int v2, v0, v2

    div-int/lit16 v2, v2, 0xe10

    rem-int/lit16 v0, v0, 0xe10

    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xe8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/16 v3, 0xe9

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    const/16 v1, 0xea

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xeb

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, p0

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0xc

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Lcom/google/googlenav/d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lt v0, v3, :cond_1

    const/16 v2, 0x419

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    rem-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    move v0, v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/16 v2, 0x418

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x41a

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(JJ)Z
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/googlenav/ui/aM;->a:Lcom/google/googlenav/ui/d;

    invoke-interface {v0}, Lcom/google/googlenav/ui/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    sub-long/2addr v0, p0

    div-long/2addr v0, v6

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    div-long/2addr v0, v6

    const-wide/16 v2, 0x3c

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public static a(Law/e;)Z
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/google/googlenav/ui/aM;->a()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/aM;->a(Law/e;JI)Z

    move-result v0

    return v0
.end method

.method protected static a(Law/e;JI)Z
    .locals 6

    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->g(Law/e;)I

    move-result v0

    if-eq v0, p3, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    int-to-long v3, p3

    add-long/2addr p1, v3

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 p3, 0x5

    invoke-virtual {v1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->d(Law/e;)J

    move-result-wide v2

    new-instance p0, Ljava/util/Date;

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, p3, :cond_1

    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 8

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    const-wide/32 v2, 0x14997000

    int-to-long v4, p0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Law/e;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->f(Law/e;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Law/e;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->f(Law/e;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Law/e;)J
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->e(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static d(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc4

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Law/e;)Ljava/util/Date;
    .locals 6

    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->d(Law/e;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->g(Law/e;)I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/aM;->a()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/Date;

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v3
.end method

.method private static f(Law/e;)Ljava/util/Calendar;
    .locals 7

    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->d(Law/e;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->g(Law/e;)I

    move-result v2

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    int-to-long v5, v2

    add-long/2addr v0, v5

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v3
.end method

.method private static g(Law/e;)I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method
