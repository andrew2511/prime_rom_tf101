.class Lcom/google/android/location/localizer/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/localizer/t;


# direct methods
.method private constructor <init>(Lcom/google/android/location/localizer/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/location/localizer/j;->a:Lcom/google/android/location/localizer/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/localizer/t;Lcom/google/android/location/localizer/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/j;-><init>(Lcom/google/android/location/localizer/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/location/localizer/f;Lcom/google/android/location/localizer/f;)I
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/location/localizer/f;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/location/localizer/f;

    check-cast p2, Lcom/google/android/location/localizer/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/j;->a(Lcom/google/android/location/localizer/f;Lcom/google/android/location/localizer/f;)I

    move-result v0

    return v0
.end method
