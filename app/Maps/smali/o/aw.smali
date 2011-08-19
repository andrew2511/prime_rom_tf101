.class final Lo/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lo/by;->b()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/by;->b()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->D()Li/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/C;->aF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/C;->Z_()V

    :cond_0
    return-void
.end method
