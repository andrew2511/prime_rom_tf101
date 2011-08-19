.class final Lcom/google/android/location/localizer/c;
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
.method public a(LW/p;LW/p;)I
    .locals 4

    iget-object p0, p2, LW/p;->b:Ljava/lang/Object;

    check-cast p0, LW/r;

    invoke-static {p0}, Lcom/google/android/location/localizer/t;->a(LW/r;)D

    move-result-wide v0

    iget-object p0, p1, LW/p;->b:Ljava/lang/Object;

    check-cast p0, LW/r;

    invoke-static {p0}, Lcom/google/android/location/localizer/t;->a(LW/r;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LW/p;

    check-cast p2, LW/p;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/c;->a(LW/p;LW/p;)I

    move-result v0

    return v0
.end method
