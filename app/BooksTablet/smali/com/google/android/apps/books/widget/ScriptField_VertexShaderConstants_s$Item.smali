.class public Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_VertexShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x4c


# instance fields
.field backFacing:F

.field modelViewProj:Landroid/renderscript/Matrix4f;

.field u_max:F

.field v_max:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_VertexShaderConstants_s$Item;->modelViewProj:Landroid/renderscript/Matrix4f;

    .line 24
    return-void
.end method
