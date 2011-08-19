.class public Lcom/google/googlenav/ui/aG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aj;


# instance fields
.field private final a:LaD/p;

.field private final b:Lk/l;


# direct methods
.method public constructor <init>(LaD/p;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->B()Lk/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/aG;-><init>(LaD/p;Lk/l;)V

    return-void
.end method

.method public constructor <init>(LaD/p;Lk/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/aG;->a:LaD/p;

    iput-object p2, p0, Lcom/google/googlenav/ui/aG;->b:Lk/l;

    return-void
.end method


# virtual methods
.method public a()LaD/p;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:LaD/p;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aH;)Lk/l;
    .locals 1

    check-cast p1, Lcom/google/googlenav/ui/aS;

    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->a:LaD/p;

    invoke-virtual {v0, p1}, LaD/p;->a(Lcom/google/googlenav/ui/aS;)Lk/l;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/aG;->b:Lk/l;

    goto :goto_0
.end method
