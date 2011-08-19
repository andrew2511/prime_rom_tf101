.class public Lcom/android/launcher2/ScriptField_VpConsts$Item;
.super Ljava/lang/Object;
.source "ScriptField_VpConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ScriptField_VpConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field BendPos:Landroid/renderscript/Float2;

.field ImgSize:Landroid/renderscript/Float2;

.field Position:Landroid/renderscript/Float4;

.field Proj:Landroid/renderscript/Matrix4f;

.field ScaleOffset:Landroid/renderscript/Float4;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    .line 41
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->Position:Landroid/renderscript/Float4;

    .line 42
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ScaleOffset:Landroid/renderscript/Float4;

    .line 43
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->BendPos:Landroid/renderscript/Float2;

    .line 44
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ScriptField_VpConsts$Item;->ImgSize:Landroid/renderscript/Float2;

    .line 45
    return-void
.end method
