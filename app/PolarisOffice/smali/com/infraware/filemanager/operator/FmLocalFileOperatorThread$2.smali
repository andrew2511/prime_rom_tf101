.class Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;
.super Ljava/lang/Object;
.source "FmLocalFileOperatorThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->countFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Z
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
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 45
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$2(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, nResult:I
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$3(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;I)V

    .line 48
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$4(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->setSrcParentPath(Ljava/lang/String;)V

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$4(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 62
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 63
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$8(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    :goto_1
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$4(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$6(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$7(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/infraware/filemanager/FmFileUtil;->getCount(Ljava/io/File;Ljava/lang/String;Z)I

    move-result v1

    .line 52
    if-gez v1, :cond_1

    .line 53
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 54
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$8(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$3(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;I)V

    .line 59
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$9(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;I)V

    goto :goto_0
.end method
