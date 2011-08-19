.class Lcom/android/launcher2/CustomizePagedView$8;
.super Ljava/lang/Object;
.source "CustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->syncPages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;

.field final synthetic val$childCount:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$8;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/CustomizePagedView$8;->val$childCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$8;->this$0:Lcom/android/launcher2/CustomizePagedView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CustomizePagedView$8;->val$childCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$8;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/CustomizePagedView;->getCurrentPage()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CustomizePagedView;->setCurrentPage(I)V

    .line 1293
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$8;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/CustomizePagedView;->forceUpdateAdjacentPagesAlpha()V

    .line 1294
    return-void
.end method
