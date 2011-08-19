.class public Lr/a;
.super Lr/i;


# static fields
.field public static final a:Lr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/a;

    invoke-direct {v0}, Lr/a;-><init>()V

    sput-object v0, Lr/a;->a:Lr/a;

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

    const/16 v0, 0x252

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->s()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->q()Li/aN;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x251

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f02024d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Ole C."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method
