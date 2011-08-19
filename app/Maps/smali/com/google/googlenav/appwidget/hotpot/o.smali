.class Lcom/google/googlenav/appwidget/hotpot/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/o;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 3

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/e;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/appwidget/hotpot/e;-><init>(Lcom/google/googlenav/appwidget/hotpot/o;Lcom/google/googlenav/z;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/o;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method
