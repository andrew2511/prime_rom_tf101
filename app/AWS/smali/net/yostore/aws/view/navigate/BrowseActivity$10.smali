.class Lnet/yostore/aws/view/navigate/BrowseActivity$10;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;->showFolderContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

.field private final synthetic val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;ILnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iput p2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$position:I

    iput-object p3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 644
    packed-switch p2, :pswitch_data_0

    .line 659
    :goto_0
    return-void

    .line 647
    :pswitch_0
    new-instance v0, Lnet/yostore/aws/ansytask/MarkTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/MarkTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 650
    :pswitch_1
    new-instance v0, Lnet/yostore/aws/ansytask/GetShareCodeTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/GetShareCodeTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 653
    :pswitch_2
    new-instance v0, Lnet/yostore/aws/ansytask/FolderRenameTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FolderRenameTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 656
    :pswitch_3
    new-instance v0, Lnet/yostore/aws/ansytask/FolderRemoveTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$10;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FolderRemoveTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
