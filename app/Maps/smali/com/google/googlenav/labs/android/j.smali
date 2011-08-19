.class public Lcom/google/googlenav/labs/android/j;
.super Lr/i;


# static fields
.field public static final a:Lcom/google/googlenav/labs/android/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/labs/android/j;

    invoke-direct {v0}, Lcom/google/googlenav/labs/android/j;-><init>()V

    sput-object v0, Lcom/google/googlenav/labs/android/j;->a:Lcom/google/googlenav/labs/android/j;

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

    const/16 v0, 0x417

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {p0}, Lcom/google/googlenav/labs/android/j;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bc;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/labs/android/j;->f()Z

    move-result v0

    invoke-static {v0}, Lf/X;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/labs/android/j;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bc;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/labs/android/j;->f()Z

    move-result v0

    invoke-static {v0}, Lf/X;->a(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x416

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

    const-string v0, "Ronghui Z."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method
