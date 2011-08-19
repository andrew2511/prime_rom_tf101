.class Lcom/google/android/maps/driveabout/vector/bg;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:F

.field c:I

.field d:[I


# direct methods
.method public constructor <init>(FLG/r;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bg;->a:F

    invoke-virtual {p2, p3}, LG/r;->b(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bg;->b:F

    invoke-virtual {p2, p3}, LG/r;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bg;->c:I

    return-void
.end method
