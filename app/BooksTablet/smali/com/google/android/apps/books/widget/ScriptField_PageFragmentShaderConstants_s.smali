.class public Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_PageFragmentShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 40
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 41
    invoke-static {p1}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 47
    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 48
    invoke-static {p1}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 50
    return-void
.end method

.method private copyToArray(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x10

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->contentOpacity:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->loadingPresence:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->backgroundColor:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget v1, p1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->fadeinAlpha:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 59
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 30
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 31
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "contentOpacity"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 32
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "loadingPresence"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 33
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 34
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "fadeinAlpha"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyAll()V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->copyToArray(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 159
    return-void
.end method

.method public get(I)Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public get_backgroundColor(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->backgroundColor:F

    goto :goto_0
.end method

.method public get_contentOpacity(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->contentOpacity:F

    goto :goto_0
.end method

.method public get_fadeinAlpha(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->fadeinAlpha:F

    goto :goto_0
.end method

.method public get_loadingPresence(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->loadingPresence:F

    goto :goto_0
.end method

.method public resize(I)V
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-eqz v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    array-length v2, v3

    .line 164
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 173
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    new-array v1, p1, [Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 167
    .local v1, ni:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 171
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 172
    iget-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    goto :goto_0
.end method

.method public set(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aput-object p1, v0, p2

    .line 64
    if-eqz p3, :cond_1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->copyToArray(Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;I)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p2, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 69
    :cond_1
    return-void
.end method

.method public set_backgroundColor(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->backgroundColor:F

    .line 111
    if-eqz p3, :cond_3

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x10

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 114
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 115
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 119
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_contentOpacity(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->contentOpacity:F

    .line 81
    if-eqz p3, :cond_3

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 84
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 85
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 89
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_fadeinAlpha(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->fadeinAlpha:F

    .line 126
    if-eqz p3, :cond_3

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x10

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 129
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 130
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 131
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 134
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method

.method public set_loadingPresence(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    new-instance v2, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mItemArray:[Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s$Item;->loadingPresence:F

    .line 96
    if-eqz p3, :cond_3

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x10

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 99
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 100
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScriptField_PageFragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    .line 104
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    return-void
.end method
