.class Lcom/android/server/PackageManagerService$MoveParams;
.super Lcom/android/server/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveParams"
.end annotation


# instance fields
.field final flags:I

.field mRet:I

.field final observer:Landroid/content/pm/IPackageMoveObserver;

.field final packageName:Ljava/lang/String;

.field final srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

.field final targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "srcArgs"
    .parameter "observer"
    .parameter "flags"
    .parameter "packageName"
    .parameter "dataDir"

    .prologue
    .line 5092
    iput-object p1, p0, Lcom/android/server/PackageManagerService$MoveParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 5093
    iput-object p2, p0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5094
    iput-object p3, p0, Lcom/android/server/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    .line 5095
    iput p4, p0, Lcom/android/server/PackageManagerService$MoveParams;->flags:I

    .line 5096
    iput-object p5, p0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    .line 5097
    if-eqz p2, :cond_23

    .line 5098
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 5099
    .local v0, packageUri:Landroid/net/Uri;
    #calls: Lcom/android/server/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-static {p1, v0, p4, p5, p6}, Lcom/android/server/PackageManagerService;->access$2600(Lcom/android/server/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5103
    .end local v0           #packageUri:Landroid/net/Uri;
    :goto_22
    return-void

    .line 5101
    :cond_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    goto :goto_22
.end method


# virtual methods
.method handleReturnCode()V
    .registers 4

    .prologue
    .line 5131
    iget-object v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostInstall(I)I

    .line 5132
    const/4 v0, -0x6

    .line 5133
    .local v0, currentStatus:I
    iget v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 5134
    const/4 v0, 0x1

    .line 5138
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V
    invoke-static {v1, p0, v0}, Lcom/android/server/PackageManagerService;->access$2700(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$MoveParams;I)V

    .line 5139
    return-void

    .line 5135
    :cond_14
    iget v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_e

    .line 5136
    const/4 v0, -0x1

    goto :goto_e
.end method

.method handleServiceError()V
    .registers 2

    .prologue
    .line 5143
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    .line 5144
    return-void
.end method

.method public handleStartCopy()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5106
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    .line 5108
    iget-object v0, p0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$InstallArgs;->checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 5109
    const-string v0, "PackageManager"

    const-string v1, "Insufficient storage to install"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    :goto_18
    return-void

    .line 5113
    :cond_19
    iget-object v0, p0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    .line 5114
    iget-object v0, p0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget v1, p0, Lcom/android/server/PackageManagerService$MoveParams;->mRet:I

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$InstallArgs;->doPreInstall(I)I

    goto :goto_18
.end method
