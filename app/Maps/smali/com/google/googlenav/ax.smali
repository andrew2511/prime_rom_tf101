.class public Lcom/google/googlenav/ax;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ax;->g(Law/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {p1, v3}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/ax;->h(Law/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(IILaw/e;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p3, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    add-int/lit8 v3, v2, 0x6

    rem-int/lit8 v3, v3, 0x7

    invoke-static {v0, v8}, Law/b;->g(Law/e;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v0, v7}, Law/b;->e(Law/e;I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/googlenav/ui/aM;->a(III)I

    move-result v3

    add-int/lit8 v4, v2, 0x6

    rem-int/lit8 v4, v4, 0x7

    invoke-static {v1, v8}, Law/b;->g(Law/e;I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v1, v7}, Law/b;->e(Law/e;I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/googlenav/ui/aM;->a(III)I

    move-result v4

    new-instance v5, Lcom/google/googlenav/T;

    invoke-direct {v5, v3, v4}, Lcom/google/googlenav/T;-><init>(II)V

    invoke-direct {p0, v5}, Lcom/google/googlenav/ax;->a(Lcom/google/googlenav/T;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/T;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/T;->a(Lcom/google/googlenav/T;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/T;->a(Lcom/google/googlenav/T;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/util/Vector;)V
    .locals 6

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/T;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v2, v5

    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p0}, Lcom/google/googlenav/T;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/T;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/T;->a(I)V

    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    if-nez v2, :cond_3

    add-int/lit8 v0, v1, -0x1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private a(Law/e;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-static {p1, v0}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private b(Law/e;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Law/e;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v3}, Law/b;->h(Law/e;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v2}, Law/b;->e(Law/e;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d(Law/e;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ax;->c(Law/e;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->b(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->b(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private e(Law/e;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ax;->c(Law/e;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->a(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->a(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private f(Law/e;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v2}, Law/e;->i(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v2, v3}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->d(Law/e;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, v2, v3}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->d(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2, v2}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ax;->e(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private g(Law/e;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/ax;->f(Law/e;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private h(Law/e;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Law/e;->i(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v2, v3}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-direct {p0, v3, v5, v0}, Lcom/google/googlenav/ax;->a(IILaw/e;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2, v3}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-virtual {p1, v2, v2}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-virtual {v1, v5}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v2, v4}, Law/b;->g(Law/e;I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v4}, Law/b;->g(Law/e;I)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {p0, v2, v1, v0}, Lcom/google/googlenav/ax;->a(IILaw/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a(J)Lcom/google/googlenav/v;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/aM;->a(J)I

    move-result v1

    move v2, v4

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()I

    move-result v3

    if-ge v1, v3, :cond_2

    new-instance v2, Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/aM;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/v;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/T;->b()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v2, Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->b()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/aM;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/T;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/v;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/T;

    new-instance v0, Lcom/google/googlenav/v;

    invoke-virtual {p0}, Lcom/google/googlenav/T;->a()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->b(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x93a80

    sub-int v1, v3, v1

    invoke-virtual {p0}, Lcom/google/googlenav/T;->a()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v2, v4, v1}, Lcom/google/googlenav/v;-><init>(Ljava/lang/String;ZI)V

    goto :goto_0
.end method
