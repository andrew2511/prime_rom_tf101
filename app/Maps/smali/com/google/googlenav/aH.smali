.class public Lcom/google/googlenav/aH;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Law/e;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/util/List;

.field private n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/aH;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/aH;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Law/e;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->j:Law/e;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->m:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/aH;
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/aH;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-boolean v0, Lcom/google/googlenav/bc;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/aH;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v1, v4

    :goto_1
    new-instance v2, Law/e;

    sget-object v0, Ls/k;->b:Law/f;

    invoke-direct {v2, v0}, Law/e;-><init>(Law/f;)V

    iget-object v0, p0, Lcom/google/googlenav/aH;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/googlenav/aH;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/aH;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/google/googlenav/aH;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Law/e;->h(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/aH;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/googlenav/aH;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/aH;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Law/e;->h(II)V

    invoke-static {v2}, Lcom/google/googlenav/bc;->a(Law/e;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Date;)Law/e;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Law/e;->b(ILaw/e;)V

    iget-object v0, p0, Lcom/google/googlenav/aH;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/aH;->e:Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/aH;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/aH;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v8, v0}, Law/e;->b(IZ)V

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/aH;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/google/googlenav/aH;->k:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Law/e;->b(IZ)V

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/aH;->g:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aH;->h:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aH;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aH;->j:Law/e;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aH;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    :cond_8
    new-instance v0, Law/e;

    sget-object v3, Ls/k;->a:Law/f;

    invoke-direct {v0, v3}, Law/e;-><init>(Law/f;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Law/e;->b(ILaw/e;)V

    iget-object v3, p0, Lcom/google/googlenav/aH;->g:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/googlenav/aH;->g:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/google/googlenav/aH;->h:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/googlenav/aH;->h:Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/google/googlenav/aH;->i:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/googlenav/aH;->i:Ljava/lang/String;

    invoke-virtual {v0, v8, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_b
    iget-object v3, p0, Lcom/google/googlenav/aH;->j:Law/e;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/googlenav/aH;->j:Law/e;

    invoke-virtual {v0, v4, v3}, Law/e;->b(ILaw/e;)V

    :cond_c
    iget-object v3, p0, Lcom/google/googlenav/aH;->l:Ljava/lang/Boolean;

    if-eqz v3, :cond_d

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/googlenav/aH;->l:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Law/e;->b(IZ)V

    :cond_d
    iget-object v3, p0, Lcom/google/googlenav/aH;->n:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/googlenav/aH;->n:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Law/e;->h(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/aH;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/bc;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/aH;->m:Ljava/util/List;

    if-eqz v0, :cond_f

    move v3, v6

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/aH;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/google/googlenav/aH;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Law/e;->a(II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :sswitch_0
    move v1, v6

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/bc;

    invoke-direct {v3, v2, v1}, Lcom/google/googlenav/bc;-><init>(Law/e;Z)V

    invoke-virtual {v0, v3}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lcom/google/googlenav/aH;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-static {v2}, Lcom/google/googlenav/bc;->b(Law/e;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(I)Lcom/google/googlenav/aH;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/aH;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/aH;
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/aH;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/aH;
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/aH;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/googlenav/aH;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aH;->i:Ljava/lang/String;

    return-object p0
.end method
