.class Lcom/google/android/maps/driveabout/vector/aO;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/maps/driveabout/vector/aw;

.field private final c:F

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/maps/driveabout/vector/F;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/aw;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:I

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/vector/aO;->g:Lcom/google/android/maps/driveabout/vector/F;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aO;

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->c:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->d:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->e:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->f:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/aw;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/aw;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aO;->g:Lcom/google/android/maps/driveabout/vector/F;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->g:Lcom/google/android/maps/driveabout/vector/F;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/aw;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->g:Lcom/google/android/maps/driveabout/vector/F;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/F;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
