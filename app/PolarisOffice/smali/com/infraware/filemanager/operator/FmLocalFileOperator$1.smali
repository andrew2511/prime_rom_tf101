.class Lcom/infraware/filemanager/operator/FmLocalFileOperator$1;
.super Landroid/os/Handler;
.source "FmLocalFileOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/operator/FmLocalFileOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperator;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/operator/FmLocalFileOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    .line 637
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 639
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 640
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 641
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onEvent(IILjava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    .line 644
    :cond_0
    return-void
.end method
