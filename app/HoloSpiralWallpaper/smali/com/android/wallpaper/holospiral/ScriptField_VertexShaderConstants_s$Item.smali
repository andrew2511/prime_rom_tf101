.class public Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_VertexShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field farPlane:F

.field maxPointSize:F

.field modelViewProj:Landroid/renderscript/Matrix4f;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    .line 39
    return-void
.end method
