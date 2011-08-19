.class Lcom/google/android/maps/driveabout/vector/bZ;
.super Lcom/google/android/maps/driveabout/vector/cy;


# instance fields
.field final synthetic c:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)V
    .locals 8

    const/4 v2, 0x5

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bZ;->c:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cy;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;IIIIII)V

    return-void

    :cond_0
    move v6, v5

    goto :goto_0
.end method
