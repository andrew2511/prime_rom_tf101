.class public Lcom/asus/reader/book/DrmBookFulfillmentService;
.super Landroid/app/Service;
.source "DrmBookFulfillmentService.java"


# static fields
.field public static final ACSM_COLUMNS:[Ljava/lang/String;

.field private static final ReaderTableAcsm:Landroid/net/Uri;


# instance fields
.field private isActivationThreadRun:Z

.field private isFulfillBookEnd:Z

.field private isWorkflowError:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAcsmId:I

.field private mCurrentFulfillAcsmFileName:Ljava/lang/String;

.field private mCurrentFulfillBookFormat:Ljava/lang/String;

.field private mCurrentFulfillBookTitle:Ljava/lang/String;

.field private mCurrentFullfilBookFileName:Ljava/lang/String;

.field private mDownloadProgress:I

.field mErrorNotifyId:I

.field private mErrorString:Ljava/lang/String;

.field private mErrorWorkflow:Ljava/lang/String;

.field private mFinishNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mTimeout:I

.field private mWorkflowDone:Ljava/lang/String;

.field private mWriteLicenseProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "content://reader/acsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->ReaderTableAcsm:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "book_source"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->ACSM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    .line 61
    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    .line 65
    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    .line 67
    iput v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillAcsmFileName:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    .line 72
    iput v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWriteLicenseProgress:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWorkflowDone:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorWorkflow:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorString:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isWorkflowError:Z

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/asus/reader/book/DrmBookFulfillmentService$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$1;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentService;)V

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    .line 165
    iput-boolean v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isFulfillBookEnd:Z

    .line 393
    iput-boolean v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isActivationThreadRun:Z

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorNotifyId:I

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/book/DrmBookFulfillmentService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->runFulfillProcess()V

    return-void
.end method

