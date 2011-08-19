.class public Lcom/layar/core/math/Vector3f;
.super Ljava/lang/Object;
.source "Vector3f.java"


# static fields
.field public static final UNIT_X:Lcom/layar/core/math/Vector3f; = null

.field public static final UNIT_XYZ:Lcom/layar/core/math/Vector3f; = null

.field public static final UNIT_Y:Lcom/layar/core/math/Vector3f; = null

.field public static final UNIT_Z:Lcom/layar/core/math/Vector3f; = null

.field public static final ZERO:Lcom/layar/core/math/Vector3f; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/layar/core/math/Vector3f;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    .line 24
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/layar/core/math/Vector3f;->ZERO:Lcom/layar/core/math/Vector3f;

    .line 26
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v2, v1, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/layar/core/math/Vector3f;->UNIT_X:Lcom/layar/core/math/Vector3f;

    .line 27
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v1, v2, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/layar/core/math/Vector3f;->UNIT_Y:Lcom/layar/core/math/Vector3f;

    .line 28
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v1, v1, v2}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/layar/core/math/Vector3f;->UNIT_Z:Lcom/layar/core/math/Vector3f;

    .line 29
    new-instance v0, Lcom/layar/core/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/layar/core/math/Vector3f;->UNIT_XYZ:Lcom/layar/core/math/Vector3f;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 52
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 66
    iput p2, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 67
    iput p3, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/layar/core/math/Vector3f;)V
    .locals 0
    .parameter "copy"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lcom/layar/core/math/Vector3f;->set(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    .line 79
    return-void
.end method

.method public static generateComplementBasis(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)V
    .locals 5
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    const/4 v4, 0x0

    .line 798
    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->abs(F)F

    move-result v1

    iget v2, p2, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v2}, Lcom/layar/core/math/FastMath;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 800
    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p2, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/layar/core/math/Vector3f;->z:F

    iget v3, p2, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 801
    .local v0, fInvLength:F
    iget v1, p2, Lcom/layar/core/math/Vector3f;->z:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 802
    iput v4, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 803
    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 804
    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    .line 805
    iget v1, p2, Lcom/layar/core/math/Vector3f;->z:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/layar/core/math/Vector3f;->x:F

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 806
    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    neg-float v1, v1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    .line 817
    :goto_0
    return-void

    .line 809
    .end local v0           #fInvLength:F
    :cond_0
    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p2, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/layar/core/math/Vector3f;->z:F

    iget v3, p2, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 810
    .restart local v0       #fInvLength:F
    iput v4, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 811
    iget v1, p2, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 812
    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 813
    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    iget v2, p2, Lcom/layar/core/math/Vector3f;->z:F

    iget v3, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    .line 814
    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 815
    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public static generateOrthonormalBasis(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)V
    .locals 0
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 791
    invoke-virtual {p2}, Lcom/layar/core/math/Vector3f;->normalizeLocal()Lcom/layar/core/math/Vector3f;

    .line 792
    invoke-static {p0, p1, p2}, Lcom/layar/core/math/Vector3f;->generateComplementBasis(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)V

    .line 793
    return-void
.end method

