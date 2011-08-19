.class public final LG/R;
.super LG/ab;


# instance fields
.field private b:LG/S;

.field private c:LG/Q;

.field private d:LG/Q;

.field private e:I

.field private f:I

.field private g:I

.field private volatile h:LG/Q;

.field private volatile i:LG/Q;

.field private volatile j:LG/Q;

.field private volatile k:LG/Q;

.field private volatile l:LG/Q;

.field private volatile m:LG/Q;


# direct methods
.method private constructor <init>(LG/S;)V
    .locals 4

    const/high16 v3, 0x4000

    invoke-direct {p0}, LG/ab;-><init>()V

    iput-object p1, p0, LG/R;->b:LG/S;

    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, LG/S;->e()LG/Q;

    move-result-object v1

    iget v2, v0, LG/Q;->a:I

    if-gez v2, :cond_1

    iget v2, v0, LG/Q;->a:I

    neg-int v2, v2

    iput v2, p0, LG/R;->e:I

    :cond_0
    :goto_0
    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    iput-object v2, p0, LG/R;->c:LG/Q;

    iget-object v2, p0, LG/R;->c:LG/Q;

    invoke-virtual {v0, v2}, LG/Q;->i(LG/Q;)V

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    iput-object v2, p0, LG/R;->d:LG/Q;

    iget-object v2, p0, LG/R;->d:LG/Q;

    invoke-virtual {v1, v2}, LG/Q;->i(LG/Q;)V

    iget-object v2, p0, LG/R;->c:LG/Q;

    iget v2, v2, LG/Q;->a:I

    iget-object v3, p0, LG/R;->d:LG/Q;

    iget v3, v3, LG/Q;->a:I

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, LG/R;->a:Z

    iget v0, v0, LG/Q;->a:I

    iget v2, p0, LG/R;->e:I

    add-int/2addr v0, v2

    iput v0, p0, LG/R;->f:I

    iget v0, v1, LG/Q;->a:I

    iget v1, p0, LG/R;->e:I

    add-int/2addr v0, v1

    iput v0, p0, LG/R;->g:I

    return-void

    :cond_1
    iget v2, v1, LG/Q;->a:I

    if-le v2, v3, :cond_0

    iget v2, v1, LG/Q;->a:I

    sub-int v2, v3, v2

    iput v2, p0, LG/R;->e:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static a(LG/S;)LG/R;
    .locals 1

    new-instance v0, LG/R;

    invoke-direct {v0, p0}, LG/R;-><init>(LG/S;)V

    return-object v0
.end method


# virtual methods
.method public a(I)LG/Q;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, LG/R;->h:LG/Q;

    if-nez v0, :cond_0

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/R;->d:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p0, LG/R;->c:LG/Q;

    iget v2, v2, LG/Q;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/R;->h:LG/Q;

    :cond_0
    iget-object v0, p0, LG/R;->h:LG/Q;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, LG/R;->d:LG/Q;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, LG/R;->i:LG/Q;

    if-nez v0, :cond_1

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/R;->c:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v2, p0, LG/R;->d:LG/Q;

    iget v2, v2, LG/Q;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/R;->i:LG/Q;

    :cond_1
    iget-object v0, p0, LG/R;->i:LG/Q;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, LG/R;->c:LG/Q;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()LG/R;
    .locals 0

    return-object p0
.end method

