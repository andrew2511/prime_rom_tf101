.class public Lcom/android/ex/carousel/ScriptField_Card;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Card.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_Card$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 73
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 74
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_Card;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mElement:Landroid/renderscript/Element;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_Card;->init(Landroid/renderscript/RenderScript;I)V

    .line 76
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V
    .locals 4
    .parameter "i"
    .parameter "index"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p2, 0xa0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 88
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 89
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 90
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 91
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 92
    const/4 v0, 0x0

    .local v0, ct2:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 97
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 98
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 99
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 100
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 101
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 102
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 103
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 104
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 105
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-wide v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 106
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-wide v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 107
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-wide v2, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 108
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 4
    .parameter "rs"

    .prologue
    .line 50
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 51
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "texture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 52
    invoke-static {p0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 53
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 54
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailLineOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexturePosition"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometry"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "matrix"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 61
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "cardVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 62
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 63
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "shouldPrefetch"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 64
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 65
    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 66
    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 67
    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/android/ex/carousel/ScriptField_Card$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public resize(I)V
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 457
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-eqz v3, :cond_2

    .line 458
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    array-length v2, v3

    .line 459
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 460
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 468
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    return-void

    .line 461
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 462
    .local v1, ni:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 466
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 467
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0xa0

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    goto :goto_0
.end method

.method public set(Lcom/android/ex/carousel/ScriptField_Card$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aput-object p1, v0, p2

    .line 113
    if-eqz p3, :cond_1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V

    .line 115
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 118
    :cond_1
    return-void
.end method
