.class public Lcom/google/googlenav/appwidget/hotpot/c;
.super Lak/m;


# instance fields
.field private a:I

.field private b:Lcom/google/googlenav/appwidget/hotpot/w;

.field private c:Law/e;

.field private d:Z


# direct methods
.method public constructor <init>(ILcom/google/googlenav/appwidget/hotpot/w;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput p1, p0, Lcom/google/googlenav/appwidget/hotpot/c;->a:I

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/c;->b:Lcom/google/googlenav/appwidget/hotpot/w;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x63

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/G;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, Lcom/google/googlenav/appwidget/hotpot/c;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/appwidget/hotpot/c;->a:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ls/G;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v2, v2}, Law/b;->c(Law/e;II)I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/google/googlenav/appwidget/hotpot/c;->d:Z

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/c;->c:Law/e;

    :cond_0
    return v2
.end method

.method public i_()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/hotpot/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/c;->b:Lcom/google/googlenav/appwidget/hotpot/w;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/c;->c:Law/e;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/w;->a(Law/e;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/c;->b:Lcom/google/googlenav/appwidget/hotpot/w;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/w;->a()V

    goto :goto_0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/c;->b:Lcom/google/googlenav/appwidget/hotpot/w;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/w;->a()V

    return-void
.end method
