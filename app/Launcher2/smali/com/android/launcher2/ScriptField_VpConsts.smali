.class public Lcom/android/launcher2/ScriptField_VpConsts;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VpConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ScriptField_VpConsts$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/launcher2/ScriptField_VpConsts$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mItemArray:[Lcom/android/launcher2/ScriptField_VpConsts$Item;

    .line 63
    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 64
    invoke-static {p1}, Lcom/android/launcher2/ScriptField_VpConsts;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mElement:Landroid/renderscript/Element;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ScriptField_VpConsts;->init(Landroid/renderscript/RenderScript;I)V

    .line 66
    return-void
.end method

.method private copyToArray(Lcom/android/launcher2/ScriptField_VpConsts$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/launcher2/ScriptField_VpConsts;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x70

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x70

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/launcher2/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/launcher2/ScriptField_VpConsts$Item;->Position:Landroid/renderscript/Float4;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/launcher2/ScriptField_VpConsts$Item;->BendPos:Landroid/renderscript/Float2;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ImgSize:Landroid/renderscript/Float2;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 83
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 52
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 53
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Proj"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 54
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "ScaleOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "BendPos"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "ImgSize"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public set(Lcom/android/launcher2/ScriptField_VpConsts$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mItemArray:[Lcom/android/launcher2/ScriptField_VpConsts$Item;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ScriptField_VpConsts;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher2/ScriptField_VpConsts$Item;

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mItemArray:[Lcom/android/launcher2/ScriptField_VpConsts$Item;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mItemArray:[Lcom/android/launcher2/ScriptField_VpConsts$Item;

    aput-object p1, v0, p2

    .line 88
    if-eqz p3, :cond_1

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/ScriptField_VpConsts;->copyToArray(Lcom/android/launcher2/ScriptField_VpConsts$Item;I)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/launcher2/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 93
    :cond_1
    return-void
.end method
