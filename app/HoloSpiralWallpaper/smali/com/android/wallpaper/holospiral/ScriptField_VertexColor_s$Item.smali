.class public Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_VertexColor_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field color:Landroid/renderscript/Float4;

.field position:Landroid/renderscript/Float3;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    .line 38
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    .line 39
    return-void
.end method
