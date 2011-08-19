.class Lcom/google/googlenav/ui/bC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bC;->b:Lcom/google/googlenav/ui/aT;

    iput p2, p0, Lcom/google/googlenav/ui/bC;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bC;->b:Lcom/google/googlenav/ui/aT;

    iget v1, p0, Lcom/google/googlenav/ui/bC;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->c(I)V

    return-void
.end method
