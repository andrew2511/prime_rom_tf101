.class public Lcom/google/android/maps/driveabout/vector/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZ)Lcom/google/android/maps/driveabout/vector/cb;
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(I)V

    goto :goto_0
.end method

.method public a(IZ)Lcom/google/android/maps/driveabout/vector/cv;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
