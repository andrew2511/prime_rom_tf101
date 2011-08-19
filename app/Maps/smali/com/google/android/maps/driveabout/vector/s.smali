.class public Lcom/google/android/maps/driveabout/vector/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bI;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/s;->a:Lcom/google/android/maps/driveabout/vector/bI;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/s;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "vector.version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/s;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/bI;->b(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/s;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "vector.version"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/s;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Landroid/os/Bundle;)V

    return-void
.end method
