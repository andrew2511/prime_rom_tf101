.class Lcom/android/launcher2/CustomizePagedView$3;
.super Ljava/lang/Object;
.source "CustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$dragLayer:Lcom/android/launcher2/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/DragLayer;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$3;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/CustomizePagedView$3;->val$dragLayer:Lcom/android/launcher2/DragLayer;

    iput-object p3, p0, Lcom/android/launcher2/CustomizePagedView$3;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$3;->this$0:Lcom/android/launcher2/CustomizePagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/CustomizePagedView;->access$100(Lcom/android/launcher2/CustomizePagedView;Z)V

    .line 466
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$3;->val$dragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView$3;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 467
    return-void
.end method
