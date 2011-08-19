.class Lcom/google/android/opengl/carousel/Ray;
.super Ljava/lang/Object;
.source "Ray.java"


# static fields
.field private static final EPSILON:F = 1.0E-6f

.field private static final TAG:Ljava/lang/String; = "Ray"

.field public static sDebugRay:Z

.field private static final tmin:F


# instance fields
.field public mBestTime:F

.field mDirection:Lcom/google/android/opengl/carousel/Float3;

.field mPosition:Lcom/google/android/opengl/carousel/Float3;

.field public mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mScene:Lcom/google/android/opengl/carousel/CarouselScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/opengl/carousel/Ray;->sDebugRay:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    .line 19
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 28
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 29
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 30
    return-void
.end method


# virtual methods
.method public makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z
    .locals 17
    .parameter "camera"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v13, v0

    iget v13, v13, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v13, v13

    div-float v11, p2, v13

    .line 38
    .local v11, u:F
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v14, v0

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v14, v14

    div-float v14, p3, v14

    sub-float v12, v13, v14

    .line 40
    .local v12, v:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v13, v0

    iget v2, v13, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 41
    .local v2, aspect:F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    move v13, v0

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v6, v13

    .line 42
    .local v6, halfFovy:F
    const-wide/high16 v13, 0x4000

    float-to-double v15, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v10, v13

    .line 43
    .local v10, tanfov2:F
    new-instance v3, Lcom/google/android/opengl/carousel/Float3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    move-object v13, v0

    invoke-direct {v3, v13}, Lcom/google/android/opengl/carousel/Float3;-><init>([F)V

    .line 44
    .local v3, dir:Lcom/google/android/opengl/carousel/Float3;
    new-instance v13, Lcom/google/android/opengl/carousel/Float3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/google/android/opengl/carousel/Float3;-><init>([F)V

    invoke-virtual {v3, v13}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 45
    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/Float3;->normalize()V

    .line 47
    new-instance v13, Lcom/google/android/opengl/carousel/Float3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/google/android/opengl/carousel/Float3;-><init>([F)V

    invoke-virtual {v3, v13}, Lcom/google/android/opengl/carousel/Float3;->cross(Lcom/google/android/opengl/carousel/Float3;)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v4

    .line 48
    .local v4, du:Lcom/google/android/opengl/carousel/Float3;
    invoke-virtual {v4}, Lcom/google/android/opengl/carousel/Float3;->normalize()V

    .line 49
    invoke-virtual {v4, v10}, Lcom/google/android/opengl/carousel/Float3;->times(F)V

    .line 51
    invoke-virtual {v4, v3}, Lcom/google/android/opengl/carousel/Float3;->cross(Lcom/google/android/opengl/carousel/Float3;)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v5

    .line 52
    .local v5, dv:Lcom/google/android/opengl/carousel/Float3;
    invoke-virtual {v5}, Lcom/google/android/opengl/carousel/Float3;->normalize()V

    .line 53
    invoke-virtual {v5, v10}, Lcom/google/android/opengl/carousel/Float3;->times(F)V

    .line 55
    invoke-virtual {v4, v2}, Lcom/google/android/opengl/carousel/Float3;->times(F)V

    .line 57
    new-instance v7, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v7, v3}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 58
    .local v7, lowerLeftRay:Lcom/google/android/opengl/carousel/Float3;
    const/high16 v13, 0x3f00

    invoke-static {v4, v13}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 59
    const/high16 v13, 0x3f00

    invoke-static {v5, v13}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 61
    new-instance v9, Lcom/google/android/opengl/carousel/Float3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    move-object v13, v0

    invoke-direct {v9, v13}, Lcom/google/android/opengl/carousel/Float3;-><init>([F)V

    .line 62
    .local v9, rayPoint:Lcom/google/android/opengl/carousel/Float3;
    new-instance v8, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v8, v7}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 63
    .local v8, rayDir:Lcom/google/android/opengl/carousel/Float3;
    invoke-static {v4, v11}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/opengl/carousel/Float3;->add(Lcom/google/android/opengl/carousel/Float3;)V

    .line 64
    invoke-static {v5, v12}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/opengl/carousel/Float3;->add(Lcom/google/android/opengl/carousel/Float3;)V

    .line 65
    invoke-virtual {v8}, Lcom/google/android/opengl/carousel/Float3;->normalize()V

    .line 67
    sget-boolean v13, Lcom/google/android/opengl/carousel/Ray;->sDebugRay:Z

    if-eqz v13, :cond_0

    .line 68
    const-string v13, "Ray"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ray position : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v13, "Ray"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ray direction:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    .line 73
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    .line 75
    const/4 v13, 0x1

    return v13
.end method

.method public rayCylinderIntersect(Lcom/google/android/opengl/carousel/Cylinder;)Z
    .locals 14
    .parameter "cylinder"

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 144
    iget-object v7, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v7, v7, Lcom/google/android/opengl/carousel/Float3;->x:F

    iget-object v8, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v8, v8, Lcom/google/android/opengl/carousel/Float3;->x:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v8, v8, Lcom/google/android/opengl/carousel/Float3;->z:F

    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v9, v9, Lcom/google/android/opengl/carousel/Float3;->z:F

    mul-float/2addr v8, v9

    add-float v0, v7, v8

    .line 145
    .local v0, A:F
    const v7, 0x358637bd

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    move v7, v11

    .line 174
    :goto_0
    return v7

    .line 149
    :cond_0
    iget-object v7, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v7, v7, Lcom/google/android/opengl/carousel/Float3;->x:F

    iget-object v8, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget v8, v8, Lcom/google/android/opengl/carousel/Float3;->x:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v8, v8, Lcom/google/android/opengl/carousel/Float3;->z:F

    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget v9, v9, Lcom/google/android/opengl/carousel/Float3;->z:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float v1, v12, v7

    .line 150
    .local v1, B:F
    iget-object v7, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget v7, v7, Lcom/google/android/opengl/carousel/Float3;->x:F

    iget-object v8, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget v8, v8, Lcom/google/android/opengl/carousel/Float3;->x:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget v8, v8, Lcom/google/android/opengl/carousel/Float3;->z:F

    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget v9, v9, Lcom/google/android/opengl/carousel/Float3;->z:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    iget v9, p1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    mul-float/2addr v8, v9

    sub-float v2, v7, v8

    .line 152
    .local v2, C:F
    mul-float v7, v1, v1

    const/high16 v8, 0x4080

    mul-float/2addr v8, v0

    mul-float/2addr v8, v2

    sub-float v4, v7, v8

    .line 154
    .local v4, disc:F
    cmpg-float v7, v4, v10

    if-gez v7, :cond_1

    move v7, v11

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 157
    mul-float v3, v12, v0

    .line 160
    .local v3, denom:F
    neg-float v7, v1

    sub-float/2addr v7, v4

    div-float v5, v7, v3

    .line 161
    .local v5, t1:F
    iget-object v7, p0, Lcom/google/android/opengl/carousel/Ray;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v7, v7, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    cmpl-float v7, v5, v10

    if-lez v7, :cond_2

    iget v7, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpg-float v7, v5, v7

    if-gez v7, :cond_2

    .line 163
    iput v5, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    move v7, v13

    .line 164
    goto :goto_0

    .line 168
    :cond_2
    neg-float v7, v1

    add-float/2addr v7, v4

    div-float v6, v7, v3

    .line 169
    .local v6, t2:F
    iget-object v7, p0, Lcom/google/android/opengl/carousel/Ray;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v7, v7, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    cmpl-float v7, v6, v10

    if-lez v7, :cond_3

    iget v7, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    .line 171
    iput v6, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    move v7, v13

    .line 172
    goto :goto_0

    :cond_3
    move v7, v11

    .line 174
    goto :goto_0
.end method

.method public rayPlaneIntersect(Lcom/google/android/opengl/carousel/Plane;)Z
    .locals 5
    .parameter "plane"

    .prologue
    .line 125
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget-object v3, p1, Lcom/google/android/opengl/carousel/Plane;->mNormal:Lcom/google/android/opengl/carousel/Float3;

    invoke-static {v2, v3}, Lcom/google/android/opengl/carousel/Float3;->dot(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)F

    move-result v0

    .line 126
    .local v0, denom:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x358637bd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 127
    iget v2, p1, Lcom/google/android/opengl/carousel/Plane;->mConstant:F

    iget-object v3, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    iget-object v4, p1, Lcom/google/android/opengl/carousel/Plane;->mNormal:Lcom/google/android/opengl/carousel/Float3;

    invoke-static {v3, v4}, Lcom/google/android/opengl/carousel/Float3;->dot(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)F

    move-result v3

    add-float/2addr v2, v3

    neg-float v2, v2

    div-float v1, v2, v0

    .line 128
    .local v1, t:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 129
    iput v1, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 130
    const/4 v2, 0x1

    .line 133
    .end local v1           #t:F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public rayTriangleIntersect(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)Z
    .locals 15
    .parameter "p0"
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 83
    const/4 v10, 0x0

    .line 85
    .local v10, tmin:F
    new-instance v4, Lcom/google/android/opengl/carousel/Float3;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 86
    .local v4, e1:Lcom/google/android/opengl/carousel/Float3;
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 87
    new-instance v5, Lcom/google/android/opengl/carousel/Float3;

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 88
    .local v5, e2:Lcom/google/android/opengl/carousel/Float3;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 90
    iget-object v13, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    invoke-virtual {v13, v5}, Lcom/google/android/opengl/carousel/Float3;->cross(Lcom/google/android/opengl/carousel/Float3;)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v7

    .line 91
    .local v7, s1:Lcom/google/android/opengl/carousel/Float3;
    invoke-static {v7, v4}, Lcom/google/android/opengl/carousel/Float3;->dot(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)F

    move-result v3

    .line 93
    .local v3, div:F
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-nez v13, :cond_0

    .line 94
    const/4 v13, 0x0

    .line 117
    :goto_0
    return v13

    .line 96
    :cond_0
    new-instance v2, Lcom/google/android/opengl/carousel/Float3;

    iget-object v13, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v2, v13}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 97
    .local v2, d:Lcom/google/android/opengl/carousel/Float3;
    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 99
    const/high16 v13, 0x3f80

    div-float v6, v13, v3

    .line 101
    .local v6, invDiv:F
    invoke-static {v2, v7}, Lcom/google/android/opengl/carousel/Float3;->dot(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)F

    move-result v13

    mul-float v11, v13, v6

    .line 102
    .local v11, u:F
    const/4 v13, 0x0

    cmpg-float v13, v11, v13

    if-ltz v13, :cond_1

    const/high16 v13, 0x3f80

    cmpl-float v13, v11, v13

    if-lez v13, :cond_2

    .line 103
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v2, v4}, Lcom/google/android/opengl/carousel/Float3;->cross(Lcom/google/android/opengl/carousel/Float3;)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v8

    .line 106
    .local v8, s2:Lcom/google/android/opengl/carousel/Float3;
    iget-object v13, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    invoke-static {v13, v8}, Lcom/google/android/opengl/carousel/Float3;->dot(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)F

    move-result v13

    mul-float v12, v13, v6

    .line 108
    .local v12, v:F
    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-ltz v13, :cond_3

    add-float v13, v11, v12

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 109
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 111
    :cond_4
    invoke-static {v5, v8}, Lcom/google/android/opengl/carousel/Float3;->dot(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)F

    move-result v13

    mul-float v9, v13, v6

    .line 112
    .local v9, t:F
    cmpg-float v13, v9, v10

    if-ltz v13, :cond_5

    iget v13, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpl-float v13, v9, v13

    if-lez v13, :cond_6

    .line 113
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 115
    :cond_6
    iput v9, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 117
    const/4 v13, 0x1

    goto :goto_0
.end method
