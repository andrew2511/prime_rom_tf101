.class public Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VertexShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 55
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 56
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 58
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x48

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x48

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 70
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 71
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->maxPointSize:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 72
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->farPlane:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 73
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 46
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 47
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "modelViewProj"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "maxPointSize"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "farPlane"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyAll()V
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 153
    return-void
.end method

.method public set_maxPointSize(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x48

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->maxPointSize:F

    .line 110
    if-eqz p3, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x48

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 112
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 113
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 114
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 115
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 118
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
