.class public Lcom/google/android/maps/driveabout/vector/av;
.super Ljava/lang/Object;


# instance fields
.field public a:LG/Q;

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/av;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/av;->b:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/av;->b:F

    return-void

    :cond_0
    new-instance v0, LG/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    invoke-direct {v0, v1}, LG/Q;-><init>(LG/Q;)V

    goto :goto_0
.end method
