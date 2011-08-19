.class Lc/i;
.super LT/d;


# instance fields
.field final synthetic a:Lc/e;

.field final synthetic b:LaU/a;

.field final synthetic c:Lc/k;


# direct methods
.method constructor <init>(Lc/k;LT/c;Lc/e;LaU/a;)V
    .locals 0

    iput-object p1, p0, Lc/i;->c:Lc/k;

    iput-object p3, p0, Lc/i;->a:Lc/e;

    iput-object p4, p0, Lc/i;->b:LaU/a;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "SAVED_BGSF_"

    invoke-static {v0, v1}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Lo/i;->a(Ljava/io/DataInput;)Lo/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lc/i;->c:Lc/k;

    iget-object v1, p0, Lc/i;->a:Lc/e;

    iget-object v2, p0, Lc/i;->b:LaU/a;

    invoke-static {v0, v1, v2}, Lc/k;->a(Lc/k;Lc/e;LaU/a;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v3, "-Error loading suggested friends"

    invoke-static {v0, v1, v3}, Lc/k;->a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lc/i;->c:Lc/k;

    invoke-static {v1, v0}, Lc/k;->a(Lc/k;Lo/i;)Lo/i;

    iget-object v1, p0, Lc/i;->c:Lc/k;

    iget-object v2, p0, Lc/i;->a:Lc/e;

    iget-object v3, p0, Lc/i;->b:LaU/a;

    invoke-static {v1, v0, v2, v3}, Lc/k;->a(Lc/k;Lo/i;Lc/e;LaU/a;)V

    goto :goto_1
.end method
