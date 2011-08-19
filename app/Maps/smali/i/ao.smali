.class Li/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e;


# instance fields
.field final synthetic a:Li/C;


# direct methods
.method constructor <init>(Li/C;)V
    .locals 0

    iput-object p1, p0, Li/ao;->a:Li/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/i;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Li/ao;->a:Li/C;

    invoke-static {v0}, Li/C;->c(Li/C;)Lo/aH;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/i;->a(Lo/aH;)V

    invoke-virtual {p1}, Lo/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/ao;->a:Li/C;

    invoke-static {v0}, Li/C;->e(Li/C;)Lc/k;

    move-result-object v0

    iget-object v1, p0, Li/ao;->a:Li/C;

    invoke-static {v1}, Li/C;->d(Li/C;)LaU/a;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lc/k;->a(LaU/a;Lc/e;)V

    :goto_0
    iget-object v0, p0, Li/ao;->a:Li/C;

    invoke-virtual {v0}, Li/C;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/ao;->a:Li/C;

    invoke-virtual {v0}, Li/C;->Z_()V

    :cond_0
    iget-object v0, p0, Li/ao;->a:Li/C;

    invoke-static {v0}, Li/C;->g(Li/C;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->d()V

    return-void

    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lo/i;->b()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lo/i;->a(I)Lo/o;

    move-result-object v3

    new-instance v4, LaD/j;

    invoke-virtual {v3}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v5, v3}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Li/ao;->a:Li/C;

    invoke-static {v1}, Li/C;->f(Li/C;)LaD/r;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    goto :goto_0
.end method
