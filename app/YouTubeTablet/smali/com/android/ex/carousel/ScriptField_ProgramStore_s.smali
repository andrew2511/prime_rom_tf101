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
