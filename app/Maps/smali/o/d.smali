.class public Lo/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lo/N;

.field private final g:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JIIILo/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo/d;->a:J

    iput-object p3, p0, Lo/d;->b:Ljava/lang/String;

    iput-wide p4, p0, Lo/d;->g:J

    iput-object p9, p0, Lo/d;->f:Lo/N;

    iput p6, p0, Lo/d;->c:I

    iput p7, p0, Lo/d;->d:I

    iput p8, p0, Lo/d;->e:I

    return-void
.end method

.method public static a(Law/e;)Ljava/util/List;
    .locals 12

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->i(I)I

    move-result v0

    if-ge v11, v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v11}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Law/e;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lo/d;->g()Lo/d;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized custom target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance v0, Lo/d;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Law/e;->e(I)J

    move-result-wide v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const v6, 0x7f020216

    const v7, 0x7f020217

    const v8, 0x7f02029e

    sget-object v9, Lo/N;->a:Lo/N;

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v0, Lo/d;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Law/e;->e(I)J

    move-result-wide v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const v6, 0x7f020216

    const v7, 0x7f020217

    const v8, 0x7f02029e

    sget-object v9, Lo/N;->c:Lo/N;

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lo/x;)Lo/d;
    .locals 10

    invoke-virtual {p0}, Lo/x;->a()J

    move-result-wide v0

    invoke-static {}, Lo/d;->i()Lo/d;

    move-result-object v2

    invoke-virtual {v2}, Lo/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lo/d;->i()Lo/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/x;->a()J

    move-result-wide v0

    invoke-static {}, Lo/d;->j()Lo/d;

    move-result-object v2

    invoke-virtual {v2}, Lo/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lo/d;->j()Lo/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lo/d;

    invoke-virtual {p0}, Lo/x;->a()J

    move-result-wide v1

    invoke-virtual {p0}, Lo/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lo/x;->h()J

    move-result-wide v4

    const v6, 0x7f020216

    const v7, 0x7f020217

    const v8, 0x7f02029e

    sget-object v9, Lo/N;->a:Lo/N;

    invoke-direct/range {v0 .. v9}, Lo/d;-><init>(JLjava/lang/String;JIIILo/N;)V

    goto :goto_0
.end method

.method public static final g()Lo/d;
    .locals 1

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->b()Lo/d;

    move-result-object v0

    return-object v0
.end method

.method public static final h()Lo/d;
    .locals 1

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->c()Lo/d;

    move-result-object v0

    return-object v0
.end method

.method public static final i()Lo/d;
    .locals 1

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->e()Lo/d;

    move-result-object v0

    return-object v0
.end method

.method public static final j()Lo/d;
    .locals 1

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->d()Lo/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lo/d;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lo/N;
    .locals 1

    iget-object v0, p0, Lo/d;->f:Lo/N;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lo/d;->g:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lo/d;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lo/d;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lo/d;

    invoke-virtual {p0}, Lo/d;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lo/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/d;->c()Lo/N;

    move-result-object v0

    invoke-virtual {p1}, Lo/d;->c()Lo/N;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/N;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lo/d;->e:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/d;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lo/d;->c()Lo/N;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lae/b;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
