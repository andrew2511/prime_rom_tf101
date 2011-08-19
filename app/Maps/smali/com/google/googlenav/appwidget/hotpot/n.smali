.class Lcom/google/googlenav/appwidget/hotpot/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/n;->d:Lcom/google/googlenav/appwidget/hotpot/v;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/n;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/appwidget/hotpot/n;->b:I

    iput p4, p0, Lcom/google/googlenav/appwidget/hotpot/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/n;->d:Lcom/google/googlenav/appwidget/hotpot/v;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/n;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/appwidget/hotpot/n;->b:I

    invoke-static {v0, p2, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;Law/e;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/n;->d:Lcom/google/googlenav/appwidget/hotpot/v;

    iget v1, p0, Lcom/google/googlenav/appwidget/hotpot/n;->b:I

    iget v2, p0, Lcom/google/googlenav/appwidget/hotpot/n;->c:I

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/n;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/n;->d:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    goto :goto_0
.end method
