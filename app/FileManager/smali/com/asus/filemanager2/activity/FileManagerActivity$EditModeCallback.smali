.class Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager2/activity/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditModeCallback"
.end annotation


# instance fields
.field mClosedByUser:Z

.field final synthetic this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->mClosedByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager2/activity/FileManagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 754
    const-string v0, "FileManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionItemClicked item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 788
    :goto_0
    return v0

    .line 757
    :pswitch_0
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$300(Lcom/asus/filemanager2/activity/FileManagerActivity;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/asus/filemanager/edit/EditPool;->SetFiles([Lcom/asus/filemanager/main/VFile;Z)I

    .line 758
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0, v4}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    :goto_1
    move v0, v3

    .line 788
    goto :goto_0

    .line 761
    :pswitch_1
    const-string v0, "FileManagerActivity"

    const-string v1, "Select all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$400(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager2/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->setSelectAll()V

    .line 763
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updateEditMode()V

    goto :goto_1

    .line 766
    :pswitch_2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$300(Lcom/asus/filemanager2/activity/FileManagerActivity;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/asus/filemanager/edit/EditPool;->SetFiles([Lcom/asus/filemanager/main/VFile;Z)I

    .line 767
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/asus/filemanager/edit/EditPool;->SetExtraBoolean(Z)V

    .line 769
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/filemanager/edit/EditPool;->GetFiles()[Lcom/asus/filemanager/main/VFile;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->ShowCopyFileReady([Ljava/io/File;Z)V

    .line 770
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onDeselectAll()V

    .line 771
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 774
    :pswitch_3
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$300(Lcom/asus/filemanager2/activity/FileManagerActivity;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/asus/filemanager/edit/EditPool;->SetFiles([Lcom/asus/filemanager/main/VFile;Z)I

    .line 775
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/asus/filemanager/edit/EditPool;->SetExtraBoolean(Z)V

    .line 777
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/filemanager/edit/EditPool;->GetFiles()[Lcom/asus/filemanager/main/VFile;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->ShowCopyFileReady([Ljava/io/File;Z)V

    .line 778
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onDeselectAll()V

    .line 779
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 782
    :pswitch_4
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onDeselectAll()V

    goto :goto_1

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x7f08002d
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 728
    const-string v1, "FileManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateActionMode mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v1, p1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$1102(Lcom/asus/filemanager2/activity/FileManagerActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 731
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 732
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 734
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 794
    const-string v0, "FileManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyActionMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$1102(Lcom/asus/filemanager2/activity/FileManagerActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 796
    iget-boolean v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->mClosedByUser:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onDeselectAll()V

    .line 799
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 739
    const v2, 0x7f080031

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 740
    .local v0, clearAllitem:Landroid/view/MenuItem;
    const v2, 0x7f080030

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 741
    .local v1, selectAllitem:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$400(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager2/adapter/FileListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/filemanager2/adapter/FileListAdapter;->getSelectedCount()I

    move-result v2

    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-static {v3}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$400(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager2/adapter/FileListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/filemanager2/adapter/FileListAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 742
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 743
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 748
    :goto_0
    return v4

    .line 745
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 746
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
