.class public Lcom/layar/core/ModelRenderer;
.super Ljava/lang/Object;
.source "ModelRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/core/ModelRenderer$Coord3Df;
    }
.end annotation


# static fields
.field private static final ONE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "layar.ModelRenderer"


# instance fields
.field public boundingBoxMax:[F

.field public boundingBoxMin:[F

.field lightingEnabled:Z

.field matAmbient:[F

.field matDiffuse:[F

.field matSpecular:[F

.field materials:[Lcom/layar/core/Layar3DModel$Material;

.field private nBuffer:Ljava/nio/IntBuffer;

.field private numFaces:I

.field private tBuffer:Ljava/nio/IntBuffer;

.field textureIds:[I

.field private texturesReady:Z

.field useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

.field private vBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Lcom/layar/core/Layar3DModel;)V
    .locals 14
    .parameter "model"

    .prologue
    const/4 v8, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/high16 v11, 0x4780

    const/4 v10, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v7, v13, [F

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    .line 32
    new-array v7, v13, [F

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    .line 36
    new-array v7, v8, [F

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->matAmbient:[F

    .line 37
    new-array v7, v8, [F

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->matDiffuse:[F

    .line 38
    new-array v7, v8, [F

    fill-array-data v7, :array_2

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->matSpecular:[F

    .line 43
    sget-boolean v7, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    iput-boolean v7, p0, Lcom/layar/core/ModelRenderer;->lightingEnabled:Z

    .line 45
    iput-boolean v10, p0, Lcom/layar/core/ModelRenderer;->texturesReady:Z

    .line 52
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    aput v8, v7, v10

    .line 53
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    aput v8, v7, v12

    .line 54
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMin:[F

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v9, v9, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    int-to-float v9, v9

    div-float/2addr v9, v11

    aput v9, v7, v8

    .line 55
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    aput v8, v7, v10

    .line 56
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    aput v8, v7, v12

    .line 57
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->boundingBoxMax:[F

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    iget v9, v9, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    int-to-float v9, v9

    div-float/2addr v9, v11

    aput v9, v7, v8

    .line 59
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v7, v7

    iput v7, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    .line 62
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->materials:[Lcom/layar/core/Layar3DModel$Material;

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    .line 63
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    .line 65
    iget v7, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->vBuffer:Ljava/nio/IntBuffer;

    .line 69
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 70
    iget v7, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    .line 75
    :cond_0
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v7, v7

    if-lez v7, :cond_1

    .line 76
    iget v7, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    .line 81
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v7, v7

    if-lt v2, v7, :cond_5

    .line 114
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->vBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 115
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    :cond_2
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 119
    :cond_3
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    if-nez v7, :cond_4

    sget-boolean v7, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    if-eqz v7, :cond_4

    .line 120
    invoke-direct {p0, p1}, Lcom/layar/core/ModelRenderer;->calculateNormals(Lcom/layar/core/Layar3DModel;)V

    .line 122
    :cond_4
    return-void

    .line 82
    :cond_5
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    aget-object v1, v7, v2

    .line 84
    .local v1, face:Lcom/layar/core/Layar3DModel$Face;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-lt v3, v13, :cond_6

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_6
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v8, v1, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v8, v8, v3

    sub-int/2addr v8, v12

    aget-object v6, v7, v8

    .line 86
    .local v6, v:Lcom/layar/core/Layar3DModel$Coord3D;
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->vBuffer:Ljava/nio/IntBuffer;

    iget v8, v6, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 87
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->vBuffer:Ljava/nio/IntBuffer;

    iget v8, v6, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 88
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->vBuffer:Ljava/nio/IntBuffer;

    iget v8, v6, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 89
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_7

    .line 90
    iget-object v7, v1, Lcom/layar/core/Layar3DModel$Face;->t:[I

    aget v7, v7, v3

    if-lez v7, :cond_9

    .line 91
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

    iget-object v8, v1, Lcom/layar/core/Layar3DModel$Face;->t:[I

    aget v8, v8, v3

    sub-int/2addr v8, v12

    aget-object v5, v7, v8

    .line 92
    .local v5, t:Lcom/layar/core/Layar3DModel$Coord2D;
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    iget v8, v5, Lcom/layar/core/Layar3DModel$Coord2D;->u:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 93
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    const/high16 v8, 0x1

    iget v9, v5, Lcom/layar/core/Layar3DModel$Coord2D;->v:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 99
    .end local v5           #t:Lcom/layar/core/Layar3DModel$Coord2D;
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_8

    .line 100
    iget-object v7, v1, Lcom/layar/core/Layar3DModel$Face;->n:[I

    aget v7, v7, v3

    if-lez v7, :cond_a

    .line 101
    iget-object v7, p1, Lcom/layar/core/Layar3DModel;->normals:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v8, v1, Lcom/layar/core/Layar3DModel$Face;->n:[I

    aget v8, v8, v3

    sub-int/2addr v8, v12

    aget-object v4, v7, v8

    .line 102
    .local v4, n:Lcom/layar/core/Layar3DModel$Coord3D;
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    iget v8, v4, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 103
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    iget v8, v4, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 104
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    iget v8, v4, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 84
    .end local v4           #n:Lcom/layar/core/Layar3DModel$Coord3D;
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_9
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 96
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_2

    .line 106
    :cond_a
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 107
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 108
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_3

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private add(Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;)Lcom/layar/core/Layar3DModel$Coord3D;
    .locals 3
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 211
    new-instance v0, Lcom/layar/core/Layar3DModel$Coord3D;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Coord3D;-><init>()V

    .line 212
    .local v0, r:Lcom/layar/core/Layar3DModel$Coord3D;
    iget v1, p1, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    iget v2, p2, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 213
    iget v1, p1, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    iget v2, p2, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 214
    iget v1, p1, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    iget v2, p2, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 215
    return-object v0
.end method

.method private calculateFaceNormal(Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;)Lcom/layar/core/Layar3DModel$Coord3D;
    .locals 9
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"

    .prologue
    const/high16 v8, 0x4780

    .line 199
    new-instance v0, Lcom/layar/core/Layar3DModel$Coord3D;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Coord3D;-><init>()V

    .line 200
    .local v0, n:Lcom/layar/core/Layar3DModel$Coord3D;
    new-instance v1, Lcom/layar/core/ModelRenderer$Coord3Df;

    invoke-direct {v1, p0, p1}, Lcom/layar/core/ModelRenderer$Coord3Df;-><init>(Lcom/layar/core/ModelRenderer;Lcom/layar/core/Layar3DModel$Coord3D;)V

    .line 201
    .local v1, v1f:Lcom/layar/core/ModelRenderer$Coord3Df;
    new-instance v2, Lcom/layar/core/ModelRenderer$Coord3Df;

    invoke-direct {v2, p0, p2}, Lcom/layar/core/ModelRenderer$Coord3Df;-><init>(Lcom/layar/core/ModelRenderer;Lcom/layar/core/Layar3DModel$Coord3D;)V

    .line 202
    .local v2, v2f:Lcom/layar/core/ModelRenderer$Coord3Df;
    new-instance v3, Lcom/layar/core/ModelRenderer$Coord3Df;

    invoke-direct {v3, p0, p3}, Lcom/layar/core/ModelRenderer$Coord3Df;-><init>(Lcom/layar/core/ModelRenderer;Lcom/layar/core/Layar3DModel$Coord3D;)V

    .line 204
    .local v3, v3f:Lcom/layar/core/ModelRenderer$Coord3Df;
    iget v4, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    iget v5, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    iget v6, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    iget v6, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    iget v7, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 205
    iget v4, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    iget v5, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    iget v6, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    iget v6, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    iget v7, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 206
    iget v4, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    iget v5, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    iget v6, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    iget v6, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    iget v7, v2, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v0, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 207
    return-object v0
.end method

.method private calculateNormals(Lcom/layar/core/Layar3DModel;)V
    .locals 13
    .parameter "model"

    .prologue
    .line 126
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v8, v8

    new-array v7, v8, [Lcom/layar/core/Layar3DModel$Coord3D;

    .line 127
    .local v7, vNormals:[Lcom/layar/core/Layar3DModel$Coord3D;
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    array-length v8, v8

    new-array v6, v8, [I

    .line 129
    .local v6, vCount:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v8, v8

    if-lt v3, v8, :cond_0

    .line 146
    const/4 v3, 0x0

    :goto_1
    array-length v8, v6

    if-lt v3, v8, :cond_3

    .line 155
    iget v8, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    mul-int/lit8 v8, v8, 0x3

    mul-int/lit8 v8, v8, 0x3

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    .line 159
    const/4 v3, 0x0

    :goto_2
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    array-length v8, v8

    if-lt v3, v8, :cond_5

    .line 183
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    return-void

    .line 130
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    aget-object v2, v8, v3

    .line 132
    .local v2, face:Lcom/layar/core/Layar3DModel$Face;
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v9, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    .line 133
    iget-object v9, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v10, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v9, v9, v10

    .line 134
    iget-object v10, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v11, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-object v10, v10, v11

    .line 131
    invoke-direct {p0, v8, v9, v10}, Lcom/layar/core/ModelRenderer;->calculateFaceNormal(Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;)Lcom/layar/core/Layar3DModel$Coord3D;

    move-result-object v1

    .line 136
    .local v1, fNormal:Lcom/layar/core/Layar3DModel$Coord3D;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    const/4 v8, 0x3

    if-lt v4, v8, :cond_1

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v8, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget v8, v6, v8

    if-lez v8, :cond_2

    .line 138
    iget-object v8, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iget-object v9, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v9, v9, v4

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v9, v7, v9

    invoke-direct {p0, v1, v9}, Lcom/layar/core/ModelRenderer;->add(Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;)Lcom/layar/core/Layar3DModel$Coord3D;

    move-result-object v9

    aput-object v9, v7, v8

    .line 142
    :goto_4
    iget-object v8, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 140
    :cond_2
    iget-object v8, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aput-object v1, v7, v8

    goto :goto_4

    .line 147
    .end local v1           #fNormal:Lcom/layar/core/Layar3DModel$Coord3D;
    .end local v2           #face:Lcom/layar/core/Layar3DModel$Face;
    .end local v4           #j:I
    :cond_3
    aget v8, v6, v3

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 148
    aget-object v8, v7, v3

    iget v9, v8, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    aget v10, v6, v3

    div-int/2addr v9, v10

    iput v9, v8, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 149
    aget-object v8, v7, v3

    iget v9, v8, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    aget v10, v6, v3

    div-int/2addr v9, v10

    iput v9, v8, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 150
    aget-object v8, v7, v3

    iget v9, v8, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    aget v10, v6, v3

    div-int/2addr v9, v10

    iput v9, v8, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    .line 152
    :cond_4
    aget-object v8, v7, v3

    invoke-direct {p0, v8}, Lcom/layar/core/ModelRenderer;->normalize(Lcom/layar/core/Layar3DModel$Coord3D;)V

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 160
    .restart local v0       #bb:Ljava/nio/ByteBuffer;
    :cond_5
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->faces:[Lcom/layar/core/Layar3DModel$Face;

    aget-object v2, v8, v3

    .line 163
    .restart local v2       #face:Lcom/layar/core/Layar3DModel$Face;
    iget-object v8, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v9, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    .line 164
    iget-object v9, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v10, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v9, v9, v10

    .line 165
    iget-object v10, p1, Lcom/layar/core/Layar3DModel;->vertices:[Lcom/layar/core/Layar3DModel$Coord3D;

    iget-object v11, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-object v10, v10, v11

    .line 162
    invoke-direct {p0, v8, v9, v10}, Lcom/layar/core/ModelRenderer;->calculateFaceNormal(Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;Lcom/layar/core/Layar3DModel$Coord3D;)Lcom/layar/core/Layar3DModel$Coord3D;

    move-result-object v1

    .line 166
    .restart local v1       #fNormal:Lcom/layar/core/Layar3DModel$Coord3D;
    invoke-direct {p0, v1}, Lcom/layar/core/ModelRenderer;->normalize(Lcom/layar/core/Layar3DModel$Coord3D;)V

    .line 168
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_5
    const/4 v8, 0x3

    if-lt v4, v8, :cond_6

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 170
    :cond_6
    iget-object v8, v2, Lcom/layar/core/Layar3DModel$Face;->v:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-object v5, v7, v8

    .line 171
    .local v5, n:Lcom/layar/core/Layar3DModel$Coord3D;
    if-eqz v5, :cond_7

    .line 172
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    iget v9, v5, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 173
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    iget v9, v5, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 174
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    iget v9, v5, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 168
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 176
    :cond_7
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 177
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 178
    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_6
.end method

.method private getColorArray(Lcom/layar/core/Layar3DModel$Color;)[I
    .locals 3
    .parameter "color"

    .prologue
    .line 323
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p1, Lcom/layar/core/Layar3DModel$Color;->r:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/layar/core/Layar3DModel$Color;->g:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/layar/core/Layar3DModel$Color;->b:I

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private initTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    const/high16 v13, 0x4618

    const/4 v12, 0x1

    const v11, 0x46240400

    const/4 v10, 0x0

    const/16 v9, 0xde1

    .line 327
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    if-nez v7, :cond_0

    .line 394
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v6, 0x0

    .line 330
    .local v6, textureCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 340
    new-array v7, v6, [I

    iput-object v7, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, t:I
    const/4 v2, 0x0

    :goto_2
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v7, v7

    if-lt v2, v7, :cond_4

    .line 393
    iput-boolean v12, p0, Lcom/layar/core/ModelRenderer;->texturesReady:Z

    goto :goto_0

    .line 331
    .end local v4           #t:I
    :cond_1
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v7, :cond_2

    .line 332
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v7}, Lcom/layar/core/Texture;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 333
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    check-cast v7, Lcom/layar/core/AnimatedTexture;

    invoke-virtual {v7}, Lcom/layar/core/AnimatedTexture;->getFrameCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 330
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 335
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 344
    .restart local v4       #t:I
    :cond_4
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v3, v7, v2

    .line 345
    .local v3, m:Lcom/layar/core/Layar3DModel$Material;
    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v7, :cond_5

    .line 346
    iput v4, v3, Lcom/layar/core/Layar3DModel$Material;->textureId:I

    .line 348
    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v7}, Lcom/layar/core/Texture;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 349
    iget-object v5, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    check-cast v5, Lcom/layar/core/AnimatedTexture;

    .line 350
    .local v5, texture:Lcom/layar/core/AnimatedTexture;
    const/4 v1, 0x0

    .local v1, f:I
    :goto_4
    invoke-virtual {v5}, Lcom/layar/core/AnimatedTexture;->getFrameCount()I

    move-result v7

    if-lt v1, v7, :cond_6

    .line 343
    .end local v1           #f:I
    .end local v5           #texture:Lcom/layar/core/AnimatedTexture;
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 351
    .restart local v1       #f:I
    .restart local v5       #texture:Lcom/layar/core/AnimatedTexture;
    :cond_6
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    invoke-interface {p1, v12, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 352
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 353
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    aget v7, v7, v4

    invoke-interface {p1, v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 355
    const/16 v7, 0x2801

    invoke-interface {p1, v9, v7, v13}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 356
    const/16 v7, 0x2800

    const v8, 0x46180400

    invoke-interface {p1, v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 357
    const/16 v7, 0x2802

    invoke-interface {p1, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 358
    const/16 v7, 0x2803

    invoke-interface {p1, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 360
    invoke-virtual {v5, v1}, Lcom/layar/core/AnimatedTexture;->getFrameData(I)[B

    move-result-object v7

    invoke-virtual {v5, v1}, Lcom/layar/core/AnimatedTexture;->getFrameData(I)[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v9, v10, v0, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 366
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 372
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #f:I
    .end local v5           #texture:Lcom/layar/core/AnimatedTexture;
    :cond_7
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    invoke-interface {p1, v12, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 373
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 374
    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    aget v7, v7, v4

    invoke-interface {p1, v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 376
    const/16 v7, 0x2801

    invoke-interface {p1, v9, v7, v13}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 377
    const/16 v7, 0x2800

    const v8, 0x46180400

    invoke-interface {p1, v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 378
    const/16 v7, 0x2802

    invoke-interface {p1, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 379
    const/16 v7, 0x2803

    invoke-interface {p1, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 381
    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v7}, Lcom/layar/core/Texture;->getTextureData()[B

    move-result-object v7

    iget-object v8, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v8}, Lcom/layar/core/Texture;->getTextureData()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-static {v9, v10, v0, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 387
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method private normalize(Lcom/layar/core/Layar3DModel$Coord3D;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v1, Lcom/layar/core/ModelRenderer$Coord3Df;

    invoke-direct {v1, p0, p1}, Lcom/layar/core/ModelRenderer$Coord3Df;-><init>(Lcom/layar/core/ModelRenderer;Lcom/layar/core/Layar3DModel$Coord3D;)V

    .line 222
    .local v1, vf:Lcom/layar/core/ModelRenderer$Coord3Df;
    iget v2, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    iget v3, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    iget v4, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    iget v4, v1, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 224
    .local v0, length:F
    iget v2, p1, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    .line 225
    iget v2, p1, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    .line 226
    iget v2, p1, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    const/4 v13, 0x4

    const/16 v12, 0x408

    const/high16 v7, 0x3f80

    const/4 v11, 0x0

    const/16 v10, 0xde1

    .line 230
    iget-boolean v6, p0, Lcom/layar/core/ModelRenderer;->texturesReady:Z

    if-nez v6, :cond_0

    invoke-direct {p0, p1}, Lcom/layar/core/ModelRenderer;->initTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 232
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 233
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 235
    const/16 v6, 0xb44

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 236
    const/16 v6, 0x1d01

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 238
    iget-boolean v6, p0, Lcom/layar/core/ModelRenderer;->lightingEnabled:Z

    if-eqz v6, :cond_1

    const/16 v6, 0xb50

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 240
    :cond_1
    const v6, 0x8074

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 241
    const/4 v6, 0x3

    const/16 v7, 0x140c

    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->vBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v6, v7, v11, v8}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 242
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    if-eqz v6, :cond_2

    .line 243
    const v6, 0x8075

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 244
    const/16 v6, 0x140c

    iget-object v7, p0, Lcom/layar/core/ModelRenderer;->nBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v6, v11, v7}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 248
    :cond_2
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    if-eqz v6, :cond_3

    .line 249
    const v6, 0x8078

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 250
    const/4 v6, 0x2

    const/16 v7, 0x140c

    iget-object v8, p0, Lcom/layar/core/ModelRenderer;->tBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v6, v7, v11, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 253
    :cond_3
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    array-length v6, v6

    if-lez v6, :cond_a

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, fIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    array-length v6, v6

    if-lt v1, v6, :cond_6

    .line 291
    const/16 v6, 0xbe2

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 292
    const/16 v6, 0xb71

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 294
    iget v6, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    if-ge v0, v6, :cond_4

    .line 295
    mul-int/lit8 v6, v0, 0x3

    iget v7, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x3

    invoke-interface {p1, v13, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 303
    .end local v0           #fIndex:I
    .end local v1           #i:I
    :cond_4
    :goto_1
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 304
    const/16 v6, 0xb44

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 306
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 308
    iget-boolean v6, p0, Lcom/layar/core/ModelRenderer;->lightingEnabled:Z

    if-eqz v6, :cond_5

    const/16 v6, 0xb50

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 309
    :cond_5
    return-void

    .line 256
    .restart local v0       #fIndex:I
    .restart local v1       #i:I
    :cond_6
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

    aget-object v2, v6, v1

    .line 257
    .local v2, m:Lcom/layar/core/Layar3DModel$UseMaterial;
    iget v6, v2, Lcom/layar/core/Layar3DModel$UseMaterial;->faceIndex:I

    sub-int v4, v6, v0

    .line 258
    .local v4, n:I
    if-lez v4, :cond_7

    .line 259
    mul-int/lit8 v6, v0, 0x3

    mul-int/lit8 v7, v4, 0x3

    invoke-interface {p1, v13, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 260
    iget v0, v2, Lcom/layar/core/Layar3DModel$UseMaterial;->faceIndex:I

    .line 263
    :cond_7
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    iget v7, v2, Lcom/layar/core/Layar3DModel$UseMaterial;->material:I

    aget-object v3, v6, v7

    .line 264
    .local v3, mat:Lcom/layar/core/Layar3DModel$Material;
    const/16 v6, 0x1200

    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    invoke-direct {p0, v7}, Lcom/layar/core/ModelRenderer;->getColorArray(Lcom/layar/core/Layar3DModel$Color;)[I

    move-result-object v7

    invoke-interface {p1, v12, v6, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 265
    const/16 v6, 0x1201

    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    invoke-direct {p0, v7}, Lcom/layar/core/ModelRenderer;->getColorArray(Lcom/layar/core/Layar3DModel$Color;)[I

    move-result-object v7

    invoke-interface {p1, v12, v6, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 266
    const/16 v6, 0x1202

    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    invoke-direct {p0, v7}, Lcom/layar/core/ModelRenderer;->getColorArray(Lcom/layar/core/Layar3DModel$Color;)[I

    move-result-object v7

    invoke-interface {p1, v12, v6, v7, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 267
    const/16 v6, 0x1601

    iget v7, v3, Lcom/layar/core/Layar3DModel$Material;->specularExponent:I

    invoke-interface {p1, v12, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 269
    iget-object v6, v3, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    iget v6, v6, Lcom/layar/core/Layar3DModel$Color;->r:I

    iget-object v7, v3, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    iget v7, v7, Lcom/layar/core/Layar3DModel$Color;->g:I

    iget-object v8, v3, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    iget v8, v8, Lcom/layar/core/Layar3DModel$Color;->b:I

    const/high16 v9, 0x1

    invoke-interface {p1, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 271
    iget-object v6, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v6, :cond_9

    .line 272
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 273
    const v6, 0x84c0

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 275
    iget-object v6, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v6}, Lcom/layar/core/Texture;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 276
    iget-object v6, v3, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    check-cast v6, Lcom/layar/core/AnimatedTexture;

    invoke-virtual {v6}, Lcom/layar/core/AnimatedTexture;->getFrameIndex()I

    move-result v5

    .line 277
    .local v5, offset:I
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    iget v7, v3, Lcom/layar/core/Layar3DModel$Material;->textureId:I

    add-int/2addr v7, v5

    aget v6, v6, v7

    invoke-interface {p1, v10, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 282
    .end local v5           #offset:I
    :goto_2
    const/16 v6, 0x2802

    .line 283
    const/16 v7, 0x2901

    .line 282
    invoke-interface {p1, v10, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 284
    const/16 v6, 0x2803

    .line 285
    const/16 v7, 0x2901

    .line 284
    invoke-interface {p1, v10, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 255
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 279
    :cond_8
    iget-object v6, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    iget v7, v3, Lcom/layar/core/Layar3DModel$Material;->textureId:I

    aget v6, v6, v7

    invoke-interface {p1, v10, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_2

    .line 287
    :cond_9
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_3

    .line 299
    .end local v0           #fIndex:I
    .end local v1           #i:I
    .end local v2           #m:Lcom/layar/core/Layar3DModel$UseMaterial;
    .end local v3           #mat:Lcom/layar/core/Layar3DModel$Material;
    .end local v4           #n:I
    :cond_a
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 300
    iget v6, p0, Lcom/layar/core/ModelRenderer;->numFaces:I

    mul-int/lit8 v6, v6, 0x3

    invoke-interface {p1, v13, v11, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_1
.end method

.method public dropTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/layar/core/ModelRenderer;->texturesReady:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->textureIds:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 315
    :cond_0
    iput-boolean v2, p0, Lcom/layar/core/ModelRenderer;->texturesReady:Z

    .line 316
    return-void
.end method

.method public getMaterials()[Lcom/layar/core/Layar3DModel$Material;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    return-object v0
.end method

.method public isLightingEnabled()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/layar/core/ModelRenderer;->lightingEnabled:Z

    return v0
.end method

.method public reloadTextures()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/ModelRenderer;->texturesReady:Z

    .line 320
    return-void
.end method

.method public setDiffuseColor(IFFF)V
    .locals 3
    .parameter "material"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/high16 v2, 0x4780

    .line 397
    iget-object v0, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    mul-float v1, p2, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/layar/core/Layar3DModel$Color;->r:I

    .line 398
    iget-object v0, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    mul-float v1, p3, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/layar/core/Layar3DModel$Color;->g:I

    .line 399
    iget-object v0, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    mul-float v1, p4, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/layar/core/Layar3DModel$Color;->b:I

    .line 400
    return-void
.end method

.method public setLightingEnabled(Z)V
    .locals 0
    .parameter "lightingEnabled"

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/layar/core/ModelRenderer;->lightingEnabled:Z

    .line 428
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 412
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v1}, Lcom/layar/core/Texture;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 409
    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    check-cast v1, Lcom/layar/core/AnimatedTexture;

    invoke-virtual {v1}, Lcom/layar/core/AnimatedTexture;->start()V

    .line 407
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 420
    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    invoke-interface {v1}, Lcom/layar/core/Texture;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 417
    iget-object v1, p0, Lcom/layar/core/ModelRenderer;->materials:[Lcom/layar/core/Layar3DModel$Material;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/layar/core/Layar3DModel$Material;->texture:Lcom/layar/core/Texture;

    check-cast v1, Lcom/layar/core/AnimatedTexture;

    invoke-virtual {v1}, Lcom/layar/core/AnimatedTexture;->stop()V

    .line 415
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
