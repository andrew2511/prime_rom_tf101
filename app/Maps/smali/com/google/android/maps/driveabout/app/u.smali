.class Lcom/google/android/maps/driveabout/app/u;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Z

.field c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/u;->a:I

    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/u;->b:Z

    iput p3, p0, Lcom/google/android/maps/driveabout/app/u;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/maps/driveabout/app/u;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/u;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/app/u;->a:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/u;->b:Z

    iget-boolean v1, p1, Lcom/google/android/maps/driveabout/app/u;->b:Z

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/maps/driveabout/app/u;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/app/u;->c:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/maps/driveabout/app/u;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/u;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/u;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v1, 0x4d5

    goto :goto_0
.end method
