.class public Lcom/google/android/maps/driveabout/app/co;
.super Lcom/google/android/maps/driveabout/app/aL;


# instance fields
.field protected h:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lcom/google/android/maps/driveabout/app/cR;Lt/n;)V

    const/high16 v0, 0x4168

    iput v0, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    const/high16 v0, 0x4170

    return v0
.end method

.method protected a(Landroid/location/Location;)F
    .locals 3

    const/high16 v2, 0x4138

    instance-of v0, p1, Laa/E;

    if-nez v0, :cond_0

    iput v2, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, Laa/E;

    invoke-virtual {p1}, Laa/E;->g()LG/i;

    move-result-object v0

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LG/i;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, LG/i;->e()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_4

    iput v2, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    if-lt v0, v1, :cond_5

    const/high16 v0, 0x4148

    iput v0, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    goto :goto_0

    :cond_5
    const/high16 v0, 0x4168

    iput v0, p0, Lcom/google/android/maps/driveabout/app/co;->h:F

    goto :goto_0
.end method
