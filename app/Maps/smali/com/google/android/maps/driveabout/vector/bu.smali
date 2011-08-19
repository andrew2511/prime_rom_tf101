.class public Lcom/google/android/maps/driveabout/vector/bu;
.super Lcom/google/android/maps/driveabout/vector/bV;


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    const/high16 v1, 0x418c

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    :cond_1
    return-void
.end method
