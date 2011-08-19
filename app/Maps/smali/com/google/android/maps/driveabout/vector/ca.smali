.class public Lcom/google/android/maps/driveabout/vector/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/w;LG/w;)I
    .locals 5

    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    invoke-virtual {p2}, LG/w;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x2000

    shr-int v0, v1, v0

    invoke-virtual {p1}, LG/w;->f()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, LG/w;->g()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, LG/w;->f()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, LG/w;->g()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public a(LG/Q;)V
    .locals 1

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:I

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:I

    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LG/w;

    check-cast p2, LG/w;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ca;->a(LG/w;LG/w;)I

    move-result v0

    return v0
.end method
