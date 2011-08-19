.class public Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_Point_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScriptField_Point_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x28


# instance fields
.field normal:Landroid/renderscript/Float3;

.field position:Landroid/renderscript/Float3;

.field texture0:Landroid/renderscript/Float2;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->position:Landroid/renderscript/Float3;

    .line 23
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->texture0:Landroid/renderscript/Float2;

    .line 24
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScriptField_Point_s$Item;->normal:Landroid/renderscript/Float3;

    .line 25
    return-void
.end method
