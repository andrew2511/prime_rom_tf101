.class public abstract Lcom/google/android/maps/driveabout/vector/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/A;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/bA;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()I
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bA;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cr;->a:Lcom/google/android/maps/driveabout/vector/bA;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method public a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c_(I)V
    .locals 0

    return-void
.end method

.method public d(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->a:Lcom/google/android/maps/driveabout/vector/bA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->a:Lcom/google/android/maps/driveabout/vector/bA;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/vector/bA;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_0
    return-void
.end method
