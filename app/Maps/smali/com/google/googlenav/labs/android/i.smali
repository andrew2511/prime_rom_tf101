.class public Lcom/google/googlenav/labs/android/i;
.super Lr/i;


# static fields
.field public static final a:Lcom/google/googlenav/labs/android/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/labs/android/i;

    invoke-direct {v0}, Lcom/google/googlenav/labs/android/i;-><init>()V

    sput-object v0, Lcom/google/googlenav/labs/android/i;->a:Lcom/google/googlenav/labs/android/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/i;-><init>()V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/aT;Z)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    sget-object v1, Lcom/google/googlenav/labs/android/i;->a:Lcom/google/googlenav/labs/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/labs/android/i;->f()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/labs/android/i;->a:Lcom/google/googlenav/labs/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/labs/android/i;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/d;->b(Z)V

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/aT;->t(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x450

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/labs/android/i;->b(Lcom/google/googlenav/ui/aT;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/labs/android/i;->b(Lcom/google/googlenav/ui/aT;Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x44f

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

    const-string v0, "Andrew M., Danny E."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method
