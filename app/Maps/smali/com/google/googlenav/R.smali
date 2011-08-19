.class public Lcom/google/googlenav/R;
.super Lak/m;


# instance fields
.field private final a:Lf/h;

.field private final b:I

.field private final c:I

.field private final d:I

.field private volatile e:Z

.field private f:Lcom/google/googlenav/N;

.field private g:I

.field private h:[Lcom/google/googlenav/ao;


# direct methods
.method public constructor <init>(Lf/h;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/R;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    iput-object p1, p0, Lcom/google/googlenav/R;->a:Lf/h;

    iput v1, p0, Lcom/google/googlenav/R;->b:I

    iput v1, p0, Lcom/google/googlenav/R;->c:I

    iput p2, p0, Lcom/google/googlenav/R;->d:I

    return-void
.end method

.method public constructor <init>(Lf/h;III)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/R;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    iput-object p1, p0, Lcom/google/googlenav/R;->a:Lf/h;

    iput p2, p0, Lcom/google/googlenav/R;->b:I

    iput p3, p0, Lcom/google/googlenav/R;->c:I

    iput p4, p0, Lcom/google/googlenav/R;->d:I

    return-void
.end method

.method private a(Law/e;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/ao;

    iput-object v1, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    move v1, v10

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v8, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-virtual {v2, v9}, Law/e;->f(I)Law/e;

    move-result-object v3

    invoke-virtual {v3, v9}, Law/e;->d(I)I

    move-result v3

    invoke-static {v8, v10, v2}, Lcom/google/googlenav/af;->a(IILaw/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9, v2}, Lcom/google/googlenav/af;->a(IILaw/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11}, Law/e;->h(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v11}, Law/e;->f(I)Law/e;

    move-result-object v2

    :goto_1
    new-instance v6, Lcom/google/googlenav/ao;

    new-array v7, v8, [Ljava/lang/String;

    aput-object v4, v7, v10

    aput-object v5, v7, v9

    invoke-direct {v6, v3, v7, v2}, Lcom/google/googlenav/ao;-><init>(I[Ljava/lang/String;Law/e;)V

    iget-object v2, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public a(I)Lcom/google/googlenav/ao;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/N;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/R;->f:Lcom/google/googlenav/N;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/e;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/R;->a:Lf/h;

    invoke-static {v1}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lcom/google/googlenav/R;->a:Lf/h;

    iget v2, p0, Lcom/google/googlenav/R;->b:I

    iget v3, p0, Lcom/google/googlenav/R;->c:I

    iget v4, p0, Lcom/google/googlenav/R;->d:I

    invoke-static {v1, v2, v3, v4}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Law/e;->b(IZ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ls/e;->d:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/R;->g:I

    iget v1, p0, Lcom/google/googlenav/R;->g:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput-boolean v2, p0, Lcom/google/googlenav/R;->e:Z

    return v2

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/google/googlenav/R;->a(Law/e;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/R;->f:Lcom/google/googlenav/N;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/R;->f:Lcom/google/googlenav/N;

    invoke-interface {v0, p0}, Lcom/google/googlenav/N;->a(Lcom/google/googlenav/R;)V

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/R;->h:[Lcom/google/googlenav/ao;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
