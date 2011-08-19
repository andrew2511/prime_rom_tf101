.class public abstract Lcom/google/android/maps/driveabout/vector/au;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/r;

.field protected b:Z

.field protected c:I

.field private d:Lcom/google/android/maps/driveabout/vector/cM;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/au;->a:Lcom/google/android/maps/driveabout/vector/r;

    return-void
.end method


# virtual methods
.method public V_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/au;->c:I

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/au;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-interface {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/au;Lcom/google/android/maps/driveabout/vector/cA;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cM;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/au;->d:Lcom/google/android/maps/driveabout/vector/cM;

    return-void
.end method

.method public abstract a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/au;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->b:Z

    return v0
.end method
