.class Lcom/android/gallery3d/ui/MenuExecutor$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 96
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 123
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 100
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$002(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$102(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 103
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 105
    .local v0, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 107
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 112
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 114
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 119
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
