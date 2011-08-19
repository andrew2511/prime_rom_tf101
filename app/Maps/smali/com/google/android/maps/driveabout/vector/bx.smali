.class Lcom/google/android/maps/driveabout/vector/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/D;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/D;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bx;->a:Lcom/google/android/maps/driveabout/vector/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aG;Lcom/google/android/maps/driveabout/vector/aG;)I
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/aG;->a()LG/d;

    move-result-object v0

    invoke-interface {v0}, LG/d;->l()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aG;->a()LG/d;

    move-result-object v1

    invoke-interface {v1}, LG/d;->l()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aG;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/aG;Lcom/google/android/maps/driveabout/vector/aG;)I

    move-result v0

    return v0
.end method
