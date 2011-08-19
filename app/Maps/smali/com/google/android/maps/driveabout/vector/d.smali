.class public Lcom/google/android/maps/driveabout/vector/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cA;

.field private final b:Lcom/google/android/maps/driveabout/vector/au;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cA;Lcom/google/android/maps/driveabout/vector/au;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lcom/google/android/maps/driveabout/vector/cA;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lcom/google/android/maps/driveabout/vector/au;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/d;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:I

    return v0
.end method

.method public a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cA;->a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lcom/google/android/maps/driveabout/vector/au;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/au;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v0

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/d;->c:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lcom/google/android/maps/driveabout/vector/au;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/au;->d()I

    move-result v2

    float-to-int v0, v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:I

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/d;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/d;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lcom/google/android/maps/driveabout/vector/au;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Lcom/google/android/maps/driveabout/vector/cA;)V

    return-void
.end method
