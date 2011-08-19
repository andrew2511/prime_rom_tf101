.class final Lcom/google/android/location/localizer/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/location/localizer/DistanceDist;Lcom/google/android/location/localizer/DistanceDist;)I
    .locals 2

    iget v0, p1, Lcom/google/android/location/localizer/DistanceDist;->a:I

    iget v1, p2, Lcom/google/android/location/localizer/DistanceDist;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/location/localizer/DistanceDist;

    check-cast p2, Lcom/google/android/location/localizer/DistanceDist;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/d;->a(Lcom/google/android/location/localizer/DistanceDist;Lcom/google/android/location/localizer/DistanceDist;)I

    move-result v0

    return v0
.end method
