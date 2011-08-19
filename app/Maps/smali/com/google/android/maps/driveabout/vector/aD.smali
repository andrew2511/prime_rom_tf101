.class Lcom/google/android/maps/driveabout/vector/aD;
.super Ljava/lang/Object;


# instance fields
.field a:LG/Q;

.field b:F

.field c:F

.field d:F


# direct methods
.method private constructor <init>(LG/Q;LG/Q;F)V
    .locals 2

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v1}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:LG/Q;

    invoke-virtual {p1, p2}, LG/Q;->c(LG/Q;)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aD;->c:F

    invoke-static {p1, p2}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:F

    return-void
.end method

.method synthetic constructor <init>(LG/Q;LG/Q;FLcom/google/android/maps/driveabout/vector/bt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aD;-><init>(LG/Q;LG/Q;F)V

    return-void
.end method
