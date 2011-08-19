.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 3
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 88
    return-void
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .registers 3
    .parameter "slot"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .registers 3
    .parameter "slot"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitiveCount()I
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_5
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .registers 3
    .parameter "slot"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexAllocationCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_5
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method updateFromNative()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 140
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 141
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Mesh;->getID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(I)I

    move-result v4

    .line 142
    .local v4, vtxCount:I
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Mesh;->getID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(I)I

    move-result v1

    .line 144
    .local v1, idxCount:I
    new-array v5, v4, [I

    .line 145
    .local v5, vtxIDs:[I
    new-array v2, v1, [I

    .line 146
    .local v2, idxIDs:[I
    new-array v3, v1, [I

    .line 148
    .local v3, primitives:[I
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Mesh;->getID()I

    move-result v7

    invoke-virtual {v6, v7, v5, v4}, Landroid/renderscript/RenderScript;->nMeshGetVertices(I[II)V

    .line 149
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Mesh;->getID()I

    move-result v7

    invoke-virtual {v6, v7, v2, v3, v1}, Landroid/renderscript/RenderScript;->nMeshGetIndices(I[I[II)V

    .line 151
    new-array v6, v4, [Landroid/renderscript/Allocation;

    iput-object v6, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 152
    new-array v6, v1, [Landroid/renderscript/Allocation;

    iput-object v6, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 153
    new-array v6, v1, [Landroid/renderscript/Mesh$Primitive;

    iput-object v6, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3e
    if-ge v0, v4, :cond_5b

    .line 156
    aget v6, v5, v0

    if-eqz v6, :cond_58

    .line 157
    iget-object v6, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget v8, v5, v0

    iget-object v9, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v8, v9, v11, v10}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v6, v0

    .line 158
    iget-object v6, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 155
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 162
    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_85

    .line 163
    aget v6, v2, v0

    if-eqz v6, :cond_76

    .line 164
    iget-object v6, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget v8, v2, v0

    iget-object v9, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v8, v9, v11, v10}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v6, v0

    .line 165
    iget-object v6, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 167
    :cond_76
    iget-object v6, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v7

    aget v8, v3, v0

    aget-object v7, v7, v8

    aput-object v7, v6, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 169
    :cond_85
    return-void
.end method
