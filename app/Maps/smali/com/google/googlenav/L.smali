.class final Lcom/google/googlenav/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/G;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/googlenav/G;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/L;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/L;->b:Lcom/google/googlenav/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/L;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Q;

    iget-object v2, p0, Lcom/google/googlenav/L;->b:Lcom/google/googlenav/G;

    invoke-static {v2, v0}, Lcom/google/googlenav/aw;->b(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
