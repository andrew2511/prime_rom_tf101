.class Lcom/google/googlenav/ui/bN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf/h;

.field final synthetic b:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;Lf/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bN;->b:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Lcom/google/googlenav/ui/bN;->a:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bN;->b:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/ui/bN;->a:Lf/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->b(Lf/h;)V

    return-void
.end method