.method static synthetic access$102(Lcom/asus/reader/book/DrmBookFulfillmentService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isFulfillBookEnd:Z

    return p1
.end method

.method static synthetic access$202(Lcom/asus/reader/book/DrmBookFulfillmentService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isActivationThreadRun:Z

    return p1
.end method

.method private checkDeviceActivation()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 397
    const/4 v4, 0x1

    .line 398
    .local v4, isActivateDevice:Z
    const/4 v6, 0x0

    .line 399
    .local v6, isOtherTaskReg:Z
    const/4 v7, 0x0

    .line 400
    .local v7, isWorkflowError:Z
    const-string v9, ""

    .line 401
    .local v9, workflowDone:Ljava/lang/String;
    const-string v3, ""

    .line 402
    .local v3, errorWorkflow:Ljava/lang/String;
    const-string v2, ""

    .line 403
    .local v2, errorString:Ljava/lang/String;
    const/4 v5, 0x1

    .line 404
    .local v5, isActivateSuccess:Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isActivationThreadRun:Z

    .line 407
    const-string v10, "DRMFulfillService"

    const-string v11, "check device activation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->getActivationStatusNative()I

    move-result v10

    if-nez v10, :cond_0

    .line 410
    const/4 v4, 0x0

    .line 411
    invoke-static {v14}, Lcom/asus/reader/book/DrmProcessor;->registerDrmTask(I)I

    move-result v0

    .line 412
    .local v0, currentDrmTaskId:I
    if-eq v0, v14, :cond_1

    .line 414
    const-string v10, "DRMFulfillService"

    const-string v11, "device is activated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v6, 0x1

    .line 416
    const/4 v5, 0x0

    .line 482
    .end local v0           #currentDrmTaskId:I
    :cond_0
    :goto_0
    return v4

    .line 420
    .restart local v0       #currentDrmTaskId:I
    :cond_1
    const-string v10, "DRMFulfillService"

    const-string v11, "device is not activated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v10, "DRMFulfillService"

    const-string v11, "create another thread to do anonymous activation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iput-boolean v14, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isActivationThreadRun:Z

    .line 424
    new-instance v8, Lcom/asus/reader/book/DrmBookFulfillmentService$3;

    invoke-direct {v8, p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$3;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentService;)V

    .line 435
    .local v8, t:Ljava/lang/Thread;
    const-string v10, "DRMFulfillService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create a thread to do anonymous activation ( thread id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/asus/reader/book/DrmBookFulfillmentService$3;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 439
    const-string v10, "DRMFulfillService"

    const-string v11, "polling anonymous activation states"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_1
    const/16 v10, 0xe10

    iput v10, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    .line 443
    sget-object v9, Lcom/asus/reader/book/DrmProcessor;->mCurrentLatestDoneWorkflow:Ljava/lang/String;

    .line 444
    sget-boolean v7, Lcom/asus/reader/book/DrmProcessor;->mIsWorkflowError:Z

    .line 445
    if-ne v7, v14, :cond_2

    .line 446
    sget-object v3, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorWorkflow:Ljava/lang/String;

    .line 447
    sget-object v2, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorString:Ljava/lang/String;

    .line 448
    const/4 v5, 0x0

    .line 450
    :cond_2
    iget-boolean v10, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isActivationThreadRun:Z

    if-nez v10, :cond_3

    .line 469
    :goto_2
    if-ne v5, v14, :cond_5

    .line 470
    const/4 v4, 0x1

    goto :goto_0

    .line 455
    :cond_3
    :try_start_0
    const-string v10, "DRMFulfillService"

    const-string v11, "update activation state datas"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_3
    iget v10, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    if-gtz v10, :cond_4

    .line 462
    const/4 v5, 0x0

    .line 463
    goto :goto_2

    .line 458
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 459
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 466
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget v10, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    sub-int/2addr v10, v14

    iput v10, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    goto :goto_1

    .line 473
    :cond_5
    const-string v10, "DRMFulfillService"

    const-string v11, "activation workflow error"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v10, "DRMFulfillService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorWorkflow = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v10, "DRMFulfillService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorString = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0, v2}, Lcom/asus/reader/book/DrmBookFulfillmentService;->postErrorActivationNotification(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkDuplicateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "originalFileName"
    .parameter "fileExtension"

    .prologue
    .line 509
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 510
    const-string v7, ""

    .line 562
    :goto_0
    return-object v7

    .line 512
    :cond_0
    const-string v2, "/sdcard/Documents/Digital Editions/"

    .line 513
    .local v2, fileDir:Ljava/lang/String;
    const/4 v0, 0x0

    .line 514
    .local v0, duplicateIndex:I
    const-string v5, ""

    .line 515
    .local v5, lastestFileName:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 516
    .local v3, lastestFileModifyTime:J
    const-string v6, ""

    .line 517
    .local v6, tFilePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 519
    .local v1, f:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 520
    const-string v7, "DRMFulfillService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check first time duplicate file path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_1

    .line 531
    const-string v7, "[!\"#$%&\'()*+,/:;<=>?@\\[\\\\\\]^`{|}~]"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 533
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 537
    const-string v7, "DRMFulfillService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a valid file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 540
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 541
    move-object v5, p1

    .line 546
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 548
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    .line 560
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 562
    goto/16 :goto_0

    .line 552
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-ltz v7, :cond_3

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    goto :goto_1
.end method

.method private declared-synchronized runFulfillProcess()V
    .locals 21

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->checkDeviceActivation()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 372
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/asus/reader/book/DrmBookFulfillmentService;->ReaderTableAcsm:Landroid/net/Uri;

    sget-object v7, Lcom/asus/reader/book/DrmBookFulfillmentService;->ACSM_COLUMNS:[Ljava/lang/String;

    const-string v8, "(_state <= \'1\')"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 172
    .local v17, readerAcsmCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_14

    .line 173
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 177
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ready to fulfill an acsm ( name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v5, 0x8

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->waitRmsdkIdle(I)V

    .line 181
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start fulfill the acsm ( name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v5, "DRMFulfillService"

    const-string v6, "init fulfill data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v5, 0x3

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentService;->initFulfillment(Ljava/lang/String;I)V

    .line 189
    const-string v5, "DRMFulfillService"

    const-string v6, "ready to create another thread to fulfill acsm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, acsmPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    .line 194
    .local v16, exists:Z
    if-eqz v16, :cond_13

    .line 195
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->isFulfillBookEnd:Z

    .line 196
    new-instance v18, Lcom/asus/reader/book/DrmBookFulfillmentService$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentService$2;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentService;Ljava/lang/String;)V

    .line 206
    .local v18, t:Ljava/lang/Thread;
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "crate an thread to fulfill acsm ( thread id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 210
    const-string v5, "DRMFulfillService"

    const-string v6, "init fulfill an acsm ongoing bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->initOngoingBarNotification(Ljava/lang/String;)V

    .line 214
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update the acsm ( id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) state to STATE_ACSM_IN_FULFILL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 216
    .local v19, tValues:Landroid/content/ContentValues;
    const-string v5, "_state"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/asus/reader/book/DrmBookFulfillmentService;->ReaderTableAcsm:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(_id = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    const/4 v14, 0x1

    .line 222
    .local v14, doLastLoopCheck:I
    const/16 v5, 0xe10

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    .line 224
    :goto_2
    const-string v5, "DRMFulfillService"

    const-string v6, "polling fulfill state and update the acsm ongoing bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v5, Lcom/asus/reader/book/DrmProcessor;->mCurrentLatestDoneWorkflow:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWorkflowDone:Ljava/lang/String;

    .line 226
    sget-boolean v5, Lcom/asus/reader/book/DrmProcessor;->mIsWorkflowError:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->isWorkflowError:Z

    .line 227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isWorkflowError:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 228
    sget-object v5, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorWorkflow:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorWorkflow:Ljava/lang/String;

    .line 229
    sget-object v5, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorString:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorString:Ljava/lang/String;

    .line 230
    const-string v5, "DRMFulfillService"

    const-string v6, "workflow is error "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error workflow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorWorkflow:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error string = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorString:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    sget-wide v5, Lcom/asus/reader/book/DrmProcessor;->mDownloadProgress:D

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    double-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    move v6, v0

    if-eq v5, v6, :cond_2

    .line 235
    const/16 v5, 0xe10

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    .line 236
    :cond_2
    sget-wide v5, Lcom/asus/reader/book/DrmProcessor;->mDownloadProgress:D

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    .line 237
    sget-wide v5, Lcom/asus/reader/book/DrmProcessor;->mWriteLicenseProgress:D

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWriteLicenseProgress:I

    .line 238
    sget-object v5, Lcom/asus/reader/book/DrmProcessor;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    .line 239
    sget-object v5, Lcom/asus/reader/book/DrmProcessor;->mCurrentFulfillBookTitle:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 242
    new-instance v20, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 243
    .local v20, values:Landroid/content/ContentValues;
    const-string v5, "_state"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v5, "download_progress"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v5, "book_path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v5, "book_title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v5, "book_format"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/asus/reader/book/DrmBookFulfillmentService;->ReaderTableAcsm:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(_id = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->updateOngoingBarNotification(Ljava/lang/String;)V

    .line 254
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "done workflow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWorkflowDone:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download progress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fulfill book title = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fulfill book format = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isFulfillBookEnd:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 260
    if-nez v14, :cond_6

    .line 278
    :cond_3
    const-string v12, ""

    .line 279
    .local v12, bookFileExtension:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_8

    .line 280
    const-string v12, ""

    .line 287
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentService;->checkDuplicateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    move-object v5, v0

    const/16 v6, 0x5f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/DrmBookFulfillmentService;->checkDuplicateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    .line 295
    :cond_5
    new-instance v20, Landroid/content/ContentValues;

    .end local v20           #values:Landroid/content/ContentValues;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 296
    .restart local v20       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    move v5, v0

    if-gtz v5, :cond_a

    .line 297
    const-string v5, "_state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v5, "error_msg"

    const-string v6, "timeout"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/asus/reader/book/DrmBookFulfillmentService;->ReaderTableAcsm:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(_id = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    const-string v5, "DRMFulfillService"

    const-string v6, "latest update ongoing bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->updateOngoingBarNotification(Ljava/lang/String;)V

    .line 333
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->waitRmsdkIdle(I)V

    .line 336
    const-string v5, "DRMFulfillService"

    const-string v6, " finish acsm ongoing bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->cancelOngoingBarNotification()V

    .line 340
    const-string v5, "DRMFulfillService"

    const-string v6, " post acsm notification bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    move v5, v0

    if-gtz v5, :cond_f

    .line 342
    const-string v5, "timeout"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->postNotificationBarErrorNotification(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 167
    .end local v11           #acsmPath:Ljava/lang/String;
    .end local v12           #bookFileExtension:Ljava/lang/String;
    .end local v14           #doLastLoopCheck:I
    .end local v16           #exists:Z
    .end local v17           #readerAcsmCursor:Landroid/database/Cursor;
    .end local v18           #t:Ljava/lang/Thread;
    .end local v19           #tValues:Landroid/content/ContentValues;
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 262
    .restart local v11       #acsmPath:Ljava/lang/String;
    .restart local v14       #doLastLoopCheck:I
    .restart local v16       #exists:Z
    .restart local v17       #readerAcsmCursor:Landroid/database/Cursor;
    .restart local v18       #t:Ljava/lang/Thread;
    .restart local v19       #tValues:Landroid/content/ContentValues;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v14, v14, -0x1

    .line 265
    :cond_7
    const-wide/16 v5, 0x1f4

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    move v5, v0

    if-lez v5, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mTimeout:I

    goto/16 :goto_2

    .line 267
    :catch_0
    move-exception v15

    .line 268
    .local v15, e:Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 281
    .end local v15           #e:Ljava/lang/InterruptedException;
    .restart local v12       #bookFileExtension:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "application/epub+zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 282
    const-string v12, "epub"

    goto/16 :goto_3

    .line 283
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "application/pdf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 284
    const-string v12, "pdf"

    goto/16 :goto_3

    .line 301
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isWorkflowError:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 305
    const-string v5, "_state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v5, "error_msg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorString:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 307
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_c

    .line 308
    const-string v5, "_state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v5, "error_msg"

    const-string v6, "unknown book format"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 310
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 311
    const-string v5, "_state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v5, "error_msg"

    const-string v6, "unknown book format"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 314
    :cond_d
    const-string v5, "download_progress"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v5, "book_path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v5, "book_title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "book_format"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v5, "_state"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/asus/reader/book/ReaderDatabase;->getPathCoverCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 320
    .local v13, coverURL:Ljava/lang/String;
    if-eqz v13, :cond_e

    .line 321
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v13}, Lcom/asus/reader/book/ReaderDatabase;->addPathCoverCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_e
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/asus/reader/vibe2/VibeAgent;->updateVibeBookPath(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 343
    .end local v13           #coverURL:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isWorkflowError:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorString:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->postNotificationBarErrorNotification(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 345
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_11

    .line 346
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    const-string v7, "file:///mnt/sdcard"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    const-string v5, "DRMFulfillService"

    const-string v6, "send sdcard scan , because can\'t get correct fulfill book\'s file name"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 350
    const-string v5, "unknown book format"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->postNotificationBarErrorNotification(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 352
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->postNotifcationBarNotification()V

    .line 354
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:///mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 359
    .end local v12           #bookFileExtension:Ljava/lang/String;
    .end local v14           #doLastLoopCheck:I
    .end local v18           #t:Ljava/lang/Thread;
    .end local v19           #tValues:Landroid/content/ContentValues;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_13
    const-string v5, "DRMFulfillService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "acsm file not exist ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v5, "acsm file not exist"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->postNotificationBarErrorNotification(Ljava/lang/String;)V

    .line 362
    new-instance v20, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 363
    .restart local v20       #values:Landroid/content/ContentValues;
    const-string v5, "_state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v5, "error_msg"

    const-string v6, "acsm file not exist"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/asus/reader/book/DrmBookFulfillmentService;->ReaderTableAcsm:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(_id = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 371
    .end local v11           #acsmPath:Ljava/lang/String;
    .end local v16           #exists:Z
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_14
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private waitRmsdkIdle(I)V
    .locals 5
    .parameter "timeoutSecs"

    .prologue
    .line 375
    const-string v2, "DRMFulfillService"

    const-string v3, "wait RMSDK idle "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x0

    .line 379
    .local v1, sleepTimes:I
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    add-int/2addr v1, p1

    .line 384
    :goto_0
    const-string v2, "DRMFulfillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleep time has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "DRMFulfillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RMSDK host idle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->isHostIdleNative()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v2, "DRMFulfillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RMSDK drmClient idle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->isDrmClientIdleNative()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelOngoingBarNotification()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 630
    return-void
.end method

.method public initFulfillment(Ljava/lang/String;I)V
    .locals 2
    .parameter "acsmName"
    .parameter "acsmId"

    .prologue
    const/4 v1, 0x0

    .line 494
    iput p2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    .line 495
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillAcsmFileName:Ljava/lang/String;

    .line 497
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    .line 499
    iput v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    .line 500
    iput v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWriteLicenseProgress:I

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mWorkflowDone:Ljava/lang/String;

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorWorkflow:Ljava/lang/String;

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorString:Ljava/lang/String;

    .line 504
    iput-boolean v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->isWorkflowError:Z

    .line 505
    return-void
.end method

.method public initOngoingBarNotification(Ljava/lang/String;)V
    .locals 10
    .parameter "acsmPath"

    .prologue
    const v7, 0x7f0700a0

    const/4 v9, 0x0

    .line 567
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 568
    .local v0, bookTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 569
    invoke-virtual {p0, v7}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_0
    :goto_0
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    .line 575
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    const v6, 0x7f02000c

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 577
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001c

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 579
    .local v2, mContentView:Landroid/widget/RemoteViews;
    const v5, 0x7f0b0068

    const/16 v6, 0x64

    iget v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    const/4 v8, 0x1

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 580
    const v5, 0x7f0b0065

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 581
    const v5, 0x7f0b0066

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 582
    const v5, 0x7f0b0067

    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillAcsmFileName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 583
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 585
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v3, notificationBarIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 587
    .local v1, data:Landroid/net/Uri;
    const-string v5, "application/vnd.adobe.adept+xml"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 591
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 592
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 593
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    iget-object v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 594
    return-void

    .line 570
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #mContentView:Landroid/widget/RemoteViews;
    .end local v3           #notificationBarIntent:Landroid/content/Intent;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 571
    invoke-virtual {p0, v7}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "DRMFulfillService"

    const-string v1, " onCreate() ......................................."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 131
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "DRMFulfillService"

    const-string v1, " onDestroy() ......................................."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, intentType:I
    packed-switch v0, :pswitch_data_0

    .line 162
    .end local v0           #intentType:I
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v0       #intentType:I
    :pswitch_0
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->getActivationStatusNative()I

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-static {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->startNoActDialogActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postErrorActivationNotification(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/4 v5, 0x0

    .line 635
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    .line 636
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    const v1, 0x7f02000c

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 638
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {p1}, Lcom/asus/reader/book/DrmProcessor;->getErrorId(Ljava/lang/String;)I

    move-result v1

    .line 641
    const/4 v2, 0x0

    .line 642
    packed-switch v1, :pswitch_data_0

    .line 656
    invoke-static {p0, v1}, Lcom/asus/reader/book/DrmProcessor;->getShortErrorDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 660
    :goto_0
    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 661
    if-nez v1, :cond_0

    .line 662
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 665
    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 666
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorNotifyId:I

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 667
    iget v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorNotifyId:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorNotifyId:I

    .line 668
    iget v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorNotifyId:I

    const/16 v1, -0x2710

    if-ge v0, v1, :cond_1

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mErrorNotifyId:I

    .line 670
    :cond_1
    return-void

    .line 644
    :pswitch_0
    const v1, 0x7f0700a8

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 645
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 648
    goto :goto_0

    .line 650
    :pswitch_1
    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 651
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 654
    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postNotifcationBarNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 712
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    .line 713
    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    const v7, 0x7f02000c

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 715
    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    .line 716
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const v6, 0x7f0700a4

    invoke-virtual {p0, v6}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, contentText:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///mnt/sdcard/Documents/Digital Editions/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFullfilBookFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, bookPath:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v5, notificationBarIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 722
    .local v3, data:Landroid/net/Uri;
    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookFormat:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 725
    .local v4, notificationBarContentIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 727
    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    iget-object v8, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 728
    return-void
.end method

.method public postNotificationBarErrorNotification(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/4 v5, 0x0

    .line 674
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    .line 675
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    const v1, 0x7f02000c

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillAcsmFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0700a2

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {p1}, Lcom/asus/reader/book/DrmProcessor;->getErrorId(Ljava/lang/String;)I

    move-result v1

    .line 680
    const/4 v2, 0x0

    .line 681
    packed-switch v1, :pswitch_data_0

    .line 695
    invoke-static {p0, v1}, Lcom/asus/reader/book/DrmProcessor;->getShortErrorDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 699
    :goto_0
    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 700
    if-nez v1, :cond_0

    .line 701
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 702
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 704
    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 705
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mFinishNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 706
    return-void

    .line 683
    :pswitch_0
    const v1, 0x7f0700a8

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 684
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 687
    goto :goto_0

    .line 689
    :pswitch_1
    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 690
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 693
    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateOngoingBarNotification(Ljava/lang/String;)V
    .locals 10
    .parameter "acsmPath"

    .prologue
    const v7, 0x7f0700a0

    const/4 v9, 0x0

    .line 597
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 598
    .local v0, bookTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 599
    invoke-virtual {p0, v7}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001c

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 606
    .local v2, mContentView:Landroid/widget/RemoteViews;
    const v5, 0x7f0b0068

    const/16 v6, 0x64

    iget v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    iget v8, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 608
    const v5, 0x7f0b0065

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mDownloadProgress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 609
    const v5, 0x7f0b0066

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 610
    const v5, 0x7f0b0067

    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillAcsmFileName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 614
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 616
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, notificationBarIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 618
    .local v1, data:Landroid/net/Uri;
    const-string v5, "application/vnd.adobe.adept+xml"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 620
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 621
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 623
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 624
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentAcsmId:I

    iget-object v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 626
    return-void

    .line 600
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #mContentView:Landroid/widget/RemoteViews;
    .end local v3           #notificationBarIntent:Landroid/content/Intent;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mCurrentFulfillBookTitle:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 601
    invoke-virtual {p0, v7}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .restart local v2       #mContentView:Landroid/widget/RemoteViews;
    :cond_2
    move v8, v9

    .line 606
    goto :goto_1
.end method
