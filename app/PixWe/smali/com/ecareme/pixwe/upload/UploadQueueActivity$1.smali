.class Lcom/ecareme/pixwe/upload/UploadQueueActivity$1;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/upload/UploadQueueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$1;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$1;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-virtual {v0, p3}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->showItemContextMenu(I)V

    .line 61
    const/4 v0, 0x0

    return v0
.end method
