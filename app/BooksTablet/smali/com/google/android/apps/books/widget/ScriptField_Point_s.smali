.class public Lcom/google/android/apps/books/widget/ScriptField_Point_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Point_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 43
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 44
    invoke-static {p1}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mElement:Landroid/renderscript/Element;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 50
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 51
    invoke-static {p1}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mElement:Landroid/renderscript/Element;

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 53
    return-void
.end method

.method private copyToArray(Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;I)V
    .locals 3
    .parameter "i"
    .parameter "index"

    .prologue
    const/4 v2, 0x4

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x28

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->position:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, v2}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->texture0:Landroid/renderscript/Float2;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->normal:Landroid/renderscript/Float3;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, v2}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 63
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 32
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 33
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 34
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 35
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "texture0"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 36
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 37
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_2"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 38
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyAll()V
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->copyToArray(Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 143
    return-void
.end method

.method public get(I)Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public get_normal(I)Landroid/renderscript/Float3;
    .locals 1
    .parameter "index"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->normal:Landroid/renderscript/Float3;

    goto :goto_0
.end method

.method public get_position(I)Landroid/renderscript/Float3;
    .locals 1
    .parameter "index"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->position:Landroid/renderscript/Float3;

    goto :goto_0
.end method

.method public get_texture0(I)Landroid/renderscript/Float2;
    .locals 1
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->texture0:Landroid/renderscript/Float2;

    goto :goto_0
.end method

.method public resize(I)V
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    array-length v2, v3

    .line 148
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 149
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 157
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    new-array v1, p1, [Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 151
    .local v1, ni:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 155
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 156
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    goto :goto_0
.end method

.method public set(Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aput-object p1, v0, p2

    .line 68
    if-eqz p3, :cond_1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->copyToArray(Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 73
    :cond_1
    return-void
.end method

.method public set_normal(ILandroid/renderscript/Float3;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->normal:Landroid/renderscript/Float3;

    .line 115
    if-eqz p3, :cond_3

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x28

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 118
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 119
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 123
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
    .line 81
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->position:Landroid/renderscript/Float3;

    .line 85
    if-eqz p3, :cond_3

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x28

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 88
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 89
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 93
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_texture0(ILandroid/renderscript/Float2;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->texture0:Landroid/renderscript/Float2;

    .line 100
    if-eqz p3, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x28

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 103
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 104
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 108
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
