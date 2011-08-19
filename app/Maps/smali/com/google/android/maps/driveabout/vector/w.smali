.class Lcom/google/android/maps/driveabout/vector/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/google/android/maps/driveabout/vector/ci;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/ci;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/ci;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aG;Lcom/google/android/maps/driveabout/vector/aG;)I
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/ci;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/S;

    invoke-static {v1, v0, p0}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/ci;Lcom/google/android/maps/driveabout/vector/S;Lcom/google/android/maps/driveabout/vector/S;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aG;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/aG;Lcom/google/android/maps/driveabout/vector/aG;)I

    move-result v0

    return v0
.end method
