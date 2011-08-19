.class Lcom/google/googlenav/prefetch/android/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/o;->a:Lcom/google/googlenav/prefetch/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 1

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/o;->a(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
