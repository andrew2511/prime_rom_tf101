.class public Lr/b;
.super Lr/i;


# static fields
.field public static final a:Lr/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/b;

    invoke-direct {v0}, Lr/b;-><init>()V

    sput-object v0, Lr/b;->a:Lr/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a5

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/d;->c(Z)V

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->U()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/d;->c(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Michelle C."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
