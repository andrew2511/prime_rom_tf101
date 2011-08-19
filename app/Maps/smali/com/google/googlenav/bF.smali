.class public Lcom/google/googlenav/bF;
.super Lcom/google/googlenav/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/Vector;

.field private u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private w:I


# direct methods
.method private constructor <init>(Law/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/c;-><init>(Law/e;)V

    iput-boolean v2, p0, Lcom/google/googlenav/bF;->i:Z

    const-string v0, "%7C"

    iput-object v0, p0, Lcom/google/googlenav/bF;->v:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/bF;->w:I

    iput-object p2, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/bF;->d:I

    iput v1, p0, Lcom/google/googlenav/bF;->e:I

    iput v1, p0, Lcom/google/googlenav/bF;->f:I

    iput v2, p0, Lcom/google/googlenav/bF;->g:I

    iput v2, p0, Lcom/google/googlenav/bF;->h:I

    iput-boolean v2, p0, Lcom/google/googlenav/bF;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/bF;->j:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/bF;->l:J

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/layer/c;Lcom/google/googlenav/layer/n;)V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/layer/n;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msid:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;ILjava/util/List;)V

    iput-boolean v4, p0, Lcom/google/googlenav/bF;->i:Z

    const-string v0, "%7C"

    iput-object v0, p0, Lcom/google/googlenav/bF;->v:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/bF;->w:I

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/googlenav/layer/n;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bF;->d:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/n;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bF;->e:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/n;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bF;->f:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/n;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bF;->g:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/n;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bF;->h:I

    iput-boolean v5, p0, Lcom/google/googlenav/bF;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/bF;->j:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/bF;->l:J

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bF;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/c;->e()Law/e;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/bF;->n:Ljava/lang/String;

    invoke-static {v1, v6}, Law/b;->f(Law/e;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/bF;->o:J

    :cond_0
    const/4 v1, 0x5

    invoke-static {v0, v1}, Law/b;->f(Law/e;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/bF;->p:J

    const/4 v1, 0x6

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/bF;->q:I

    invoke-static {v0, v7}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/bF;->r:Ljava/lang/String;

    invoke-static {v0, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/bF;->m:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/bF;->s:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v8}, Law/e;->i(I)I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    invoke-virtual {v0, v8, v2}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v7

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p3, p4}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/googlenav/bF;->i:Z

    const-string v0, "%7C"

    iput-object v0, p0, Lcom/google/googlenav/bF;->v:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/bF;->w:I

    iput-object p1, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/bF;->d:I

    iput v1, p0, Lcom/google/googlenav/bF;->e:I

    iput v1, p0, Lcom/google/googlenav/bF;->f:I

    iput v2, p0, Lcom/google/googlenav/bF;->g:I

    iput v2, p0, Lcom/google/googlenav/bF;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bF;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/bF;->j:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/bF;->l:J

    return-void
.end method

.method public static a(Law/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/bF;
    .locals 1

    new-instance v0, Lcom/google/googlenav/bF;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/bF;-><init>(Law/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/googlenav/bF;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/bF;->j:J

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    return-void
.end method

.method public ao()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    return-object v0
.end method

.method public ap()LA/c;
    .locals 3

    const/16 v0, 0x35

    iget-object v1, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/bF;->m:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/bF;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/googlenav/bF;->n:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/googlenav/bF;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/bF;->r:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/bF;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/googlenav/bF;->s:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/bF;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/bF;->u:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/googlenav/bF;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/bF;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/googlenav/bF;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_9
    move v0, v2

    :cond_a
    new-instance v1, LA/c;

    const-string v2, "LayerPlacemark"

    invoke-direct {v1, v2, v0}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/google/googlenav/c;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v1, v0}, LA/c;->a(LA/c;)LA/c;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/bF;->l:J

    return-void
.end method

.method public bI()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    const-string v1, "LatitudePublicUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->u:Ljava/lang/String;

    return-object v0
.end method

.method public bN()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->d:I

    return v0
.end method

.method public bO()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->e:I

    return v0
.end method

.method public bP()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->f:I

    return v0
.end method

.method public bQ()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->g:I

    return v0
.end method

.method public bR()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->h:I

    return v0
.end method

.method public bS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/bF;->i:Z

    return v0
.end method

.method public bT()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/bF;->j:J

    return-wide v0
.end method

.method public bU()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/bF;->l:J

    return-wide v0
.end method

.method public bV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->n:Ljava/lang/String;

    return-object v0
.end method

.method public bW()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/bF;->o:J

    return-wide v0
.end method

.method public bX()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/bF;->p:J

    return-wide v0
.end method

.method public bY()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->q:I

    return v0
.end method

.method public bZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->r:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/bF;->o:J

    return-void
.end method

.method public ca()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->m:Ljava/lang/String;

    return-object v0
.end method

.method public cb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->s:Ljava/lang/String;

    return-object v0
.end method

.method public cc()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bF;->t:Ljava/util/Vector;

    return-object v0
.end method

.method public cd()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bF;->w:I

    return v0
.end method

.method public ce()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "smclk=1"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssmbrand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/bF;->p:J

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/bF;->i:Z

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->d:I

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->e:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->f:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->g:I

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->h:I

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->q:I

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/bF;->w:I

    return-void
.end method

.method public o(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "smimp=1"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%7CS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->c:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->u:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->k:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->m:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->n:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->r:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bF;->s:Ljava/lang/String;

    return-void
.end method
