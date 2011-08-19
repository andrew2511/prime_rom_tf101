.class Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;
.super Ljava/lang/Object;
.source "FmLocalFileOperatorThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->delete(Landroid/content/Context;Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$2(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, nResult:I
    :cond_0
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$4(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 148
    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 149
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$8(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$2(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 139
    :goto_1
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 140
    invoke-static {v3, v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$9(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;I)V

    .line 142
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->getCancel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const/4 v2, -0x7

    .line 145
    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$4(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 130
    .local v0, SrcFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 137
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/filemanager/MTPSyncManager;->updateItemDeleted(Ljava/lang/String;)I

    goto :goto_1

    .line 134
    :cond_2
    invoke-static {v0}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    goto :goto_2

    .line 126
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
