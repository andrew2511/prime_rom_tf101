.class public Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VertexColor_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;


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
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 55
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 56
    invoke-static {p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mElement:Landroid/renderscript/Element;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 58
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x20

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 70
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 71
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 72
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

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
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "color"

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
    .line 131
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyToArray(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 133
    return-void
.end method

.method public set_color(ILandroid/renderscript/Float4;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    .line 110
    if-eqz p3, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x20

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 112
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 113
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 114
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 115
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 118
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_position(ILandroid/renderscript/Float3;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    iput-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    new-instance v2, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    invoke-direct {v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mItemArray:[Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    .line 95
    if-eqz p3, :cond_3

    .line 96
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x20

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 97
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 98
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 99
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 100
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 103
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
