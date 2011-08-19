.class Lcom/google/android/maps/driveabout/app/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/be;


# instance fields
.field final a:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bq;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ae;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/bK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bq;->a:Ljava/util/HashSet;

    check-cast p1, Lcom/google/android/maps/driveabout/app/bK;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/bK;->a(Lcom/google/android/maps/driveabout/app/bK;)Lt/D;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
