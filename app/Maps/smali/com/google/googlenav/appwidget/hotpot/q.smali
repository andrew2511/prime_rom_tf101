.class Lcom/google/googlenav/appwidget/hotpot/q;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cd;


# instance fields
.field final synthetic a:Lab/d;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;Lab/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/q;->a:Lab/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->c(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->d(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 3

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/g;

    invoke-direct {v2, p0, p2, p3}, Lcom/google/googlenav/appwidget/hotpot/g;-><init>(Lcom/google/googlenav/appwidget/hotpot/q;Ljava/util/List;Law/e;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method
