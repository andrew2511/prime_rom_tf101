.class LaK/b;
.super Lcom/google/android/maps/driveabout/vector/bD;


# instance fields
.field final synthetic a:LaK/j;


# direct methods
.method constructor <init>(LaK/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LaK/b;->a:LaK/j;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bD;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(FFFFFZ)F
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->i()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->v()V

    invoke-super/range {p0 .. p6}, Lcom/google/android/maps/driveabout/vector/bD;->a(FFFFFZ)F

    move-result v0

    return v0
.end method

.method public a(FI)V
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->i()V

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bD;->a(FI)V

    return-void
.end method