.method public a(I[LG/Q;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const v2, -0x20000001

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, LG/R;->a:Z

    if-eqz v0, :cond_4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v4}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, LG/R;->j:LG/Q;

    if-nez v0, :cond_0

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/R;->d:LG/Q;

    iget v1, v1, LG/Q;->b:I

    invoke-direct {v0, v2, v1}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/R;->j:LG/Q;

    :cond_0
    iget-object v0, p0, LG/R;->j:LG/Q;

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, LG/R;->k:LG/Q;

    if-nez v0, :cond_1

    new-instance v0, LG/Q;

    const/high16 v1, 0x2000

    iget-object v2, p0, LG/R;->d:LG/Q;

    iget v2, v2, LG/Q;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/R;->k:LG/Q;

    :cond_1
    iget-object v0, p0, LG/R;->k:LG/Q;

    aput-object v0, p2, v3

    invoke-virtual {p0, v5}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v1}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, LG/R;->l:LG/Q;

    if-nez v0, :cond_2

    new-instance v0, LG/Q;

    const/high16 v1, 0x2000

    iget-object v2, p0, LG/R;->c:LG/Q;

    iget v2, v2, LG/Q;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/R;->l:LG/Q;

    :cond_2
    iget-object v0, p0, LG/R;->l:LG/Q;

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, LG/R;->m:LG/Q;

    if-nez v0, :cond_3

    new-instance v0, LG/Q;

    iget-object v1, p0, LG/R;->c:LG/Q;

    iget v1, v1, LG/Q;->b:I

    invoke-direct {v0, v2, v1}, LG/Q;-><init>(II)V

    iput-object v0, p0, LG/R;->m:LG/Q;

    :cond_3
    iget-object v0, p0, LG/R;->m:LG/Q;

    aput-object v0, p2, v3

    invoke-virtual {p0, v3}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, p1}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v3

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, LG/R;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(LG/Q;)Z
    .locals 2

    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/R;->e:I

    add-int/2addr v0, v1

    const v1, 0x3fffffff

    and-int/2addr v0, v1

    iget v1, p0, LG/R;->f:I

    if-lt v0, v1, :cond_0

    iget v1, p0, LG/R;->g:I

    if-gt v0, v1, :cond_0

    iget v0, p1, LG/Q;->b:I

    iget-object v1, p0, LG/R;->c:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, LG/Q;->b:I

    iget-object v1, p0, LG/R;->d:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LG/z;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x2000

    const/high16 v4, -0x2000

    const/high16 v3, 0x4000

    iget-boolean v0, p0, LG/R;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LG/R;->b:LG/S;

    invoke-virtual {v0, p1}, LG/S;->a(LG/z;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v0

    iget-object v1, p0, LG/R;->c:LG/Q;

    iget v1, v1, LG/Q;->b:I

    iget-object v2, v0, LG/S;->a:LG/Q;

    iget v2, v2, LG/Q;->b:I

    if-gt v1, v2, :cond_1

    iget-object v1, p0, LG/R;->d:LG/Q;

    iget v1, v1, LG/Q;->b:I

    iget-object v2, v0, LG/S;->b:LG/Q;

    iget v2, v2, LG/Q;->b:I

    if-ge v1, v2, :cond_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v1, v0, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    iget-object v0, v0, LG/S;->b:LG/Q;

    iget v0, v0, LG/Q;->a:I

    iget-object v2, p0, LG/R;->c:LG/Q;

    iget v2, v2, LG/Q;->a:I

    if-gt v2, v1, :cond_3

    if-gt v5, v0, :cond_4

    :cond_3
    if-gt v4, v1, :cond_5

    iget-object v2, p0, LG/R;->d:LG/Q;

    iget v2, v2, LG/Q;->a:I

    if-lt v2, v0, :cond_5

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    if-ge v1, v4, :cond_8

    add-int/2addr v1, v3

    :cond_6
    :goto_1
    if-ge v0, v4, :cond_9

    add-int/2addr v0, v3

    :cond_7
    :goto_2
    iget-object v2, p0, LG/R;->c:LG/Q;

    iget v2, v2, LG/Q;->a:I

    if-gt v2, v1, :cond_a

    iget-object v1, p0, LG/R;->d:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-lt v1, v0, :cond_a

    move v0, v7

    goto :goto_0

    :cond_8
    if-lt v1, v5, :cond_6

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_9
    if-lt v0, v5, :cond_7

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_a
    move v0, v6

    goto :goto_0
.end method

.method public b()LG/Q;
    .locals 2

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iget-object v1, p0, LG/R;->b:LG/S;

    invoke-virtual {v1}, LG/S;->f()LG/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, LG/Q;->i(LG/Q;)V

    return-object v0
.end method

.method public b(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, LG/R;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LG/R;->b:LG/S;

    invoke-virtual {v0, p1}, LG/S;->b(LG/z;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LG/S;

    if-eqz v0, :cond_6

    check-cast p1, LG/S;

    iget-object v0, p0, LG/R;->c:LG/Q;

    iget v0, v0, LG/Q;->b:I

    iget-object v1, p1, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, LG/R;->d:LG/Q;

    iget v0, v0, LG/Q;->b:I

    iget-object v1, p1, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->b:I

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, LG/R;->c:LG/Q;

    iget v0, v0, LG/Q;->a:I

    iget-object v1, p1, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-gt v0, v1, :cond_3

    const/high16 v0, 0x2000

    iget-object v1, p1, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-gt v0, v1, :cond_4

    :cond_3
    const/high16 v0, -0x2000

    iget-object v1, p1, LG/S;->b:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-gt v0, v1, :cond_5

    iget-object v0, p0, LG/R;->d:LG/Q;

    iget v0, v0, LG/Q;->a:I

    iget-object v1, p1, LG/S;->a:LG/Q;

    iget v1, v1, LG/Q;->a:I

    if-lt v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, LG/ab;->b(LG/z;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()LG/z;
    .locals 1

    iget-object v0, p0, LG/R;->b:LG/S;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LG/R;->b:LG/S;

    invoke-virtual {v0}, LG/S;->g()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, LG/R;->d:LG/Q;

    iget v0, v0, LG/Q;->b:I

    iget-object v1, p0, LG/R;->c:LG/Q;

    iget v1, v1, LG/Q;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()LG/Q;
    .locals 1

    iget-object v0, p0, LG/R;->c:LG/Q;

    return-object v0
.end method

.method public g()LG/Q;
    .locals 1

    iget-object v0, p0, LG/R;->d:LG/Q;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-boolean v0, p0, LG/R;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
