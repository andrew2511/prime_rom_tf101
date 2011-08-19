.class public Lcom/layar/core/math/Vector2f;
.super Ljava/lang/Object;
.source "Vector2f.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/layar/core/math/Vector2f;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 45
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 37
    iput p2, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/layar/core/math/Vector2f;)V
    .locals 1
    .parameter "vector2f"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget v0, p1, Lcom/layar/core/math/Vector2f;->x:F

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 55
    iget v0, p1, Lcom/layar/core/math/Vector2f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 56
    return-void
.end method

.method public static isValidVector(Lcom/layar/core/math/Vector2f;)Z
    .locals 2
    .parameter "vector"

    .prologue
    const/4 v1, 0x0

    .line 232
    if-nez p0, :cond_0

    move v0, v1

    .line 238
    :goto_0
    return v0

    .line 234
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 235
    goto :goto_0

    .line 236
    :cond_2
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 237
    goto :goto_0

    .line 238
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 4
    .parameter "vec"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layar/core/math/Vector2f;

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v2, p1, Lcom/layar/core/math/Vector2f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v3, p1, Lcom/layar/core/math/Vector2f;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/layar/core/math/Vector2f;-><init>(FF)V

    goto :goto_0
.end method

.method public add(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 2
    .parameter "vec"
    .parameter "result"

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    sget-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    .line 152
    :cond_0
    if-nez p2, :cond_1

    .line 153
    new-instance p2, Lcom/layar/core/math/Vector2f;

    .end local p2
    invoke-direct {p2}, Lcom/layar/core/math/Vector2f;-><init>()V

    .line 154
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector2f;->x:F

    .line 155
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector2f;->y:F

    move-object v0, p2

    .line 156
    goto :goto_0
.end method

.method public addLocal(FF)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "addX"
    .parameter "addY"

    .prologue
    .line 132
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 133
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 134
    return-object p0
.end method

.method public addLocal(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    sget-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 117
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    move-object v0, p0

    .line 118
    goto :goto_0
.end method

.method public angleBetween(Lcom/layar/core/math/Vector2f;)F
    .locals 4
    .parameter "otherVector"

    .prologue
    .line 550
    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v1, v2}, Lcom/layar/core/math/FastMath;->atan2(FF)F

    move-result v1

    .line 551
    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v3, p0, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v2, v3}, Lcom/layar/core/math/FastMath;->atan2(FF)F

    move-result v2

    .line 550
    sub-float v0, v1, v2

    .line 552
    .local v0, angle:F
    return v0
.end method

.method public clone()Lcom/layar/core/math/Vector2f;
    .locals 2

    .prologue
    .line 607
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/core/math/Vector2f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 608
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 609
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/core/math/Vector2f;->clone()Lcom/layar/core/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector3f;
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/layar/core/math/Vector2f;->determinant(Lcom/layar/core/math/Vector2f;)F

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public determinant(Lcom/layar/core/math/Vector2f;)F
    .locals 3
    .parameter "v"

    .prologue
    .line 188
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public distance(Lcom/layar/core/math/Vector2f;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/layar/core/math/Vector2f;->distanceSquared(Lcom/layar/core/math/Vector2f;)F

    move-result v0

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(FF)F
    .locals 8
    .parameter "otherX"
    .parameter "otherY"

    .prologue
    .line 283
    iget v4, p0, Lcom/layar/core/math/Vector2f;->x:F

    sub-float/2addr v4, p1

    float-to-double v0, v4

    .line 284
    .local v0, dx:D
    iget v4, p0, Lcom/layar/core/math/Vector2f;->y:F

    sub-float/2addr v4, p2

    float-to-double v2, v4

    .line 285
    .local v2, dy:D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public distanceSquared(Lcom/layar/core/math/Vector2f;)F
    .locals 8
    .parameter "v"

    .prologue
    .line 269
    iget v4, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v5, p1, Lcom/layar/core/math/Vector2f;->x:F

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 270
    .local v0, dx:D
    iget v4, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v5, p1, Lcom/layar/core/math/Vector2f;->y:F

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 271
    .local v2, dy:D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public divide(F)Lcom/layar/core/math/Vector2f;
    .locals 3
    .parameter "scalar"

    .prologue
    .line 375
    new-instance v0, Lcom/layar/core/math/Vector2f;

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/layar/core/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 388
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 389
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 390
    return-object p0
.end method

.method public dot(Lcom/layar/core/math/Vector2f;)F
    .locals 3
    .parameter "vec"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    sget-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, 0 returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 639
    instance-of v2, p1, Lcom/layar/core/math/Vector2f;

    if-nez v2, :cond_0

    move v2, v4

    .line 652
    :goto_0
    return v2

    .line 643
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    .line 644
    goto :goto_0

    .line 647
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/layar/core/math/Vector2f;

    move-object v1, v0

    .line 648
    .local v1, comp:Lcom/layar/core/math/Vector2f;
    iget v2, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v3, v1, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 649
    goto :goto_0

    .line 650
    :cond_2
    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v3, v1, Lcom/layar/core/math/Vector2f;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 651
    goto :goto_0

    :cond_3
    move v2, v5

    .line 652
    goto :goto_0
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v0, v1}, Lcom/layar/core/math/FastMath;->atan2(FF)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 598
    const/16 v0, 0x25

    .line 599
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x25

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 600
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 601
    return v0
