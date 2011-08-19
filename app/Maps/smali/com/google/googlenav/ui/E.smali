.class Lcom/google/googlenav/ui/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lx/Q;

.field final synthetic b:Lcom/google/googlenav/ui/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/l;Lx/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iput-object p2, p0, Lcom/google/googlenav/ui/E;->a:Lx/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lx/Q;

    check-cast v0, Lx/a;

    iget-object v0, v0, Lx/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iget-object v1, v1, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    const-string v2, "status"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iget-object v1, v1, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    iget-object v2, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iget-object v2, v2, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    const-string v3, "displayname"

    invoke-static {v2, v0, v3, v5}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iget-object v3, v3, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    const-string v4, "tokenid"

    invoke-static {v3, v0, v4, v5}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iget-object v0, v0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->f(Lcom/google/googlenav/ui/F;)Lcom/google/googlenav/ui/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/A;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/E;->b:Lcom/google/googlenav/ui/l;

    iget-object v0, v0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->b(Lcom/google/googlenav/ui/F;)V

    goto :goto_0
.end method
