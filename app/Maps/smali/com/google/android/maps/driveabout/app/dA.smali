.class Lcom/google/android/maps/driveabout/app/dA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/j;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cZ;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cZ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dA;->a:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/w;Lcom/google/android/maps/driveabout/vector/cu;IJ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->a:Lcom/google/android/maps/driveabout/app/cZ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(Lcom/google/android/maps/driveabout/app/aI;)V

    :cond_0
    return-void
.end method
