.class Lcom/google/googlenav/appwidget/hotpot/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Law/e;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/l;Law/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/x;->b:Lcom/google/googlenav/appwidget/hotpot/l;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/x;->a:Law/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/x;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/x;->b:Lcom/google/googlenav/appwidget/hotpot/l;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/l;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/x;->b:Lcom/google/googlenav/appwidget/hotpot/l;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/x;->a:Law/e;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(Ljava/lang/String;Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/x;->a:Law/e;

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/x;->b:Lcom/google/googlenav/appwidget/hotpot/l;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/l;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/x;->b:Lcom/google/googlenav/appwidget/hotpot/l;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/l;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method
