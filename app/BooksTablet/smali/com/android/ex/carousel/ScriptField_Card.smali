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

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 80
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 81
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_Card;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mElement:Landroid/renderscript/Element;

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_Card;->init(Landroid/renderscript/RenderScript;II)V

    .line 83
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
.method public copyAll()V
    .locals 4

    .prologue
    .line 452
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 454
    return-void
.end method

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

.method public get_cardVisible(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    goto :goto_0
.end method

.method public get_detailLineOffset(I)Landroid/renderscript/Float2;
    .locals 1
    .parameter "index"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    goto :goto_0
.end method

.method public get_detailTexture(I)Landroid/renderscript/Allocation;
    .locals 1
    .parameter "index"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    goto :goto_0
.end method

.method public get_detailTextureOffset(I)Landroid/renderscript/Float2;
    .locals 1
    .parameter "index"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    goto :goto_0
.end method

.method public get_detailTexturePosition(I)[Landroid/renderscript/Float2;
    .locals 1
    .parameter "index"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    goto :goto_0
.end method

.method public get_detailTextureState(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    goto :goto_0
.end method

.method public get_detailTextureTimeStamp(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 443
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    goto :goto_0
.end method

.method public get_detailVisible(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    goto :goto_0
.end method

.method public get_geometry(I)Landroid/renderscript/Mesh;
    .locals 1
    .parameter "index"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    goto :goto_0
.end method

.method public get_geometryState(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    goto :goto_0
.end method

.method public get_geometryTimeStamp(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 448
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    goto :goto_0
.end method

.method public get_matrix(I)Landroid/renderscript/Matrix4f;
    .locals 1
    .parameter "index"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    goto :goto_0
.end method

.method public get_shouldPrefetch(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 433
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    goto :goto_0
.end method

.method public get_texture(I)Landroid/renderscript/Allocation;
    .locals 1
    .parameter "index"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    goto :goto_0
.end method

.method public get_textureState(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    goto :goto_0
.end method

.method public get_textureTimeStamp(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 438
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

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

.method public set_cardVisible(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 282
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

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    .line 286
    if-eqz p3, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x78

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 288
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 289
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 290
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 291
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 294
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_detailLineOffset(ILandroid/renderscript/Float2;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 171
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

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    .line 175
    if-eqz p3, :cond_3

    .line 176
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 177
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 178
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 179
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 180
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 183
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_detailTexture(ILandroid/renderscript/Allocation;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 141
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

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    .line 145
    if-eqz p3, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 147
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 148
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 149
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 150
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 153
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_detailTextureOffset(ILandroid/renderscript/Float2;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 156
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

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    .line 160
    if-eqz p3, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 162
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 163
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 164
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 165
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 168
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_detailTexturePosition(I[Landroid/renderscript/Float2;Z)V
    .locals 5
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    const/4 v4, 0x2

    .line 186
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v2, :cond_0

    new-instance v2, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/lit16 v3, v3, 0xa0

    invoke-direct {v2, v3}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    new-array v2, v2, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v2, v2, p1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v3, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v3}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v3, v2, p1

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v2, v2, p1

    iput-object p2, v2, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    .line 190
    if-eqz p3, :cond_5

    .line 191
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v3, p1, 0xa0

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 192
    const/4 v0, 0x0

    .local v0, ct1:I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_3
    new-instance v1, Landroid/renderscript/FieldPacker;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 197
    .local v1, fp:Landroid/renderscript/FieldPacker;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 198
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_4
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 204
    .end local v0           #ct1:I
    .end local v1           #fp:Landroid/renderscript/FieldPacker;
    :cond_5
    return-void
.end method

.method public set_detailTextureState(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 252
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

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    .line 256
    if-eqz p3, :cond_3

    .line 257
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x70

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 258
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 259
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 260
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 261
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 264
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_detailTextureTimeStamp(IJZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 342
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

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    .line 346
    if-eqz p4, :cond_3

    .line 347
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x90

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 348
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 349
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 350
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 351
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 354
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_detailVisible(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 297
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

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    .line 301
    if-eqz p3, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 303
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 304
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 305
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 306
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 309
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_geometry(ILandroid/renderscript/Mesh;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 207
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

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    .line 211
    if-eqz p3, :cond_3

    .line 212
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 213
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 214
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 215
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 216
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 219
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_geometryState(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 267
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

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    .line 271
    if-eqz p3, :cond_3

    .line 272
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x74

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 273
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 274
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 275
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 276
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 279
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_geometryTimeStamp(IJZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 357
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

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    .line 361
    if-eqz p4, :cond_3

    .line 362
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x98

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 363
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 364
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 365
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 366
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 369
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_matrix(ILandroid/renderscript/Matrix4f;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 222
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

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    .line 226
    if-eqz p3, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 228
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 229
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 230
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 231
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 234
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_shouldPrefetch(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 312
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

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    .line 316
    if-eqz p3, :cond_3

    .line 317
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 318
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 319
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 320
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 321
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 324
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_texture(ILandroid/renderscript/Allocation;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 126
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

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    .line 130
    if-eqz p3, :cond_3

    .line 131
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 132
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 133
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 134
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 135
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 138
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_textureState(IIZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 237
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

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    .line 241
    if-eqz p3, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 243
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 244
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 245
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 246
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 249
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_textureTimeStamp(IJZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 327
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

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

    .line 331
    if-eqz p4, :cond_3

    .line 332
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x88

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 333
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 334
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 335
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 336
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xe

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 339
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