.method public static isValidVector(Lcom/layar/core/math/Vector3f;)Z
    .locals 2
    .parameter "vector"

    .prologue
    const/4 v1, 0x0

    .line 780
    if-nez p0, :cond_0

    move v0, v1

    .line 787
    :goto_0
    return v0

    .line 782
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 783
    goto :goto_0

    .line 784
    :cond_2
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 785
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 786
    goto :goto_0

    .line 787
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(FFF)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "addX"
    .parameter "addY"
    .parameter "addZ"

    .prologue
    .line 186
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public add(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 5
    .parameter "vec"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v3, p1, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v4, p1, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    goto :goto_0
.end method

.method public add(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "vec"
    .parameter "result"

    .prologue
    .line 146
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->x:F

    .line 147
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->y:F

    .line 148
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->z:F

    .line 149
    return-object p2
.end method

.method public addLocal(FFF)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "addX"
    .parameter "addY"
    .parameter "addZ"

    .prologue
    .line 202
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 203
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 204
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 205
    return-object p0
.end method

.method public addLocal(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 167
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 168
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    move-object v0, p0

    .line 169
    goto :goto_0
.end method

.method public angleBetween(Lcom/layar/core/math/Vector3f;)F
    .locals 2
    .parameter "otherVector"

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Lcom/layar/core/math/Vector3f;->dot(Lcom/layar/core/math/Vector3f;)F

    move-result v1

    .line 733
    .local v1, dotProduct:F
    invoke-static {v1}, Lcom/layar/core/math/FastMath;->acos(F)F

    move-result v0

    .line 734
    .local v0, angle:F
    return v0
.end method

.method public clone()Lcom/layar/core/math/Vector3f;
    .locals 2

    .prologue
    .line 822
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/core/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 823
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 824
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
    invoke-virtual {p0}, Lcom/layar/core/math/Vector3f;->clone()Lcom/layar/core/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public cross(FFFLcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 5
    .parameter "otherX"
    .parameter "otherY"
    .parameter "otherZ"
    .parameter "result"

    .prologue
    .line 310
    if-nez p4, :cond_0

    .line 311
    new-instance p4, Lcom/layar/core/math/Vector3f;

    .end local p4
    invoke-direct {p4}, Lcom/layar/core/math/Vector3f;-><init>()V

    .line 312
    .restart local p4
    :cond_0
    iget v3, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v3, p3

    iget v4, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v4, p2

    sub-float v0, v3, v4

    .line 313
    .local v0, resX:F
    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v4, p3

    sub-float v1, v3, v4

    .line 314
    .local v1, resY:F
    iget v3, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v4, p1

    sub-float v2, v3, v4

    .line 315
    .local v2, resZ:F
    invoke-virtual {p4, v0, v1, v2}, Lcom/layar/core/math/Vector3f;->set(FFF)Lcom/layar/core/math/Vector3f;

    .line 316
    return-object p4
.end method

.method public cross(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "v"

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/layar/core/math/Vector3f;->cross(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 3
    .parameter "v"
    .parameter "result"

    .prologue
    .line 289
    iget v0, p1, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/layar/core/math/Vector3f;->cross(FFFLcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public crossLocal(FFF)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "otherX"
    .parameter "otherY"
    .parameter "otherZ"

    .prologue
    .line 344
    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v2, p3

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v3, p2

    sub-float v0, v2, v3

    .line 345
    .local v0, tempx:F
    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v3, p3

    sub-float v1, v2, v3

    .line 346
    .local v1, tempy:F
    iget v2, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 347
    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 348
    iput v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 349
    return-object p0
.end method

.method public crossLocal(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 3
    .parameter "v"

    .prologue
    .line 328
    iget v0, p1, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/layar/core/math/Vector3f;->crossLocal(FFF)Lcom/layar/core/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/layar/core/math/Vector3f;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/layar/core/math/Vector3f;->distanceSquared(Lcom/layar/core/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(Lcom/layar/core/math/Vector3f;)F
    .locals 10
    .parameter "v"

    .prologue
    .line 380
    iget v6, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v7, p1, Lcom/layar/core/math/Vector3f;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 381
    .local v0, dx:D
    iget v6, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v7, p1, Lcom/layar/core/math/Vector3f;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 382
    .local v2, dy:D
    iget v6, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v7, p1, Lcom/layar/core/math/Vector3f;->z:F

    sub-float/2addr v6, v7

    float-to-double v4, v6

    .line 383
    .local v4, dz:D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    return v6
.end method

.method public divide(F)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "scalar"

    .prologue
    .line 523
    const/high16 v0, 0x3f80

    div-float p1, v0, p1

    .line 524
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public divide(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 5
    .parameter "scalar"

    .prologue
    .line 553
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->x:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v3, p1, Lcom/layar/core/math/Vector3f;->y:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v4, p1, Lcom/layar/core/math/Vector3f;->z:F

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 537
    const/high16 v0, 0x3f80

    div-float p1, v0, p1

    .line 538
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 539
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 540
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 541
    return-object p0
.end method

.method public divideLocal(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "scalar"

    .prologue
    .line 566
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 567
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 568
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 569
    return-object p0
.end method

.method public dot(Lcom/layar/core/math/Vector3f;)F
    .locals 3
    .parameter "vec"

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, 0 returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->z:F

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

    .line 855
    instance-of v2, p1, Lcom/layar/core/math/Vector3f;

    if-nez v2, :cond_0

    move v2, v4

    .line 870
    :goto_0
    return v2

    .line 859
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    .line 860
    goto :goto_0

    .line 863
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/layar/core/math/Vector3f;

    move-object v1, v0

    .line 864
    .local v1, comp:Lcom/layar/core/math/Vector3f;
    iget v2, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v3, v1, Lcom/layar/core/math/Vector3f;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 865
    goto :goto_0

    .line 866
    :cond_2
    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v3, v1, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 867
    goto :goto_0

    .line 868
    :cond_3
    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v3, v1, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    .line 869
    goto :goto_0

    :cond_4
    move v2, v5

    .line 870
    goto :goto_0
.end method

.method public get(I)F
    .locals 2
    .parameter "index"

    .prologue
    .line 950
    packed-switch p1, :pswitch_data_0

    .line 958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :pswitch_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 956
    :goto_0
    return v0

    .line 954
    :pswitch_1
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    goto :goto_0

    .line 956
    :pswitch_2
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    goto :goto_0

    .line 950
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 881
    const/16 v0, 0x25

    .line 882
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x25

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 883
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 884
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 885
    return v0
.end method

.method public interpolate(Lcom/layar/core/math/Vector3f;F)V
    .locals 3
    .parameter "finalVec"
    .parameter "changeAmnt"

    .prologue
    const/high16 v2, 0x3f80

    .line 748
    sub-float v0, v2, p2

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 749
    sub-float v0, v2, p2

    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 750
    sub-float v0, v2, p2

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 751
    return-void
.end method

.method public interpolate(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;F)V
    .locals 3
    .parameter "beginVec"
    .parameter "finalVec"
    .parameter "changeAmnt"

    .prologue
    const/high16 v2, 0x3f80

    .line 766
    sub-float v0, v2, p3

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 767
    sub-float v0, v2, p3

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 768
    sub-float v0, v2, p3

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 769
    return-void
.end method

.method public length()F
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/layar/core/math/Vector3f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 368
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mult(F)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "scalar"

    .prologue
    .line 407
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public mult(FLcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "scalar"
    .parameter "product"

    .prologue
    .line 422
    if-nez p2, :cond_0

    .line 423
    new-instance p2, Lcom/layar/core/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/layar/core/math/Vector3f;-><init>()V

    .line 426
    .restart local p2
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->x:F

    .line 427
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->y:F

    .line 428
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->z:F

    .line 429
    return-object p2
.end method

.method public mult(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 3
    .parameter "vec"

    .prologue
    const/4 v2, 0x0

    .line 479
    if-nez p1, :cond_0

    .line 480
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v2

    .line 483
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/layar/core/math/Vector3f;->mult(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    move-result-object v0

    goto :goto_0
.end method

.method public mult(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    .line 509
    :cond_0
    if-nez p2, :cond_1

    .line 510
    new-instance p2, Lcom/layar/core/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/layar/core/math/Vector3f;-><init>()V

    .line 511
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v3, p1, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/layar/core/math/Vector3f;->set(FFF)Lcom/layar/core/math/Vector3f;

    move-result-object v0

    goto :goto_0
.end method

.method public multLocal(F)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 441
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 442
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 443
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 444
    return-object p0
.end method

.method public multLocal(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    .line 465
    :goto_0
    return-object v0

    .line 462
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 463
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 464
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    move-object v0, p0

    .line 465
    goto :goto_0
.end method

.method public negate()Lcom/layar/core/math/Vector3f;
    .locals 4

    .prologue
    .line 580
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public negateLocal()Lcom/layar/core/math/Vector3f;
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 591
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 592
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 593
    return-object p0
.end method

.method public normalize()Lcom/layar/core/math/Vector3f;
    .locals 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/layar/core/math/Vector3f;->length()F

    move-result v0

    .line 694
    .local v0, length:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {p0, v0}, Lcom/layar/core/math/Vector3f;->divide(F)Lcom/layar/core/math/Vector3f;

    move-result-object v1

    .line 698
    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Lcom/layar/core/math/Vector3f;->divide(F)Lcom/layar/core/math/Vector3f;

    move-result-object v1

    goto :goto_0
.end method

.method public normalizeLocal()Lcom/layar/core/math/Vector3f;
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/layar/core/math/Vector3f;->length()F

    move-result v0

    .line 708
    .local v0, length:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {p0, v0}, Lcom/layar/core/math/Vector3f;->divideLocal(F)Lcom/layar/core/math/Vector3f;

    move-result-object v1

    .line 712
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

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
    .line 913
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 914
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 915
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 916
    return-void
.end method

.method public scaleAdd(FLcom/layar/core/math/Vector3f;)V
    .locals 2
    .parameter "scalar"
    .parameter "add"

    .prologue
    .line 219
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 220
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 221
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 222
    return-void
.end method

.method public scaleAdd(FLcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)V
    .locals 2
    .parameter "scalar"
    .parameter "mult"
    .parameter "add"

    .prologue
    .line 237
    iget v0, p2, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/layar/core/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 238
    iget v0, p2, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/layar/core/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 239
    iget v0, p2, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/layar/core/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 240
    return-void
.end method

.method public set(FFF)Lcom/layar/core/math/Vector3f;
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 94
    iput p1, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 95
    iput p2, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 96
    iput p3, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 97
    return-object p0
.end method

.method public set(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "vect"

    .prologue
    .line 109
    iget v0, p1, Lcom/layar/core/math/Vector3f;->x:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 110
    iget v0, p1, Lcom/layar/core/math/Vector3f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 111
    iget v0, p1, Lcom/layar/core/math/Vector3f;->z:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 112
    return-object p0
.end method

.method public set(IF)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 970
    packed-switch p1, :pswitch_data_0

    .line 981
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :pswitch_0
    iput p2, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 979
    :goto_0
    return-void

    .line 975
    :pswitch_1
    iput p2, p0, Lcom/layar/core/math/Vector3f;->y:F

    goto :goto_0

    .line 978
    :pswitch_2
    iput p2, p0, Lcom/layar/core/math/Vector3f;->z:F

    goto :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 923
    iput p1, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 924
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 931
    iput p1, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 932
    return-void
.end method

.method public setZ(F)V
    .locals 0
    .parameter "z"

    .prologue
    .line 939
    iput p1, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 940
    return-void
.end method

.method public subtract(FFF)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "subtractX"
    .parameter "subtractY"
    .parameter "subtractZ"

    .prologue
    .line 664
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    sub-float/2addr v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 5
    .parameter "vec"

    .prologue
    .line 607
    new-instance v0, Lcom/layar/core/math/Vector3f;

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p1, Lcom/layar/core/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v3, p1, Lcom/layar/core/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v4, p1, Lcom/layar/core/math/Vector3f;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "vec"
    .parameter "result"

    .prologue
    .line 641
    if-nez p2, :cond_0

    .line 642
    new-instance p2, Lcom/layar/core/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/layar/core/math/Vector3f;-><init>()V

    .line 644
    .restart local p2
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->x:F

    .line 645
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->y:F

    .line 646
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/layar/core/math/Vector3f;->z:F

    .line 647
    return-object p2
.end method

.method public subtractLocal(FFF)Lcom/layar/core/math/Vector3f;
    .locals 1
    .parameter "subtractX"
    .parameter "subtractY"
    .parameter "subtractZ"

    .prologue
    .line 681
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 682
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 683
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    .line 684
    return-object p0
.end method

.method public subtractLocal(Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 621
    sget-object v0, Lcom/layar/core/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    .line 627
    :goto_0
    return-object v0

    .line 624
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 625
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    .line 626
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    move-object v0, p0

    .line 627
    goto :goto_0
.end method

.method public toArray([F)[F
    .locals 2
    .parameter "floats"

    .prologue
    .line 837
    if-nez p1, :cond_0

    .line 838
    const/4 v0, 0x3

    new-array p1, v0, [F

    .line 840
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    aput v1, p1, v0

    .line 841
    const/4 v0, 0x1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    aput v1, p1, v0

    .line 842
    const/4 v0, 0x2

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    aput v1, p1, v0

    .line 843
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

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
    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 720
    return-void
.end method
