.class Lcom/asus/filemanager2/activity/FileManagerActivity$2;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/filemanager2/activity/FileManagerActivity;->onPopupActionButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

.field final synthetic val$chosenFile:Lcom/asus/filemanager/main/VFile;


# direct methods
.method constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iput-object p2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->val$chosenFile:Lcom/asus/filemanager/main/VFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 665
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 678
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 667
    :pswitch_0
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->val$chosenFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$1002(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)Lcom/asus/filemanager/main/VFile;

    .line 668
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-virtual {v0, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    move v0, v2

    .line 669
    goto :goto_0

    .line 671
    :pswitch_1
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->val$chosenFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->access$1002(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)Lcom/asus/filemanager/main/VFile;

    .line 672
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    move v0, v2

    .line 673
    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$2;->val$chosenFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->shareFile(Lcom/asus/filemanager/main/VFile;)V

    move v0, v2

    .line 676
    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x7f080039
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
