.class Lcom/google/googlenav/appwidget/hotpot/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/c;

.field final synthetic d:I

.field final synthetic e:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;ILcom/google/googlenav/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/k;->e:Lcom/google/googlenav/appwidget/hotpot/v;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/k;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/appwidget/hotpot/k;->b:I

    iput-object p4, p0, Lcom/google/googlenav/appwidget/hotpot/k;->c:Lcom/google/googlenav/c;

    iput p5, p0, Lcom/google/googlenav/appwidget/hotpot/k;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/bl;)V
    .locals 3

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/t;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/appwidget/hotpot/t;-><init>(Lcom/google/googlenav/appwidget/hotpot/k;Lcom/google/googlenav/bl;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/s;

    invoke-direct {v2, p0}, Lcom/google/googlenav/appwidget/hotpot/s;-><init>(Lcom/google/googlenav/appwidget/hotpot/k;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method
