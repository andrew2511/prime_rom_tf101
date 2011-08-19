.class Lnet/yostore/aws/view/search/ResultActivity$4;
.super Ljava/lang/Object;
.source "ResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity;->showFolderContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/ResultActivity;

.field private final synthetic val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/ResultActivity;ILnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    iput p2, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$position:I

    iput-object p3, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 308
    packed-switch p2, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 310
    :pswitch_0
    new-instance v0, Lnet/yostore/aws/ansytask/MarkTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/MarkTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 313
    :pswitch_1
    new-instance v0, Lnet/yostore/aws/ansytask/GetShareCodeTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/GetShareCodeTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 316
    :pswitch_2
    new-instance v0, Lnet/yostore/aws/ansytask/FolderRenameTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FolderRenameTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 319
    :pswitch_3
    new-instance v0, Lnet/yostore/aws/ansytask/FolderRemoveTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/ResultActivity$4;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FolderRemoveTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
