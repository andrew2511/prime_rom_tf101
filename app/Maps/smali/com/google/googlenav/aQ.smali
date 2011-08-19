.class public Lcom/google/googlenav/aQ;
.super Lak/m;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lf/h;

.field private f:Lf/h;

.field private g:I

.field private final h:I

.field private final i:Lcom/google/googlenav/S;


# direct methods
.method public constructor <init>(Lf/h;Lf/h;Lcom/google/googlenav/S;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/google/googlenav/aQ;->g:I

    iput-object p1, p0, Lcom/google/googlenav/aQ;->e:Lf/h;

    iput-object p2, p0, Lcom/google/googlenav/aQ;->f:Lf/h;

    iput-object p3, p0, Lcom/google/googlenav/aQ;->i:Lcom/google/googlenav/S;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/aQ;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/S;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/google/googlenav/aQ;->g:I

    iput-object p1, p0, Lcom/google/googlenav/aQ;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/aQ;->i:Lcom/google/googlenav/S;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aQ;->h:I

    return-void
.end method

.method private a(Law/e;I)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaG/d;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlenav/aQ;->g:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    invoke-virtual {p1, p2, v0}, Law/e;->b(ILaw/e;)V

    return-void
.end method

.method private l()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaG/d;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/aQ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/aQ;->a(Law/e;I)V

    return-object v0
.end method

.method private m()Law/e;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, LaG/d;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lcom/google/googlenav/aQ;->e:Lf/h;

    invoke-virtual {v2}, Lf/h;->c()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    iget-object v2, p0, Lcom/google/googlenav/aQ;->e:Lf/h;

    invoke-virtual {v2}, Lf/h;->e()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lcom/google/googlenav/aQ;->f:Lf/h;

    invoke-virtual {v2}, Lf/h;->c()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    iget-object v2, p0, Lcom/google/googlenav/aQ;->f:Lf/h;

    invoke-virtual {v2}, Lf/h;->e()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/aQ;->a(Law/e;I)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aQ;->h:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x51

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x52

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/g;->s:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, Lcom/google/googlenav/aQ;->h:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/googlenav/aQ;->l()Law/e;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/googlenav/aQ;->m()Law/e;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    sget-object v0, Ls/g;->t:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Law/e;->d(I)I

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v7, p0, Lcom/google/googlenav/aQ;->d:Z

    move v0, v9

    :goto_0
    return v0

    :cond_0
    iput-boolean v9, p0, Lcom/google/googlenav/aQ;->d:Z

    invoke-virtual {v0, v10}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Law/e;->i(I)I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lcom/google/googlenav/aQ;->a:Ljava/util/Vector;

    move v3, v7

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/aQ;->a:Ljava/util/Vector;

    new-instance v6, Lcom/google/googlenav/bG;

    invoke-direct {v6, v4}, Lcom/google/googlenav/bG;-><init>(Law/e;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v11}, Law/e;->i(I)I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/google/googlenav/aQ;->b:Ljava/util/Vector;

    move v2, v7

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v11, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/aQ;->b:Ljava/util/Vector;

    new-instance v5, Lcom/google/googlenav/by;

    new-instance v6, Ljava/lang/Long;

    invoke-virtual {v3, v9}, Law/e;->e(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v10}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/google/googlenav/by;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public i_()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/aQ;->i:Lcom/google/googlenav/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aQ;->i:Lcom/google/googlenav/S;

    iget-object v1, p0, Lcom/google/googlenav/aQ;->a:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/googlenav/aQ;->b:Ljava/util/Vector;

    iget-boolean v3, p0, Lcom/google/googlenav/aQ;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/S;->a(Ljava/util/Vector;Ljava/util/Vector;Z)V

    :cond_0
    return-void
.end method
