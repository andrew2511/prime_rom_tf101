.class public Lcom/google/googlenav/ui/aB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aj;


# instance fields
.field private a:Lk/l;

.field private b:Lk/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->g()Lk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aB;->a:Lk/l;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->h()Lk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aB;->b:Lk/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aH;)Lk/l;
    .locals 1

    check-cast p1, Lcom/google/googlenav/ui/az;

    invoke-static {p1}, Lcom/google/googlenav/ui/az;->a(Lcom/google/googlenav/ui/az;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aB;->a:Lk/l;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/aB;->b:Lk/l;

    goto :goto_0
.end method
