.class public Lo/br;
.super Lak/m;


# instance fields
.field protected a:Law/e;

.field protected b:Z

.field private c:Ljava/util/List;

.field private final d:Z

.field private e:Lo/R;


# direct methods
.method public constructor <init>(ILo/r;LaU/a;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lj/X;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lo/R;

    invoke-direct {v1, p3, p2}, Lo/R;-><init>(LaU/a;Lo/r;)V

    invoke-direct {p0, v0, v1, p4}, Lo/br;-><init>(Ljava/util/List;Lo/R;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lo/R;Z)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/br;->c:Ljava/util/List;

    iput-object p2, p0, Lo/br;->e:Lo/R;

    iput-boolean p3, p0, Lo/br;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lo/br;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Law/e;->a(II)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/M;->h:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/br;->a:Law/e;

    iget-object v0, p0, Lo/br;->a:Law/e;

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    iget-object v1, p0, Lo/br;->a:Law/e;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/br;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v3

    :pswitch_0
    iput-boolean v3, p0, Lo/br;->b:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lo/br;->d:Z

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i_()V
    .locals 2

    iget-boolean v0, p0, Lo/br;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/br;->e:Lo/R;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/br;->e:Lo/R;

    iget-object v1, p0, Lo/br;->a:Law/e;

    invoke-virtual {v0, v1}, Lo/R;->a(Law/e;)V

    :cond_0
    return-void
.end method
