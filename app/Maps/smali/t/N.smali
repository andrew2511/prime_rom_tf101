.class Lt/N;
.super Lak/m;


# instance fields
.field private final a:LG/A;

.field private final b:Ljava/util/List;

.field private c:Law/e;

.field private d:Z


# direct methods
.method public constructor <init>(LG/A;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lt/N;->a:LG/A;

    invoke-static {}, Lj/X;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lt/N;->b:Ljava/util/List;

    return-void
.end method

.method private q()I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lt/N;->c:Law/e;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lt/N;->c:Law/e;

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x76

    return v0
.end method

.method public a(LG/e;)V
    .locals 4

    invoke-direct {p0}, Lt/N;->q()I

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lt/N;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/o;

    iget-object v3, p0, Lt/N;->a:LG/A;

    invoke-interface {v0, v3, v1, p1}, Lt/o;->a(LG/A;ILG/e;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/J;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lt/N;->a:LG/A;

    invoke-virtual {v2}, LG/A;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public a(Lt/o;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lt/N;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/J;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lt/N;->c:Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public l()LG/A;
    .locals 1

    iget-object v0, p0, Lt/N;->a:LG/A;

    return-object v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/N;->d:Z

    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lt/N;->d:Z

    return v0
.end method

.method public o()Law/e;
    .locals 2

    iget-object v0, p0, Lt/N;->c:Law/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lt/N;->c:Law/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    invoke-direct {p0}, Lt/N;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
