.class Lcom/google/googlenav/appwidget/hotpot/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bl;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/k;Lcom/google/googlenav/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/t;->a:Lcom/google/googlenav/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/t;->a:Lcom/google/googlenav/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget v2, v2, Lcom/google/googlenav/appwidget/hotpot/k;->b:I

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v2, v2, Lcom/google/googlenav/appwidget/hotpot/k;->c:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(Ljava/lang/String;Law/e;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/t;->b:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method
