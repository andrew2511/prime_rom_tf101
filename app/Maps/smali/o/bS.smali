.class public Lo/bS;
.super Lak/m;


# instance fields
.field private a:Z

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lo/bs;


# direct methods
.method public constructor <init>(Lo/bs;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/bS;->e:Lo/bs;

    return-void
.end method

.method private a(Law/e;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    invoke-virtual {p1, v2}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lo/bS;->a:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x54

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/g;->n:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    sget-object v0, Ls/g;->o:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lo/bS;->a:Z

    iget-boolean v1, p0, Lo/bS;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v1, v5}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v5}, Law/b;->f(Law/e;I)J

    move-result-wide v3

    iput-wide v3, p0, Lo/bS;->b:J

    invoke-static {v2, v7}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/bS;->c:Ljava/lang/String;

    invoke-static {v2, v6}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/bS;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Law/e;->f(I)Law/e;

    move-result-object v1

    iget-object v2, p0, Lo/bS;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {v1, v6}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/bS;->c:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lo/bS;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/bS;->d:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lo/bS;->a(Law/e;)V

    iget-object v0, p0, Lo/bS;->e:Lo/bs;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lo/bS;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/bS;->e:Lo/bs;

    iget-wide v1, p0, Lo/bS;->b:J

    iget-object v3, p0, Lo/bS;->c:Ljava/lang/String;

    iget-object v4, p0, Lo/bS;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lo/bs;->a(JLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v5

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i_()V
    .locals 0

    return-void
.end method
