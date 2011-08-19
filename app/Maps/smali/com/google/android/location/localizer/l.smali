.class final Lcom/google/android/location/localizer/l;
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
.method public a(Lcom/google/android/location/localizer/r;Lcom/google/android/location/localizer/r;)I
    .locals 4

    invoke-static {p1}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/location/localizer/r;->a(Lcom/google/android/location/localizer/r;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/location/localizer/r;

    check-cast p2, Lcom/google/android/location/localizer/r;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/l;->a(Lcom/google/android/location/localizer/r;Lcom/google/android/location/localizer/r;)I

    move-result v0

    return v0
.end method
