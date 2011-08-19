.class public Lcom/google/android/maps/driveabout/vector/cn;
.super Lcom/google/android/maps/driveabout/vector/bV;


# instance fields
.field private f:F

.field private g:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIZZZZ)V
    .locals 15

    const/4 v1, 0x4

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Z

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Z

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Z

    move v0, v2

    goto :goto_0
.end method
