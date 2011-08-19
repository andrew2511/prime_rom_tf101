.class public Lo/aL;
.super Lak/m;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Lo/aE;

.field private final e:Lo/aA;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIILo/aE;Lo/aA;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-boolean p1, p0, Lo/aL;->a:Z

    iput p2, p0, Lo/aL;->b:I

    iput p3, p0, Lo/aL;->c:I

    iput-object p4, p0, Lo/aL;->d:Lo/aE;

    iput-object p5, p0, Lo/aL;->e:Lo/aA;

    return-void
.end method

.method private a(Law/e;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lo/aL;->a:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-object v1, p0, Lo/aL;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/aL;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lo/aL;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Law/e;->b(ILaw/e;)V

    return-void
.end method

.method private b(Law/e;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-boolean v1, p0, Lo/aL;->a:Z

    invoke-virtual {v0, v3, v1}, Law/e;->b(IZ)V

    const/4 v1, 0x2

    iget v2, p0, Lo/aL;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    invoke-virtual {p1, v3, v0}, Law/e;->b(ILaw/e;)V

    return-void
.end method

.method private c(Law/e;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lo/aL;->a:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/4 v1, 0x2

    iget v2, p0, Lo/aL;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Law/e;->b(ILaw/e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->i:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, Lo/aL;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lo/aL;->b(Law/e;)V

    :cond_0
    :goto_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_1
    iget v1, p0, Lo/aL;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lo/aL;->c(Law/e;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lo/aL;->c:I

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lo/aL;->a(Law/e;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/aL;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/M;->j:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    iput v1, p0, Lo/aL;->g:I

    const/4 v1, 0x3

    invoke-static {v0, v1, v3}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/aL;->h:Ljava/lang/String;

    const-string v1, ""

    iget-object v2, p0, Lo/aL;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/aL;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1, v3}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/aL;->h:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    return v3
.end method

.method public i_()V
    .locals 2

    iget v0, p0, Lo/aL;->g:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lo/aL;->e:Lo/aA;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/aL;->e:Lo/aA;

    iget-object v1, p0, Lo/aL;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/aA;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lo/aL;->d:Lo/aE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aL;->d:Lo/aE;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/aE;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lo/aL;->d:Lo/aE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aL;->d:Lo/aE;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lo/aE;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lo/aL;->d:Lo/aE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aL;->d:Lo/aE;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/aE;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
