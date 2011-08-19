.class public Li/M;
.super Li/q;

# interfaces
.implements LaA/d;
.implements Lo/cd;


# instance fields
.field private E:Z

.field private O:[Ljava/lang/String;

.field private P:Z

.field private Q:Lo/J;

.field private R:LaA/f;

.field private S:Z

.field private T:Z

.field private U:[Ljava/lang/String;

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Z

.field private Z:Law/e;

.field private a:Z

.field private final aa:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;Z[Ljava/lang/String;ZLaw/e;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/M;->aa:Ljava/lang/Object;

    iput-boolean p6, p0, Li/M;->T:Z

    iput-object p7, p0, Li/M;->U:[Ljava/lang/String;

    iput-boolean p8, p0, Li/M;->X:Z

    iput-object p9, p0, Li/M;->Z:Law/e;

    if-eqz p7, :cond_0

    array-length v0, p7

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Li/M;->V:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lf/h;
    .locals 5

    const v4, 0x49742400

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://maps.google.com/?q="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://maps.google.com/?q="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v2, Lf/h;

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v2, v1, v0}, Lf/h;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Li/M;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/googlenav/c;

    move v3, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/D;->a(Law/e;B)Lcom/google/googlenav/c;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/googlenav/c;->a([Lcom/google/googlenav/c;)V

    iget-boolean v0, p0, Li/M;->X:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v0, v4

    invoke-virtual {p0}, Li/M;->bB()Z

    move-result v2

    invoke-static {v1, v2}, Li/P;->b(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Li/M;->U:[Ljava/lang/String;

    iput-boolean v5, p0, Li/M;->V:Z

    :cond_1
    return-void
.end method

.method private bC()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iput-object v1, p0, Li/M;->R:LaA/f;

    iput-object v1, p0, Li/M;->Q:Lo/J;

    iput-boolean v4, p0, Li/M;->a:Z

    invoke-static {}, Lcom/google/googlenav/d;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Li/M;->E:Z

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    invoke-virtual {p0, p0, v1}, Li/M;->a(LaA/d;Lf/h;)LaA/f;

    move-result-object v1

    iput-object v1, p0, Li/M;->R:LaA/f;

    iget-boolean v1, p0, Li/M;->S:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/M;->R:LaA/f;

    sget v2, Lcom/google/googlenav/ui/aV;->bM:I

    sget v3, Lcom/google/googlenav/ui/aV;->bN:I

    invoke-virtual {v1, v2, v3}, LaA/f;->a(II)V

    :cond_0
    iput-boolean v5, p0, Li/M;->a:Z

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Li/M;->c(Lf/h;)Lo/J;

    move-result-object v1

    iput-object v1, p0, Li/M;->Q:Lo/J;

    iget-object v1, p0, Li/M;->R:LaA/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/M;->R:LaA/f;

    invoke-virtual {v1, v4}, LaA/f;->a(Z)V

    iget-object v1, p0, Li/M;->R:LaA/f;

    invoke-virtual {v1}, LaA/f;->p()V

    :cond_1
    iget-object v1, p0, Li/M;->Q:Lo/J;

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/M;->Q:Lo/J;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_2
    return-void
.end method

.method private bD()V
    .locals 2

    iget-object v0, p0, Li/M;->aa:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Li/M;->E:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Li/M;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v0

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/M;->aH()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Li/M;->aN()Z

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Li/M;->aG()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Li/M;->F:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Li/M;->bI()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Li/M;->ab()V

    invoke-virtual {p0}, Li/M;->M()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private bE()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const v2, 0x49742400

    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private bv()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v2}, Li/M;->b(B)V

    iput-object v0, p0, Li/M;->O:[Ljava/lang/String;

    iput-boolean v1, p0, Li/M;->P:Z

    iput-object v0, p0, Li/M;->Q:Lo/J;

    iput-object v0, p0, Li/M;->R:LaA/f;

    iget-boolean v0, p0, Li/M;->V:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Li/M;->S:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private bw()V
    .locals 1

    iget-object v0, p0, Li/M;->Q:Lo/J;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/M;->bo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/M;->bC()V

    :cond_0
    invoke-virtual {p0}, Li/M;->G()V

    return-void
.end method


# virtual methods
.method protected P()Z
    .locals 1

    iget-boolean v0, p0, Li/M;->a:Z

    return v0
.end method

.method protected S()Z
    .locals 1

    iget-boolean v0, p0, Li/M;->V:Z

    return v0
.end method

.method protected U()Lk/l;
    .locals 1

    iget-object v0, p0, Li/M;->R:LaA/f;

    invoke-virtual {v0}, LaA/f;->n()Lk/l;

    move-result-object v0

    return-object v0
.end method

.method protected V()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/M;->S:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/M;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li/M;->R:LaA/f;

    invoke-virtual {v0}, LaA/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected Y_()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(LaA/d;Lf/h;)LaA/f;
    .locals 1

    new-instance v0, LaA/f;

    invoke-direct {v0, p1, p2}, LaA/f;-><init>(LaA/d;Lf/h;)V

    return-object v0
.end method

.method public a(J)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Li/M;->Q:Lo/J;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/M;->a:Z

    iput-object v1, p0, Li/M;->O:[Ljava/lang/String;

    invoke-direct {p0}, Li/M;->bD()V

    return-void
.end method

.method public a(LaA/f;)V
    .locals 1

    invoke-virtual {p0}, Li/M;->aY()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Li/M;->R:LaA/f;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/M;->E:Z

    invoke-virtual {p1}, LaA/f;->l()Z

    move-result v0

    iput-boolean v0, p0, Li/M;->P:Z

    invoke-direct {p0}, Li/M;->bD()V

    goto :goto_0
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Li/M;->aY()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/M;->Q:Lo/J;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Li/M;->a:Z

    if-eqz p1, :cond_3

    invoke-static {p1, v3}, Lcom/google/googlenav/ui/D;->a(Law/e;B)Lcom/google/googlenav/c;

    move-result-object v0

    iget-object v1, p0, Li/M;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    new-instance v2, Lcom/google/googlenav/bM;

    invoke-direct {v2, v0}, Lcom/google/googlenav/bM;-><init>(Lcom/google/googlenav/c;)V

    iput-object v2, p0, Li/M;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0, v1}, Li/M;->b(B)V

    invoke-virtual {p0}, Li/M;->aA()V

    invoke-virtual {v0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v0, v5, [Ljava/lang/String;

    const/16 v1, 0x43f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Li/M;->O:[Ljava/lang/String;

    :goto_2
    const/16 v0, 0xa

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/M;->W:Ljava/lang/String;

    invoke-direct {p0, p2}, Li/M;->a(Ljava/util/List;)V

    invoke-direct {p0}, Li/M;->bD()V

    goto :goto_0

    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    iput-object v2, p0, Li/M;->O:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 1

    iput-object p1, p0, Li/M;->k:Lcom/google/googlenav/j;

    invoke-direct {p0}, Li/M;->bv()V

    invoke-virtual {p0}, Li/M;->bo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Li/M;->bC()V

    :cond_0
    invoke-virtual {p0}, Li/M;->aj()V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Vector;Lf/h;I)V
    .locals 0

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    move v0, v6

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eqz v0, :cond_0

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "a=s"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const-string v3, "c"

    invoke-static {v2, v3, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0

    :sswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v5}, Li/M;->b(ILjava/lang/Object;)V

    iget-boolean v0, p0, Li/M;->X:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v0

    invoke-static {v0}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v0

    iget-object v1, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/M;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->p()Law/e;

    move-result-object v2

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/googlenav/ui/aT;->a(Lu/h;Lu/h;Law/e;)V

    move v0, v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0x18

    iget-object v3, p0, Li/M;->k:Lcom/google/googlenav/j;

    invoke-direct {v1, v2, v3}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v0

    invoke-static {v0}, Lu/h;->a(Lf/h;)Lu/h;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/M;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->p()Law/e;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/google/googlenav/ui/aT;->a(Lu/h;Lu/h;Law/e;)V

    move v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v1, v2}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/h;->a(Lf/h;Ljava/lang/String;)Lu/h;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x25f

    if-ne p1, v0, :cond_4

    move v0, v9

    :goto_2
    const/16 v1, 0x45

    const-string v2, "n"

    const-string v3, "c"

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Li/M;->T()V

    iget-object v1, p0, Li/M;->O:[Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    invoke-static {v1}, Lu/h;->a(Lf/h;)Lu/h;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    const-string v3, "c"

    invoke-virtual {v2, v1, v0, v5, v3}, Lcom/google/googlenav/ui/aT;->a(Lu/h;I[Law/e;Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x260

    if-ne p1, v0, :cond_a

    move v0, v8

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v2, v3}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lu/h;->a(Lf/h;Ljava/lang/String;Ljava/lang/String;)Lu/h;

    move-result-object v1

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0}, Li/M;->T()V

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->c(Lf/h;)V

    invoke-static {}, LaA/b;->a()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Li/M;->T()V

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    const-string v1, "9"

    invoke-virtual {p0}, Li/M;->ac()Lcom/google/googlenav/bf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2, v8}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v8

    goto/16 :goto_0

    :sswitch_4
    const v0, 0x1869f

    iget-object v1, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v2

    iget-object v3, p0, Li/M;->O:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/aT;->a(Lf/h;I[Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v0, v1}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v2

    invoke-virtual {p0}, Li/M;->bu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/aT;->b(Lf/h;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    iget-boolean v3, p0, Li/M;->X:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x3d7

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v4, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v7, v0}, Lh/eY;->a(Lcom/google/googlenav/bf;)V

    move v0, v8

    goto/16 :goto_0

    :cond_6
    move-object v2, v5

    goto :goto_5

    :sswitch_7
    new-instance v1, Lv/d;

    iget-object v2, p0, Li/M;->W:Ljava/lang/String;

    invoke-direct {p0}, Li/M;->bE()Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lv/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;Z)V

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv/d;->a(Lf/h;)V

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    iget-object v2, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v2

    const-string v3, "p"

    invoke-interface {v0, v1, v5, v2, v3}, Lv/t;->a(Lv/d;Lv/v;Li/aE;Ljava/lang/String;)Lv/d;

    invoke-virtual {p0}, Li/M;->bI()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_8
    move v0, v6

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/M;->p()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v2, v2, v6

    :goto_6
    iget-object v3, p0, Li/M;->O:[Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v3, v3, v8

    :goto_7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aT;->a(Lf/h;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    :cond_7
    const-string v2, ""

    goto :goto_6

    :cond_8
    const-string v3, ""

    goto :goto_7

    :cond_9
    move-object v0, v5

    goto/16 :goto_4

    :cond_a
    move v0, v6

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0xf -> :sswitch_8
        0x14 -> :sswitch_9
        0x19c -> :sswitch_4
        0x258 -> :sswitch_2
        0x25a -> :sswitch_3
        0x25b -> :sswitch_0
        0x25c -> :sswitch_1
        0x25f -> :sswitch_1
        0x260 -> :sswitch_1
        0x578 -> :sswitch_7
        0x5dc -> :sswitch_5
    .end sparse-switch
.end method

.method protected a(Lax/c;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/M;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/M;->aI()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li/M;->aH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/M;->bw()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public a(Lf/N;)Z
    .locals 1

    iget-boolean v0, p0, Li/M;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Li/q;->a(Lf/N;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lx/Q;)Z
    .locals 1

    iget-object v0, p0, Li/M;->l:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/M;->l:Lx/S;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Li/M;->bw()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Li/q;->a(Lx/Q;)Z

    move-result v0

    goto :goto_0
.end method

.method public aC()V
    .locals 1

    iget-boolean v0, p0, Li/M;->T:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Li/q;->aC()V

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    :cond_0
    return-void
.end method

.method public af_()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/M;->O:[Ljava/lang/String;

    return-object v0
.end method

.method public ag_()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/M;->U:[Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Li/M;->X:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->al()[Lk/l;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lk/l;->e()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 0

    return-void
.end method

.method public b(Lf/N;)Z
    .locals 1

    iget-boolean v0, p0, Li/M;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Li/q;->b(Lf/N;)Z

    move-result v0

    goto :goto_0
.end method

.method public bo()Z
    .locals 1

    iget-boolean v0, p0, Li/M;->X:Z

    return v0
.end method

.method public bp()Z
    .locals 1

    iget-boolean v0, p0, Li/M;->X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/M;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bq()Z
    .locals 1

    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->B()Z

    move-result v0

    return v0
.end method

.method protected br()Z
    .locals 1

    iget-object v0, p0, Li/M;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bt()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/M;->br()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/M;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    iget-object v1, p0, Li/M;->W:Ljava/lang/String;

    invoke-interface {v0, v1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lv/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method bu()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Li/M;->W:Ljava/lang/String;

    invoke-static {v0}, Li/M;->a(Ljava/lang/String;)Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/M;->O:[Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Li/M;->W:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    const-string v3, "+"

    invoke-static {v2, v3, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    :goto_1
    iget-object v2, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Li/M;->O:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    const-string v4, "+"

    invoke-static {v3, v4, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "http://maps.google.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "maps?f=q&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const-string v1, "+"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "@"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&sll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Li/M;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&sspn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Li/M;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->a()I

    move-result v1

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Li/M;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->b()I

    move-result v1

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v2, v5

    goto :goto_2

    :cond_6
    move-object v1, v5

    goto/16 :goto_1
.end method

.method protected c(Lf/h;)Lo/J;
    .locals 2

    new-instance v0, Lo/bV;

    invoke-direct {v0}, Lo/bV;-><init>()V

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/bV;->a(I)Lo/bV;

    move-result-object v0

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/bV;->b(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bV;->g(I)Lo/bV;

    move-result-object v0

    iget-object v1, p0, Li/M;->Z:Law/e;

    invoke-virtual {v0, v1}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->a()Lo/J;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/googlenav/c;)Z
    .locals 1

    iget-boolean v0, p0, Li/M;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Li/M;->P:Z

    goto :goto_0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Li/M;->Y:Z

    return-void
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/i;

    invoke-direct {v0, p0}, LN/i;-><init>(Li/x;)V

    return-object v0
.end method

.method public p()Lf/h;
    .locals 1

    iget-object v0, p0, Li/M;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method protected r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
