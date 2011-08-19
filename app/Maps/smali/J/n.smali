.class LJ/n;
.super LT/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LJ/l;


# direct methods
.method constructor <init>(LJ/l;LT/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LJ/n;->b:LJ/l;

    iput-object p3, p0, LJ/n;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LJ/n;->b:LJ/l;

    iget-object v2, p0, LJ/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, LJ/l;->b(Ljava/lang/String;)LJ/a;

    move-result-object v1

    iget-object v2, p0, LJ/n;->b:LJ/l;

    invoke-static {v2}, LJ/l;->a(LJ/l;)I

    const/4 v0, 0x1

    iget-object v2, p0, LJ/n;->b:LJ/l;

    invoke-static {v2}, LJ/l;->b(LJ/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LJ/n;->a:Ljava/lang/String;

    invoke-static {v2, v3}, LR/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LJ/n;->b:LJ/l;

    invoke-virtual {v2, v1}, LJ/l;->a(LJ/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    const-string v2, "BaseQueryInSeparateThreadProvider"

    invoke-static {v2, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v1, :cond_0

    iget-object v0, p0, LJ/n;->b:LJ/l;

    invoke-static {v0}, LJ/l;->a(LJ/l;)I

    goto :goto_0
.end method
