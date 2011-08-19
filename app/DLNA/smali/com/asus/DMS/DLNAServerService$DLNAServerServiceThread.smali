.class Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;
.super Ljava/lang/Thread;
.source "DLNAServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/DLNAServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DLNAServerServiceThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServerControl:Lcom/awox/jSebring/MediaServerManager;

.field final synthetic this$0:Lcom/asus/DMS/DLNAServerService;


# direct methods
.method constructor <init>(Lcom/asus/DMS/DLNAServerService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 415
    iput-object p1, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 409
    iput-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    .line 410
    iput-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mContext:Landroid/content/Context;

    .line 416
    iput-object p2, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mContext:Landroid/content/Context;

    .line 417
    const-string v0, "jSebring"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->SetCPPLocale()V

    .line 420
    new-instance v0, Lcom/awox/jSebring/MediaServerManager;

    invoke-direct {v0}, Lcom/awox/jSebring/MediaServerManager;-><init>()V

    iput-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    .line 421
    return-void
.end method


# virtual methods
.method public ClearDatabase()Z
    .locals 4

    .prologue
    .line 477
    const-string v1, "DMS"

    const-string v2, "Clearing database..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jSebring/MediaServerManager;->ClearDatabase()I

    move-result v0

    .line 479
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 480
    const/4 v1, 0x1

    .line 483
    :goto_0
    return v1

    .line 482
    :cond_0
    const-string v1, "DMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ForceUpdate()V
    .locals 2

    .prologue
    .line 547
    const-string v0, "DMS"

    const-string v1, "ForceUpdate database..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->Update()I

    .line 549
    return-void
.end method

.method public GetStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->GetCurrentStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsUpdating()Z
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jSebring/MediaServerManager;->IsUpdating()Z

    move-result v0

    .line 540
    .local v0, bUpdating:Z
    return v0
.end method

.method public RemoveSharedFolder(Ljava/lang/String;)Z
    .locals 3
    .parameter "aSharedFolder"

    .prologue
    .line 490
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceThread: Removing shared folder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0, p1}, Lcom/awox/jSebring/MediaServerManager;->RemoveSharedFolder(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Restart()Z
    .locals 4

    .prologue
    .line 462
    const-string v1, "DMS"

    const-string v2, "Restarting server..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jSebring/MediaServerManager;->RestartDMS()I

    move-result v0

    .line 465
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 466
    const/4 v1, 0x1

    .line 469
    :goto_0
    return v1

    .line 468
    :cond_0
    const-string v1, "DMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restart server error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected SetCPPLocale()V
    .locals 5

    .prologue
    .line 427
    iget-object v3, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v3}, Lcom/asus/DMS/DLNAServerService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 428
    .local v2, theLocale:Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, theLanguage:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, theCountry:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 434
    if-eqz v0, :cond_1

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/awox/jSebring/jSebring;->awLocale_SetNative(Ljava/lang/String;)V

    .line 441
    .end local v0           #theCountry:Ljava/lang/String;
    .end local v1           #theLanguage:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 437
    .restart local v0       #theCountry:Ljava/lang/String;
    .restart local v1       #theLanguage:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/awox/jSebring/jSebring;->awLocale_SetNative(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetFriendlyName(Ljava/lang/String;)Z
    .locals 4
    .parameter "aFriendlyName"

    .prologue
    .line 555
    const-string v1, "DMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating friendly name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1, p1}, Lcom/awox/jSebring/MediaServerManager;->SetFriendlyName(Ljava/lang/String;)I

    move-result v0

    .line 557
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 558
    const/4 v1, 0x1

    .line 561
    :goto_0
    return v1

    .line 560
    :cond_0
    const-string v1, "DMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetFriendlyName error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public SetMediaType(ZZZ)Z
    .locals 4
    .parameter "afVideo"
    .parameter "afAudio"
    .parameter "afImage"

    .prologue
    .line 569
    const-string v1, "DMS"

    const-string v2, "Updating media type..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/awox/jSebring/MediaServerManager;->SetMediaTypeShared(ZZZ)I

    move-result v0

    .line 571
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v1, 0x1

    .line 575
    :goto_0
    return v1

    .line 574
    :cond_0
    const-string v1, "DMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetMediaType error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Start()V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->start()V

    .line 448
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "DMS"

    const-string v1, "Stopping Server..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->StopDMS()I

    .line 456
    return-void
.end method

.method public addSharedFolder(Ljava/lang/String;)V
    .locals 6
    .parameter "aSharedFolder"

    .prologue
    .line 499
    const-string v1, ""

    .line 502
    .local v1, strPrevSharedFolder:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v3}, Lcom/awox/jSebring/MediaServerManager;->GetSharedFolderListAsString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, strSharedFolderList:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 504
    const-string v3, "/|0|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 505
    .local v0, iEnd:I
    const/4 v3, -0x1

    if-eq v3, v0, :cond_0

    .line 506
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 508
    .end local v0           #iEnd:I
    :cond_0
    const-string v3, "DMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prev shared folder= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 512
    const-string v3, "DMS"

    const-string v4, "the added new share folder is as same as previous one"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->ForceUpdate()V

    .line 521
    :goto_0
    const-string v3, "DMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(after) shared folder list, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v5}, Lcom/awox/jSebring/MediaServerManager;->GetSharedFolderListAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v3, v1}, Lcom/awox/jSebring/MediaServerManager;->RemoveSharedFolder(Ljava/lang/String;)I

    .line 517
    const-string v3, "DMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding shared folder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v3, p1}, Lcom/awox/jSebring/MediaServerManager;->AddSharedFolder(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 583
    const-string v1, "DMS"

    const-string v2, "Starting Server..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Lcom/awox/jSebring/jSebring;->awDMS_main()I

    move-result v0

    .line 587
    .local v0, theRet:I
    if-nez v0, :cond_0

    .line 588
    const-string v1, "DMS"

    const-string v2, "Server stopped !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v1, "DMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during startup ! ERR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
