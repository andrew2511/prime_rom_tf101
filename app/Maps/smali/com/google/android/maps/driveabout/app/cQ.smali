.class Lcom/google/android/maps/driveabout/app/cQ;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/ck;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/app/ck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cQ;->b:Lcom/google/android/maps/driveabout/app/ck;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cQ;->b:Lcom/google/android/maps/driveabout/app/ck;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/ck;->c()Lcom/google/android/maps/driveabout/vector/av;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/vector/bI;

    return-object p0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cQ;->b:Lcom/google/android/maps/driveabout/app/ck;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ck;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
