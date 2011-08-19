.class Li/aZ;
.super Ljava/lang/Object;

# interfaces
.implements Li/o;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/c;

.field final synthetic c:Li/bq;

.field private d:Ljava/util/Vector;

.field private e:I


# direct methods
.method constructor <init>(Li/bq;Ljava/util/Vector;ILjava/lang/String;Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Li/aZ;->c:Li/bq;

    iput-object p4, p0, Li/aZ;->a:Ljava/lang/String;

    iput-object p5, p0, Li/aZ;->b:Lcom/google/googlenav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/aZ;->d:Ljava/util/Vector;

    iput p3, p0, Li/aZ;->e:I

    return-void
.end method

.method static synthetic a(Li/aZ;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Li/aZ;->d:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lo/aH;

    invoke-direct {v1, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v1}, Lo/aH;->b()I

    move-result v2

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Lo/aH;->a(I)Lo/U;

    move-result-object v4

    invoke-virtual {v4}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v5

    iget-object v6, p0, Li/aZ;->a:Ljava/lang/String;

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/googlenav/bG;->o()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Li/aZ;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4}, Lo/U;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Li/aZ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v4, v5}, Lcom/google/googlenav/c;->e(Z)V

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v5, v9

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_1

    const/16 v5, 0x86

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Li/ba;

    invoke-virtual {v4}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Lo/U;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v8, v4, v5}, Li/ba;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Li/aZ;->d:Ljava/util/Vector;

    iget v2, p0, Li/aZ;->e:I

    iget-object v3, p0, Li/aZ;->c:Li/bq;

    invoke-static {v3}, Li/bq;->b(Li/bq;)Li/bl;

    move-result-object v3

    invoke-virtual {v3}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v3

    iget-object v4, p0, Li/aZ;->b:Lcom/google/googlenav/c;

    invoke-static {v1, v2, v3, v4}, Li/P;->a(Ljava/util/Vector;ILx/U;Lcom/google/googlenav/c;)I

    move-result v1

    iget v2, p0, Li/aZ;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Li/aZ;->e:I

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Li/aZ;->d:Ljava/util/Vector;

    iget v2, p0, Li/aZ;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Li/aZ;->e:I

    iget-object v3, p0, Li/aZ;->c:Li/bq;

    invoke-static {v3}, Li/bq;->b(Li/bq;)Li/bl;

    move-result-object v3

    invoke-virtual {v3}, Li/bl;->r_()Lc/p;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Li/P;->a(Ljava/util/Vector;ILjava/util/Vector;Lc/p;)V

    :cond_5
    iget-object v0, p0, Li/aZ;->c:Li/bq;

    iget-object v0, v0, Li/bq;->a:Li/x;

    iget-object v0, v0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Li/N;

    invoke-direct {v1, p0}, Li/N;-><init>(Li/aZ;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
