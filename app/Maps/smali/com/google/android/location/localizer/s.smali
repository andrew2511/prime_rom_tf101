.class Lcom/google/android/location/localizer/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/localizer/p;


# direct methods
.method private constructor <init>(Lcom/google/android/location/localizer/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/location/localizer/s;->a:Lcom/google/android/location/localizer/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/localizer/p;Lcom/google/android/location/localizer/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/s;-><init>(Lcom/google/android/location/localizer/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/location/localizer/q;Lcom/google/android/location/localizer/q;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/location/localizer/q;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/location/localizer/q;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/location/localizer/q;

    check-cast p2, Lcom/google/android/location/localizer/q;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/s;->a(Lcom/google/android/location/localizer/q;Lcom/google/android/location/localizer/q;)I

    move-result v0

    return v0
.end method
