.class public Lh/aV;
.super Lak/m;


# instance fields
.field final synthetic a:Lh/eL;

.field private final b:Lh/cK;

.field private final c:Law/e;

.field private d:Law/e;


# direct methods
.method public constructor <init>(Lh/eL;Lcom/google/googlenav/c;ILh/cK;)V
    .locals 5

    const/4 v4, 0x2

    iput-object p1, p0, Lh/aV;->a:Lh/eL;

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p4, p0, Lh/aV;->b:Lh/cK;

    new-instance v0, Law/e;

    sget-object v1, Ls/B;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lh/aV;->c:Law/e;

    iget-object v0, p0, Lh/aV;->c:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Law/e;->h(II)V

    invoke-direct {p0, p2}, Lh/aV;->a(Lcom/google/googlenav/c;)I

    move-result v0

    iget-object v1, p0, Lh/aV;->c:Law/e;

    invoke-virtual {v1, v4, v0}, Law/e;->h(II)V

    iget-object v1, p0, Lh/aV;->c:Law/e;

    const/4 v2, 0x3

    invoke-direct {p0, p2}, Lh/aV;->b(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lh/aV;->c:Law/e;

    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lh/aV;->c:Law/e;

    const/4 v2, 0x5

    invoke-virtual {p2}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lh/aV;->c:Law/e;

    const/4 v2, 0x6

    invoke-virtual {p2}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lh/aV;->c:Law/e;

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    invoke-static {v2}, Lf/I;->c(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    iget-object v0, p1, Lh/eL;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->y()Lf/v;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/aV;->c:Law/e;

    const/16 v1, 0x8

    iget-object v2, p1, Lh/eL;->g:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->y()Lf/v;

    move-result-object v2

    invoke-virtual {v2}, Lf/v;->u()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/googlenav/c;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->F()B

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->F()B

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v1

    const/16 v2, 0x6e

    const/16 v3, 0x79

    invoke-static {v1, v2, v3}, Law/b;->d(Law/e;II)J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x3d6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lh/aV;->c:Law/e;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/B;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lh/aV;->d:Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lh/aV;->b:Lh/cK;

    invoke-interface {v0}, Lh/cK;->a()V

    iget-object v0, p0, Lh/aV;->d:Law/e;

    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/aV;->d:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/aV;->d:Law/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/aV;->b:Lh/cK;

    invoke-interface {v2, v0, v1}, Lh/cK;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4f

    const-string v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lh/aV;->c:Law/e;

    invoke-virtual {v3, v4}, Law/e;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/aV;->a:Lh/eL;

    iget-object v0, v0, Lh/eL;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    iget-object v1, p0, Lh/aV;->d:Law/e;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
