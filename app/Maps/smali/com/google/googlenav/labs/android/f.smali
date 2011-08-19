.class public Lcom/google/googlenav/labs/android/f;
.super Lr/i;


# static fields
.field public static final a:Lcom/google/googlenav/labs/android/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/labs/android/f;

    invoke-direct {v0}, Lcom/google/googlenav/labs/android/f;-><init>()V

    sput-object v0, Lcom/google/googlenav/labs/android/f;->a:Lcom/google/googlenav/labs/android/f;

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

    const/16 v0, 0xf6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->B()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->y()Li/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/v;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lu/v;

    invoke-virtual {p1, p0}, Lcom/google/googlenav/ui/aT;->a(Lu/v;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf5

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Chandan P."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
