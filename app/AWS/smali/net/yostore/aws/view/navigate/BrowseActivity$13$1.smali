.class Lnet/yostore/aws/view/navigate/BrowseActivity$13$1;
.super Lnet/yostore/aws/ansytask/CreateFolderTask;
.source "BrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$13;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity$13;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13$1;->this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$13;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 947
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/ansytask/CreateFolderTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createSuccess()V
    .locals 1

    .prologue
    .line 954
    invoke-super {p0}, Lnet/yostore/aws/ansytask/CreateFolderTask;->createSuccess()V

    .line 955
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$13$1;->this$1:Lnet/yostore/aws/view/navigate/BrowseActivity$13;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/BrowseActivity$13;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity$13;)Lnet/yostore/aws/view/navigate/BrowseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    .line 956
    return-void
.end method
