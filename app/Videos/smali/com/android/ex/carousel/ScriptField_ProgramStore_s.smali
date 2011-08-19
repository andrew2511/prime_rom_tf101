.class public Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_ProgramStore_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 34
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 35
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 41
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 42
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 44
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 49
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 50
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 27
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 28
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "programStore"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 29
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyAll()V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 90
    return-void
.end method

.method public get(I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public get_programStore(I)Landroid/renderscript/ProgramStore;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    goto :goto_0
.end method

.method public resize(I)V
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 93
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    array-length v2, v3

    .line 95
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 96
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 104
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 98
    .local v1, ni:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 102
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 103
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    goto :goto_0
.end method

.method public set(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aput-object p1, v0, p2

    .line 55
    if-eqz p3, :cond_1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    .line 57
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 60
    :cond_1
    return-void
.end method

.method public set_programStore(ILandroid/renderscript/ProgramStore;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    .line 72
    if-eqz p3, :cond_3

    .line 73
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 74
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 75
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 76
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 77
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 80
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
