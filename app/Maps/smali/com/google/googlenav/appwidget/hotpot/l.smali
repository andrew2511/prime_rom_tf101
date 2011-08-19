.class Lcom/google/googlenav/appwidget/hotpot/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/l;->b:Lcom/google/googlenav/appwidget/hotpot/v;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 3

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/x;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/appwidget/hotpot/x;-><init>(Lcom/google/googlenav/appwidget/hotpot/l;Law/e;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method
