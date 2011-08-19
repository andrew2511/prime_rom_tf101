.class Lcom/google/googlenav/ui/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lak/d;

.field final synthetic b:Lcom/google/googlenav/ui/aK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aK;Lak/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/V;->b:Lcom/google/googlenav/ui/aK;

    iput-object p2, p0, Lcom/google/googlenav/ui/V;->a:Lak/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/V;->b:Lcom/google/googlenav/ui/aK;

    iget-object v0, v0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/ui/V;->a:Lak/d;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->b(Lak/d;)V

    return-void
.end method
