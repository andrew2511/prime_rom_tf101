.class public LaH/a;
.super Lak/m;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Lf/h;

.field private final e:Lf/C;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Z

.field private j:LaH/b;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLf/h;ZILf/C;IIIILjava/lang/String;Ljava/lang/String;LaH/b;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p7, p0, LaH/a;->e:Lf/C;

    iput p8, p0, LaH/a;->f:I

    iput p9, p0, LaH/a;->g:I

    iput p1, p0, LaH/a;->a:I

    iput-object p2, p0, LaH/a;->b:Ljava/lang/String;

    iput-object p3, p0, LaH/a;->c:[B

    iput-object p4, p0, LaH/a;->d:Lf/h;

    iput-boolean p5, p0, LaH/a;->i:Z

    iput p6, p0, LaH/a;->h:I

    iput-object p13, p0, LaH/a;->p:Ljava/lang/String;

    iput-object p14, p0, LaH/a;->j:LaH/b;

    iput p10, p0, LaH/a;->m:I

    iput p11, p0, LaH/a;->n:I

    iput-object p12, p0, LaH/a;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLf/h;ZILf/C;IILjava/lang/String;LaH/b;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p7, p0, LaH/a;->e:Lf/C;

    iput p8, p0, LaH/a;->f:I

    iput p9, p0, LaH/a;->g:I

    iput p1, p0, LaH/a;->a:I

    iput-object p2, p0, LaH/a;->b:Ljava/lang/String;

    iput-object p3, p0, LaH/a;->c:[B

    iput-object p4, p0, LaH/a;->d:Lf/h;

    iput-boolean p5, p0, LaH/a;->i:Z

    iput p6, p0, LaH/a;->h:I

    iput-object p10, p0, LaH/a;->p:Ljava/lang/String;

    iput-object p11, p0, LaH/a;->j:LaH/b;

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    new-instance v0, Law/e;

    sget-object v1, Ls/D;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, LaH/a;->a:I

    invoke-virtual {v0, v6, v1}, Law/e;->h(II)V

    iget-object v1, p0, LaH/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, LaH/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, LaH/a;->c:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    iget-object v2, p0, LaH/a;->c:[B

    invoke-virtual {v0, v1, v2}, Law/e;->b(I[B)V

    :cond_1
    iget-boolean v1, p0, LaH/a;->i:Z

    invoke-virtual {v0, v7, v1}, Law/e;->b(IZ)V

    const/16 v1, 0x8

    iget v2, p0, LaH/a;->h:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, LaH/a;->p:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb

    iget-object v2, p0, LaH/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, LaH/a;->d:Lf/h;

    invoke-static {v1}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, LaH/a;->e:Lf/C;

    invoke-virtual {v1}, Lf/C;->a()Lf/h;

    move-result-object v1

    iget v2, p0, LaH/a;->f:I

    iget v3, p0, LaH/a;->g:I

    iget-object v4, p0, LaH/a;->e:Lf/C;

    invoke-virtual {v4}, Lf/C;->b()Lf/l;

    move-result-object v4

    invoke-virtual {v4}, Lf/l;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/D;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget v2, p0, LaH/a;->a:I

    invoke-static {v2}, LaH/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, LaH/a;->m:I

    invoke-virtual {v1, v6, v2}, Law/e;->h(II)V

    iget v2, p0, LaH/a;->n:I

    invoke-virtual {v1, v7, v2}, Law/e;->h(II)V

    iget-object v2, p0, LaH/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {v1, v5}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    :cond_4
    iget-object v1, p0, LaH/a;->r:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, LaH/a;->r:[B

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, LaH/a;->r:[B

    invoke-virtual {v0, v8, v1}, Law/e;->b(I[B)V

    :cond_5
    iget-object v1, p0, LaH/a;->q:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0xa

    iget-object v2, p0, LaH/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_6
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_7
    iget v2, p0, LaH/a;->a:I

    if-ne v2, v8, :cond_3

    iget-object v2, p0, LaH/a;->o:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, LaH/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Law/e;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    sget-object v0, Ls/D;->c:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v2}, Law/b;->c(Law/e;II)I

    move-result v1

    iput v1, p0, LaH/a;->k:I

    iput v2, p0, LaH/a;->l:I

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, LaH/a;->l:I

    :cond_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget v1, p0, LaH/a;->l:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(I)V

    return v3
.end method

.method public i_()V
    .locals 2

    iget v0, p0, LaH/a;->k:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LaH/a;->j:LaH/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaH/a;->j:LaH/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LaH/b;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LaH/a;->j:LaH/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaH/a;->j:LaH/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaH/b;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
