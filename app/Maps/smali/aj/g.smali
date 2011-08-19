.class public final Laj/g;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Laj/g;->a:Z

    iput-boolean v0, p0, Laj/g;->b:Z

    iput-boolean v0, p0, Laj/g;->c:Z

    iput-boolean v0, p0, Laj/g;->d:Z

    iput-boolean v0, p0, Laj/g;->e:Z

    iput-boolean v0, p0, Laj/g;->f:Z

    iput-boolean v0, p0, Laj/g;->g:Z

    iput-boolean v0, p0, Laj/g;->h:Z

    iput-boolean v0, p0, Laj/g;->i:Z

    iput-boolean v0, p0, Laj/g;->j:Z

    iput-boolean v0, p0, Laj/g;->k:Z

    iput-boolean v0, p0, Laj/g;->l:Z

    iput-boolean v0, p0, Laj/g;->m:Z

    iput-boolean v0, p0, Laj/g;->n:Z

    iput-boolean v0, p0, Laj/g;->o:Z

    iput-boolean v0, p0, Laj/g;->p:Z

    invoke-direct {p0, p1}, Laj/g;->b(Law/e;)V

    return-void
.end method

.method private b(Law/e;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Laj/g;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Laj/g;->a:Z

    iget-boolean v0, p0, Laj/g;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Laj/g;->b:Z

    iget-boolean v0, p0, Laj/g;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Laj/g;->c:Z

    iget-boolean v0, p0, Laj/g;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Laj/g;->d:Z

    iget-boolean v0, p0, Laj/g;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Laj/g;->e:Z

    iget-boolean v0, p0, Laj/g;->f:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Laj/g;->f:Z

    iget-boolean v0, p0, Laj/g;->g:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Laj/g;->g:Z

    iget-boolean v0, p0, Laj/g;->h:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Laj/g;->h:Z

    iget-boolean v0, p0, Laj/g;->i:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Laj/g;->i:Z

    iget-boolean v0, p0, Laj/g;->j:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Laj/g;->j:Z

    iget-boolean v0, p0, Laj/g;->k:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Laj/g;->k:Z

    iget-boolean v0, p0, Laj/g;->l:Z

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Laj/g;->l:Z

    iget-boolean v0, p0, Laj/g;->m:Z

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Laj/g;->m:Z

    iget-boolean v0, p0, Laj/g;->n:Z

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Laj/g;->n:Z

    iget-boolean v0, p0, Laj/g;->o:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Laj/g;->o:Z

    iget-boolean v0, p0, Laj/g;->p:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Laj/g;->p:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v2

    goto :goto_f
.end method

.method public static o()Law/e;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Laj/g;->b(Law/e;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->j:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->k:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->l:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->m:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->n:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->o:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Laj/g;->p:Z

    return v0
.end method
