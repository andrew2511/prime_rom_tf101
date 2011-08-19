.class Lcom/android/launcher2/CustomizePagedView$6;
.super Ljava/lang/Object;
.source "CustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;

.field final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field final synthetic val$dragView:Landroid/view/View;

.field final synthetic val$itemInfo:Lcom/android/launcher2/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$6;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$cl:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$itemInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$cl:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$itemInfo:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->calculateSpans(Lcom/android/launcher2/ItemInfo;)V

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$cl:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$itemInfo:Lcom/android/launcher2/ItemInfo;

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$itemInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$6;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$dragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$cl:Lcom/android/launcher2/CellLayout;

    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$6;->val$itemInfo:Lcom/android/launcher2/ItemInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/CustomizePagedView;->access$300(Lcom/android/launcher2/CustomizePagedView;Landroid/view/View;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;)V

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$6;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/CustomizePagedView;->access$200(Lcom/android/launcher2/CustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    goto :goto_0
.end method
