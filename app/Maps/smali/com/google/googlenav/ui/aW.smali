.class public Lcom/google/googlenav/ui/aW;
.super Ljava/lang/Object;

# interfaces
.implements Lf/O;


# instance fields
.field private a:Lf/v;


# direct methods
.method public constructor <init>(Lf/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/aW;->a:Lf/v;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->a:Lf/v;

    if-eqz v0, :cond_0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->a:Lf/v;

    invoke-virtual {v0}, Lf/v;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/av;->bQ:Lcom/google/googlenav/ui/av;

    :goto_0
    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lx/h;->a(Lcom/google/googlenav/ui/aI;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/av;->bP:Lcom/google/googlenav/ui/av;

    goto :goto_0
.end method
