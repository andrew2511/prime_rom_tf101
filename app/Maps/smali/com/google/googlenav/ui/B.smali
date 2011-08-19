.class public Lcom/google/googlenav/ui/B;
.super Lcom/google/googlenav/ui/bU;


# static fields
.field private static final h:Ljava/lang/Character;

.field private static final i:Ljava/lang/Character;

.field private static final j:Ljava/lang/Character;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/googlenav/ui/B;->h:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/googlenav/ui/B;->i:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/googlenav/ui/B;->j:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bU;-><init>()V

    iput-boolean p2, p0, Lcom/google/googlenav/ui/B;->c:Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->F:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/w;->G:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/googlenav/ui/w;->H:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/w;->I:Lax/e;

    sget-object v1, Lcom/google/googlenav/ui/B;->h:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/B;->a(Lax/e;Ljava/lang/Character;)V

    :cond_4
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->M()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/w;->Q:Lax/e;

    sget-object v1, Lcom/google/googlenav/ui/B;->j:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/B;->a(Lax/e;Ljava/lang/Character;)V

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ap:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->aq:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->S:Lax/e;

    sget-object v1, Lcom/google/googlenav/ui/B;->i:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/B;->a(Lax/e;Ljava/lang/Character;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->U:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/googlenav/ui/w;->ae:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/googlenav/ui/w;->V:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    :cond_6
    invoke-static {}, Lcom/google/googlenav/d;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/googlenav/ui/w;->Z:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/w;->aa:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    sget-object v0, Lcom/google/googlenav/ui/w;->au:Lax/e;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/B;->b(Lax/e;)V

    return-void
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->g:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->H:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->G:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->Q:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/B;->a(Lax/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/googlenav/ui/w;->S:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->U:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->V:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->Z:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->aa:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->ap:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/w;->aq:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    sget-object v1, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/B;->a(Lax/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->b:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method

.method protected a(Lax/e;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/ui/B;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->au:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/w;->au:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/B;->e()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/w;->O:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->c:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/w;->P:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->c:Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/googlenav/ui/w;->M:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->a:Z

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/google/googlenav/ui/w;->N:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->a:Z

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->d:Z

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->d:Z

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/google/googlenav/ui/w;->ae:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->e:Z

    if-nez v0, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/google/googlenav/ui/w;->af:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->e:Z

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/google/googlenav/ui/w;->V:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->e:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->t()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/google/googlenav/ui/w;->L:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->f:Z

    if-eqz v0, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/google/googlenav/ui/w;->ac:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lr/f;->a:Lr/f;

    invoke-virtual {v0}, Lr/f;->f()Z

    move-result v0

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->a:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->a:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->c:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->c:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->d:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->e:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->e:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->f:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->f:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method

.method public g(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/B;->g:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/B;->g:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/B;->b()V

    goto :goto_0
.end method
