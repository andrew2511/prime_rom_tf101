.class Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;
.super Ljava/lang/Object;
.source "FmWebFileOperatorThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkCallback"
.end annotation


# instance fields
.field final mNetworkCallbackId:I

.field final mOperationMode:I

.field final mSourceFullPath:Ljava/lang/String;

.field mUiUpdateHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;IILjava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "aOperationMode"
    .parameter "aNetworkCallbackId"
    .parameter "aSourceFullpath"
    .parameter "aUiUpHandler"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->this$0:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p2, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mOperationMode:I

    .line 240
    iput p3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mNetworkCallbackId:I

    .line 241
    iput-object p4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mSourceFullPath:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mUiUpdateHandler:Landroid/os/Handler;

    .line 243
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 246
    iget v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mNetworkCallbackId:I

    if-ne v0, v2, :cond_1

    .line 247
    const/16 v0, 0xa

    iget v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mOperationMode:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x15

    iget v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mOperationMode:I

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    sput-boolean v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_bConnected:Z

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->this$0:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    iget-object v0, v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    iget v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mNetworkCallbackId:I

    iget v2, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;->mOperationMode:I

    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getErrorCode()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;->onResult(III)V

    .line 257
    return-void
.end method
