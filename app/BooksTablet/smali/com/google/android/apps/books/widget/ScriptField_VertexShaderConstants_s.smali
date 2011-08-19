.class public Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VertexShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 41
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 42
    invoke-static {p1}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 48
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 49
    invoke-static {p1}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 51
    return-void
.end method

.method private copyToArray(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4c

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x4c

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->backFacing:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->u_max:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->v_max:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 60
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 31
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 32
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "modelViewProj"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 33
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "backFacing"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 34
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "u_max"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 35
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "v_max"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyAll()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->copyToArray(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 160
    return-void
.end method

.method public get(I)Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public get_backFacing(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->backFacing:F

    goto :goto_0
.end method

.method public get_modelViewProj(I)Landroid/renderscript/Matrix4f;
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    goto :goto_0
.end method

.method public get_u_max(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->u_max:F

    goto :goto_0
.end method

.method public get_v_max(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->v_max:F

    goto :goto_0
.end method

.method public resize(I)V
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    array-length v2, v3

    .line 165
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 174
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    new-array v1, p1, [Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 168
    .local v1, ni:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 172
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 173
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4c

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    goto :goto_0
.end method

.method public set(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aput-object p1, v0, p2

    .line 65
    if-eqz p3, :cond_1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->copyToArray(Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 70
    :cond_1
    return-void
.end method

.method public set_backFacing(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4c

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->backFacing:F

    .line 97
    if-eqz p3, :cond_3

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4c

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 100
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 101
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 105
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_modelViewProj(ILandroid/renderscript/Matrix4f;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4c

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    .line 82
    if-eqz p3, :cond_3

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 85
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 86
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 90
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_u_max(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4c

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->u_max:F

    .line 112
    if-eqz p3, :cond_3

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4c

    add-int/lit8 v2, v2, 0x44

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 115
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 116
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 120
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_v_max(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4c

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->v_max:F

    .line 127
    if-eqz p3, :cond_3

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4c

    add-int/lit8 v2, v2, 0x48

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 130
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 131
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 135
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
