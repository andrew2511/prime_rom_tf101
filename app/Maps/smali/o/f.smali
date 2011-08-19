.class public Lo/f;
.super Lak/m;


# instance fields
.field private a:Z

.field private final b:Lac/s;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Lac/s;

.field private f:Lac/s;

.field private g:Lac/s;

.field private h:Lac/s;

.field private i:Lac/s;


# direct methods
.method public constructor <init>(Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/f;->b:Lac/s;

    iput-object p2, p0, Lo/f;->c:Ljava/util/Vector;

    iput-object p3, p0, Lo/f;->d:Ljava/util/Vector;

    iput-object p4, p0, Lo/f;->e:Lac/s;

    iput-object p5, p0, Lo/f;->f:Lac/s;

    iput-object p6, p0, Lo/f;->g:Lac/s;

    iput-object p7, p0, Lo/f;->h:Lac/s;

    iput-object p8, p0, Lo/f;->i:Lac/s;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Law/e;

    sget-object v0, Ls/N;->k:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    iget-object v0, p0, Lo/f;->b:Lac/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/f;->b:Lac/s;

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v0

    move v2, v6

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lo/f;->b:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/f;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_1

    const/4 v4, 0x2

    iget-object v0, p0, Lo/f;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/f;->d:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/f;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_2

    const/4 v4, 0x3

    iget-object v0, p0, Lo/f;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/f;->e:Lac/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/f;->e:Lac/s;

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v0

    move v2, v6

    :goto_3
    if-ge v2, v0, :cond_3

    const/4 v3, 0x4

    iget-object v4, p0, Lo/f;->e:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lo/f;->f:Lac/s;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/f;->f:Lac/s;

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v0

    move v2, v6

    :goto_4
    if-ge v2, v0, :cond_4

    const/4 v3, 0x5

    iget-object v4, p0, Lo/f;->f:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lo/f;->g:Lac/s;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/f;->g:Lac/s;

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v0

    move v2, v6

    :goto_5
    if-ge v2, v0, :cond_5

    const/4 v3, 0x6

    iget-object v4, p0, Lo/f;->g:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lo/f;->h:Lac/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/f;->h:Lac/s;

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v0

    move v2, v6

    :goto_6
    if-ge v2, v0, :cond_6

    const/4 v3, 0x7

    iget-object v4, p0, Lo/f;->h:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lo/f;->i:Lac/s;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/f;->i:Lac/s;

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v0

    move v2, v6

    :goto_7
    if-ge v2, v0, :cond_7

    const/16 v3, 0x8

    iget-object v4, p0, Lo/f;->i:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->l:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    iput-boolean v5, p0, Lo/f;->a:Z

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_1
    return v3

    :pswitch_0
    iput-boolean v3, p0, Lo/f;->a:Z

    invoke-virtual {p0, v3}, Lo/f;->a(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5}, Lo/f;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
