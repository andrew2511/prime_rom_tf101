.class Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "BrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUploadBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1052
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1053
    .local v0, bunde:Landroid/os/Bundle;
    const-string v9, "UploadFolder"

    const-wide/16 v10, -0x3e7

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1054
    .local v7, uploadFolder:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v10}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v10

    invoke-virtual {v10}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1055
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v9}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;

    move-result-object v9

    invoke-virtual {v9}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "system."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v11}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v11

    iget-object v11, v11, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".home.root"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1057
    :cond_1
    const-string v9, "UploadRow"

    const-wide/16 v10, -0x3e7

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1058
    .local v5, rowId:J
    const-string v9, "FileId"

    const-wide/16 v10, -0x3e7

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1059
    .local v2, fileId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_2

    .line 1061
    const-wide/16 v9, -0x1

    mul-long/2addr v5, v9

    .line 1062
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v9}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v9

    iget-object v9, v9, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_3

    .line 1079
    .end local v2           #fileId:J
    .end local v4           #i:I
    .end local v5           #rowId:J
    :cond_2
    :goto_1
    return-void

    .line 1064
    .restart local v2       #fileId:J
    .restart local v4       #i:I
    .restart local v5       #rowId:J
    :cond_3
    iget-object v9, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v9}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v9

    iget-object v9, v9, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 1065
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-boolean v9, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    if-eqz v9, :cond_4

    iget-object v9, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1067
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_2

    .line 1069
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 1070
    const/4 v9, 0x0

    iput-boolean v9, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 1071
    const/4 v9, 0x0

    iput-boolean v9, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 1072
    iget-object v9, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v9}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1062
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
