.class Lh/cC;
.super Ljava/lang/Object;

# interfaces
.implements Laq/b;


# instance fields
.field private final a:Lcom/google/googlenav/bL;

.field private final b:Li/aE;

.field private final c:Lcom/google/googlenav/c;

.field private final d:Lh/bi;

.field private final e:Lh/ev;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bL;Li/aE;Lcom/google/googlenav/c;Lh/ev;Lh/bi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/cC;->a:Lcom/google/googlenav/bL;

    iput-object p2, p0, Lh/cC;->b:Li/aE;

    iput-object p3, p0, Lh/cC;->c:Lcom/google/googlenav/c;

    iput-object p5, p0, Lh/cC;->d:Lh/bi;

    iput-object p4, p0, Lh/cC;->e:Lh/ev;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/cC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    iget-object v0, p0, Lh/cC;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x2f4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lh/cC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    iget-object v0, p0, Lh/cC;->e:Lh/ev;

    invoke-static {v0}, Lh/ev;->a(Lh/ev;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lh/cC;->c:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bq()V

    invoke-static {}, Lcom/google/googlenav/bJ;->a()Lcom/google/googlenav/bJ;

    move-result-object v0

    iget-object v1, p0, Lh/cC;->c:Lcom/google/googlenav/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/c;Z)V

    iget-object v0, p0, Lh/cC;->b:Li/aE;

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/x;->f(Z)V

    iget-object v0, p0, Lh/cC;->d:Lh/bi;

    invoke-virtual {v0}, Lh/bi;->c()V

    iget-object v0, p0, Lh/cC;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x2f5

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/cC;->d:Lh/bi;

    invoke-virtual {v0}, Lh/bi;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/cC;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x2f4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
