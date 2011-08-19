.class Lcom/google/googlenav/appwidget/hotpot/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/appwidget/hotpot/w;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/m;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/m;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method

.method public a(Law/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/m;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/m;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method
