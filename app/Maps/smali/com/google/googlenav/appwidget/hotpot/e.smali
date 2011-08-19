.class Lcom/google/googlenav/appwidget/hotpot/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/z;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/o;Lcom/google/googlenav/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/e;->b:Lcom/google/googlenav/appwidget/hotpot/o;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/e;->a:Lcom/google/googlenav/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/e;->a:Lcom/google/googlenav/z;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->av()[Lcom/google/googlenav/c;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    array-length v2, v0

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/google/googlenav/c;->M()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/e;->b:Lcom/google/googlenav/appwidget/hotpot/o;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/o;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-result-object v2

    new-array v0, v6, [Lcom/google/googlenav/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/c;

    invoke-interface {v2, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a([Lcom/google/googlenav/c;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/e;->b:Lcom/google/googlenav/appwidget/hotpot/o;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/o;->a:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    return-void
.end method
