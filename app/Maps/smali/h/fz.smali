.class Lh/fz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/i;


# instance fields
.field private final a:Lcom/google/googlenav/c;

.field private final b:Lcom/google/googlenav/bL;

.field private final c:Li/aE;

.field private final d:Lh/bi;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Lcom/google/googlenav/bL;Li/aE;Lh/bi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    iput-object p2, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    iput-object p3, p0, Lh/fz;->c:Li/aE;

    iput-object p4, p0, Lh/fz;->d:Lh/bi;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/fz;->d:Lh/bi;

    invoke-virtual {v0}, Lh/bi;->b()V

    return-void
.end method

.method public a(Lcom/google/googlenav/bl;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bs()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_0
    iget-object v1, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    iget-object v2, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->bk()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/c;->f(I)V

    invoke-static {}, Lcom/google/googlenav/bJ;->a()Lcom/google/googlenav/bJ;

    move-result-object v1

    iget-object v2, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/c;Z)V

    iget-object v1, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    invoke-interface {v1}, Lcom/google/googlenav/bL;->q()Li/av;

    move-result-object v1

    invoke-virtual {v1}, Li/av;->V()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->i()Lv/j;

    move-result-object v2

    iget-object v3, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v3}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lv/j;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v3}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lv/t;->b(Ljava/lang/String;Law/e;)Z

    :cond_0
    iget-object v1, p0, Lh/fz;->c:Li/aE;

    invoke-virtual {v1}, Li/aE;->I()Li/x;

    move-result-object v1

    invoke-virtual {v1, v4}, Li/x;->f(Z)V

    iget-object v1, p0, Lh/fz;->d:Lh/bi;

    invoke-virtual {v1}, Lh/bi;->c()V

    if-eqz v0, :cond_3

    const/16 v0, 0x30d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->O()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lh/fz;->d:Lh/bi;

    invoke-virtual {v0, p1}, Lh/bi;->a(Lcom/google/googlenav/bl;)V

    :goto_2
    iget-object v0, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fz;->d:Lh/bi;

    iget-object v1, p0, Lh/fz;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v4}, Lh/bi;->a(Lcom/google/googlenav/c;Z)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x31e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    invoke-interface {v1}, Lcom/google/googlenav/bL;->C()V

    iget-object v1, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    iget-object v0, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x30c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    iget-object v0, p0, Lh/fz;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x30c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