.end method

.method public interpolate(Lcom/layar/core/math/Vector2f;F)V
    .locals 3
    .parameter "finalVec"
    .parameter "changeAmnt"

    .prologue
    const/high16 v2, 0x3f80

    .line 202
    sub-float v0, v2, p2

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 203
    sub-float v0, v2, p2

    iget v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 204
    return-void
.end method

.method public interpolate(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;F)V
    .locals 3
    .parameter "beginVec"
    .parameter "finalVec"
    .parameter "changeAmnt"

    .prologue
    const/high16 v2, 0x3f80

    .line 219
    sub-float v0, v2, p3

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 220
    sub-float v0, v2, p3

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 221
    return-void
.end method

.method public length()F
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/layar/core/math/Vector2f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 257
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mult(F)Lcom/layar/core/math/Vector2f;
    .locals 3
    .parameter "scalar"

    .prologue
    .line 309
    new-instance v0, Lcom/layar/core/math/Vector2f;

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/layar/core/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public mult(FLcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "scalar"
    .parameter "product"

    .prologue
    .line 357
    if-nez p2, :cond_0

    .line 358
    new-instance p2, Lcom/layar/core/math/Vector2f;

    .end local p2
    invoke-direct {p2}, Lcom/layar/core/math/Vector2f;-><init>()V

    .line 361
    .restart local p2
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/layar/core/math/Vector2f;->x:F

    .line 362
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/layar/core/math/Vector2f;->y:F

    .line 363
    return-object p2
.end method

.method public multLocal(F)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 321
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 322
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 323
    return-object p0
.end method

.method public multLocal(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    sget-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 341
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    move-object v0, p0

    .line 342
    goto :goto_0
.end method

.method public negate()Lcom/layar/core/math/Vector2f;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Lcom/layar/core/math/Vector2f;

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/layar/core/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public negateLocal()Lcom/layar/core/math/Vector2f;
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 410
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 411
    return-object p0
.end method

.method public normalize()Lcom/layar/core/math/Vector2f;
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/layar/core/math/Vector2f;->length()F

    move-result v0

    .line 503
    .local v0, length:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {p0, v0}, Lcom/layar/core/math/Vector2f;->divide(F)Lcom/layar/core/math/Vector2f;

    move-result-object v1

    .line 507
    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Lcom/layar/core/math/Vector2f;->divide(F)Lcom/layar/core/math/Vector2f;

    move-result-object v1

    goto :goto_0
.end method

.method public normalizeLocal()Lcom/layar/core/math/Vector2f;
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/layar/core/math/Vector2f;->length()F

    move-result v0

    .line 517
    .local v0, length:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lcom/layar/core/math/Vector2f;->divideLocal(F)Lcom/layar/core/math/Vector2f;

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Lcom/layar/core/math/Vector2f;->divideLocal(F)Lcom/layar/core/math/Vector2f;

    move-result-object v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 681
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 682
    return-void
.end method

.method public rotateAroundOrigin(FZ)V
    .locals 5
    .parameter "angle"
    .parameter "cw"

    .prologue
    .line 685
    if-eqz p2, :cond_0

    .line 686
    neg-float p1, p1

    .line 687
    :cond_0
    invoke-static {p1}, Lcom/layar/core/math/FastMath;->cos(F)F

    move-result v2

    iget v3, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v3

    iget v4, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 688
    .local v0, newX:F
    invoke-static {p1}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v2

    iget v3, p0, Lcom/layar/core/math/Vector2f;->x:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Lcom/layar/core/math/FastMath;->cos(F)F

    move-result v3

    iget v4, p0, Lcom/layar/core/math/Vector2f;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 689
    .local v1, newY:F
    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 690
    iput v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 691
    return-void
.end method

.method public set(FF)Lcom/layar/core/math/Vector2f;
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 68
    iput p1, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 69
    iput p2, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 70
    return-object p0
.end method

.method public set(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "vec"

    .prologue
    .line 81
    iget v0, p1, Lcom/layar/core/math/Vector2f;->x:F

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 82
    iget v0, p1, Lcom/layar/core/math/Vector2f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 83
    return-object p0
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 560
    iput p1, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 561
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 568
    iput p1, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 569
    return-void
.end method

.method public smallestAngleBetween(Lcom/layar/core/math/Vector2f;)F
    .locals 2
    .parameter "otherVector"

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/layar/core/math/Vector2f;->dot(Lcom/layar/core/math/Vector2f;)F

    move-result v1

    .line 535
    .local v1, dotProduct:F
    invoke-static {v1}, Lcom/layar/core/math/FastMath;->acos(F)F

    move-result v0

    .line 536
    .local v0, angle:F
    return v0
.end method

.method public subtract(FF)Lcom/layar/core/math/Vector2f;
    .locals 3
    .parameter "valX"
    .parameter "valY"

    .prologue
    .line 458
    new-instance v0, Lcom/layar/core/math/Vector2f;

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector2f;->y:F

    sub-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/layar/core/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public subtract(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "vec"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/layar/core/math/Vector2f;->subtract(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 2
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 440
    if-nez p2, :cond_0

    .line 441
    new-instance p2, Lcom/layar/core/math/Vector2f;

    .end local p2
    invoke-direct {p2}, Lcom/layar/core/math/Vector2f;-><init>()V

    .line 442
    .restart local p2
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector2f;->x:F

    .line 443
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector2f;->y:F

    .line 444
    return-object p2
.end method

.method public subtractLocal(FF)Lcom/layar/core/math/Vector2f;
    .locals 1
    .parameter "valX"
    .parameter "valY"

    .prologue
    .line 491
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 492
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    .line 493
    return-object p0
.end method

.method public subtractLocal(Lcom/layar/core/math/Vector2f;)Lcom/layar/core/math/Vector2f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    sget-object v0, Lcom/layar/core/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    .line 477
    :goto_0
    return-object v0

    .line 475
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 476
    iget v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector2f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    move-object v0, p0

    .line 477
    goto :goto_0
.end method

.method public toArray([F)[F
    .locals 2
    .parameter "floats"

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    const/4 v0, 0x2

    new-array p1, v0, [F

    .line 625
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    aput v1, p1, v0

    .line 626
    const/4 v0, 0x1

    iget v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    aput v1, p1, v0

    .line 627
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/layar/core/math/Vector2f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/layar/core/math/Vector2f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zero()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/math/Vector2f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector2f;->x:F

    .line 588
    return-void
.end method
