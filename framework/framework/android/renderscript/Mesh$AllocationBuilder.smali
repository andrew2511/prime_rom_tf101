.class public Landroid/renderscript/Mesh$AllocationBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "rs"

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 396
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 397
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 398
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Mesh$AllocationBuilder;)Landroid/renderscript/Mesh;
    .registers 10
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 469
    const-class v5, Landroid/renderscript/Mesh$AllocationBuilder;

    monitor-enter v5

    :try_start_3
    iget v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    iget-object v7, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/renderscript/RenderScript;->nMeshCreate(II)I

    move-result v3

    .line 470
    .local v3, id:I
    new-instance v4, Landroid/renderscript/Mesh;

    invoke-direct {v4, v3, p0}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 471
    .local v4, newMesh:Landroid/renderscript/Mesh;
    iget-object v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/renderscript/Allocation;

    iput-object v6, v4, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 472
    iget-object v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/renderscript/Mesh$Primitive;

    iput-object v6, v4, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 473
    iget v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v6, v6, [Landroid/renderscript/Allocation;

    iput-object v6, v4, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 475
    const/4 v1, 0x0

    .local v1, ct:I
    :goto_2f
    iget-object v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_63

    .line 476
    iget-object v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 477
    .local v2, entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v6, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    if-nez v6, :cond_5b

    const/4 v6, 0x0

    move v0, v6

    .line 478
    .local v0, allocID:I
    :goto_45
    iget-object v6, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v6, v6, Landroid/renderscript/Mesh$Primitive;->mID:I

    invoke-virtual {p0, v3, v0, v6, v1}, Landroid/renderscript/RenderScript;->nMeshBindIndex(IIII)V

    .line 479
    iget-object v6, v4, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    iget-object v7, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v7, v6, v1

    .line 480
    iget-object v6, v4, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    iget-object v7, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v7, v6, v1

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 477
    .end local v0           #allocID:I
    :cond_5b
    iget-object v6, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getID()I

    move-result v6

    move v0, v6

    goto :goto_45

    .line 483
    .end local v2           #entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_63
    const/4 v1, 0x0

    :goto_64
    iget v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    if-ge v1, v6, :cond_7e

    .line 484
    iget-object v6, p1, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    aget-object v2, v6, v1

    .line 485
    .restart local v2       #entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v6, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getID()I

    move-result v6

    invoke-virtual {p0, v3, v6, v1}, Landroid/renderscript/RenderScript;->nMeshBindVertex(III)V

    .line 486
    iget-object v6, v4, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    iget-object v7, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v7, v6, v1

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 488
    .end local v2           #entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_7e
    invoke-virtual {p0, v3}, Landroid/renderscript/RenderScript;->nMeshInitVertexAttribs(I)V
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_83

    .line 490
    monitor-exit v5

    return-object v4

    .line 469
    .end local v1           #ct:I
    .end local v3           #id:I
    .end local v4           #newMesh:Landroid/renderscript/Mesh;
    :catchall_83
    move-exception v6

    monitor-exit v5

    throw v6
.end method


# virtual methods
.method public addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .parameter "a"
    .parameter "p"

    .prologue
    .line 445
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 446
    .local v0, indexType:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 447
    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 448
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 449
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 4
    .parameter "p"

    .prologue
    .line 460
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 461
    .local v0, indexType:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 462
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 463
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 464
    return-object p0
.end method

.method public addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .parameter "a"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_f
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    aput-object v2, v0, v1

    .line 430
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 431
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 432
    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .registers 3

    .prologue
    .line 498
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 499
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, p0}, Landroid/renderscript/Mesh$AllocationBuilder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Mesh$AllocationBuilder;)Landroid/renderscript/Mesh;

    move-result-object v0

    .line 500
    .local v0, sm:Landroid/renderscript/Mesh;
    return-object v0
.end method

.method public getCurrentIndexSetIndex()I
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .registers 3

    .prologue
    .line 405
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method
