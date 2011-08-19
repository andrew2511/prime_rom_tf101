.class Ll/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll/x;


# direct methods
.method constructor <init>(Ll/x;)V
    .locals 0

    iput-object p1, p0, Ll/N;->a:Ll/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Ll/N;->a:Ll/x;

    invoke-static {v0}, Ll/x;->a(Ll/x;)Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {}, Ll/x;->c()J

    move-result-wide v2

    invoke-static {}, Ll/x;->d()J

    move-result-wide v4

    iget-object v6, p0, Ll/N;->a:Ll/x;

    invoke-static {v6}, Ll/x;->b(Ll/x;)Ll/c;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Ll/N;->a:Ll/x;

    iget-wide v6, v6, Ll/x;->a:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-gez v4, :cond_2

    :cond_0
    iget-object v0, p0, Ll/N;->a:Ll/x;

    invoke-static {v0}, Ll/x;->c(Ll/x;)V

    iget-object v0, p0, Ll/N;->a:Ll/x;

    sget-object v1, Ll/i;->e:Ll/i;

    invoke-virtual {v0, v1}, Ll/x;->a(Ll/i;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Ll/N;->a:Ll/x;

    invoke-static {v4}, Ll/x;->b(Ll/x;)Ll/c;

    move-result-object v4

    iget-wide v4, v4, Ll/c;->a:J

    sub-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Ll/N;->a:Ll/x;

    invoke-static {v0}, Ll/x;->d(Ll/x;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll/N;->a:Ll/x;

    invoke-static {v0}, Ll/x;->e(Ll/x;)LK/e;

    move-result-object v0

    iget-object v1, p0, Ll/N;->a:Ll/x;

    iget-object v1, v1, Ll/x;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2, v3}, LK/e;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ll/N;->a:Ll/x;

    invoke-static {v0}, Ll/x;->c(Ll/x;)V

    iget-object v0, p0, Ll/N;->a:Ll/x;

    sget-object v1, Ll/i;->e:Ll/i;

    invoke-virtual {v0, v1}, Ll/x;->a(Ll/i;)V

    goto :goto_0
.end method
