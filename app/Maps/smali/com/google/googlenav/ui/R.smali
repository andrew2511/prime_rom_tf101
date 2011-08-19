.class Lcom/google/googlenav/ui/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ac;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/R;->a:Lcom/google/googlenav/ui/ac;

    iget-object v0, v0, Lcom/google/googlenav/ui/ac;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->e(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method
