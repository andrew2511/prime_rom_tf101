.class Lcom/google/googlenav/appwidget/hotpot/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->c:Lcom/google/googlenav/c;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget v1, v1, Lcom/google/googlenav/appwidget/hotpot/k;->d:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->e(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v2, v2, Lcom/google/googlenav/appwidget/hotpot/k;->c:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(Ljava/lang/String;Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget v1, v1, Lcom/google/googlenav/appwidget/hotpot/k;->b:I

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget v2, v2, Lcom/google/googlenav/appwidget/hotpot/k;->d:I

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v3, v3, Lcom/google/googlenav/appwidget/hotpot/k;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/s;->a:Lcom/google/googlenav/appwidget/hotpot/k;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method
