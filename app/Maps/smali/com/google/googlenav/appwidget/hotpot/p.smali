.class Lcom/google/googlenav/appwidget/hotpot/p;
.super Ljava/lang/Object;

# interfaces
.implements Lab/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/p;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/p;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->c(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->d(Z)V

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/googlenav/az;->z()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
