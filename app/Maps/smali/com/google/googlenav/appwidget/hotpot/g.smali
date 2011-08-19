.class Lcom/google/googlenav/appwidget/hotpot/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Law/e;

.field final synthetic c:Lcom/google/googlenav/appwidget/hotpot/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/q;Ljava/util/List;Law/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/g;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/googlenav/appwidget/hotpot/g;->b:Law/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->c(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->i()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/q;->a:Lab/d;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lab/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/g;->b:Law/e;

    invoke-virtual {v1, v5}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/v;->c(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/g;->b:Law/e;

    invoke-virtual {v2, v5}, Law/e;->d(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/c;

    move v2, v3

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/D;->a(Law/e;B)Lcom/google/googlenav/c;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->a:Lab/d;

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lab/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->c(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v2, v2, Lcom/google/googlenav/appwidget/hotpot/q;->a:Lab/d;

    invoke-interface {v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lab/d;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a([Lcom/google/googlenav/c;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->c()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/g;->c:Lcom/google/googlenav/appwidget/hotpot/q;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/q;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    move v0, v4

    goto/16 :goto_0
.end method
