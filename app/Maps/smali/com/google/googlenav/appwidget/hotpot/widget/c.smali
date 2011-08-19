.class final Lcom/google/googlenav/appwidget/hotpot/widget/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/widget/g;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/widget/c;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/widget/c;->b:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/widget/c;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->d()Lcom/google/googlenav/appwidget/hotpot/widget/e;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->b:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/widget/c;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->d:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/widget/c;->b:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    :cond_0
    return-void
.end method
