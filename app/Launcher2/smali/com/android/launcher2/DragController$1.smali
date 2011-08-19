.class Lcom/android/launcher2/DragController$1;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragController;

.field final synthetic val$dragSource:Lcom/android/launcher2/DragSource;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragController;Lcom/android/launcher2/DragSource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/launcher2/DragController$1;->this$0:Lcom/android/launcher2/DragController;

    iput-object p2, p0, Lcom/android/launcher2/DragController$1;->val$dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher2/DragController$1;->val$dragSource:Lcom/android/launcher2/DragSource;

    invoke-interface {v0}, Lcom/android/launcher2/DragSource;->onDragViewVisible()V

    .line 313
    return-void
.end method
