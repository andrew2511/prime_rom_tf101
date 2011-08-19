.class public Lcom/android/email/service/AttachmentDownloadService;
.super Landroid/app/Service;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;,
        Lcom/android/email/service/AttachmentDownloadService$DownloadSet;,
        Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;,
        Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;,
        Lcom/android/email/service/AttachmentDownloadService$Watchdog;,
        Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;
    }
.end annotation


# static fields
.field static volatile sRunningService:Lcom/android/email/service/AttachmentDownloadService;


# instance fields
.field mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

.field private final mAccountServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final mAttachmentFailureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mAttachmentStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

.field mContext:Landroid/content/Context;

.field final mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

.field private volatile mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    new-instance v1, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;

    invoke-direct {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;-><init>(Lcom/android/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    .line 623
    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService;->kick()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/service/AttachmentDownloadService;J)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService;->getServiceIntentForAccount(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/service/AttachmentDownloadService;)Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    return-object v0
.end method

.method public static attachmentChanged(JI)V
    .locals 2
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 771
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 772
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 773
    :cond_0
    new-instance v1, Lcom/android/email/service/AttachmentDownloadService$1;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$1;-><init>(Lcom/android/email/service/AttachmentDownloadService;JI)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static cancelQueuedAttachment(J)Z
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 751
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 752
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->dequeue(J)Z

    move-result v1

    .line 755
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 3
    .parameter "att"

    .prologue
    .line 602
    const/4 v1, -0x1

    .line 603
    .local v1, priorityClass:I
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 604
    .local v0, flags:I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 605
    const/4 v1, 0x1

    .line 609
    :cond_0
    :goto_0
    return v1

    .line 606
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 607
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getQueueSize()I
    .locals 2

    .prologue
    .line 725
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 726
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService;->getSize()I

    move-result v1

    .line 729
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getServiceIntentForAccount(J)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 680
    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 682
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 689
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 683
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/Controller$ControllerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    const-string v2, "eas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    :goto_1
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static isAttachmentQueued(J)Z
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 738
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 739
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->isQueued(J)Z

    move-result v1

    .line 742
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private kick()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static watchdogAlarm()V
    .locals 2

    .prologue
    .line 759
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 760
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 761
    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-static {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$700(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;)V

    .line 763
    :cond_0
    return-void
.end method


# virtual methods
.method addServiceIntentForTest(JLandroid/content/Intent;)V
    .locals 2
    .parameter "accountId"
    .parameter "intent"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method

.method public canPrefetchForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/io/File;)Z
    .locals 22
    .parameter "account"
    .parameter "dir"

    .prologue
    .line 793
    if-nez p1, :cond_0

    const/16 v18, 0x0

    .line 835
    :goto_0
    return v18

    .line 795
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v14

    .line 798
    .local v14, totalStorage:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v16

    .line 799
    .local v16, usableStorage:J
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3e80

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-long v0, v0

    move-wide v9, v0

    .line 802
    .local v9, minAvailable:J
    cmp-long v18, v16, v9

    if-gez v18, :cond_2

    .line 803
    const/16 v18, 0x0

    goto :goto_0

    .line 806
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->getNumberOfAccounts()I

    move-result v11

    .line 807
    .local v11, numberOfAccounts:I
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3e80

    mul-float v18, v18, v19

    move v0, v11

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-long v0, v0

    move-wide v12, v0

    .line 813
    .local v12, perAccountMaxStorage:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 814
    .local v3, accountStorage:Ljava/lang/Long;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-lez v18, :cond_5

    .line 816
    :cond_3
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 817
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 818
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_4

    .line 819
    move-object v4, v6

    .local v4, arr$:[Ljava/io/File;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v5, v4, v7

    .line 820
    .local v5, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 819
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 824
    .end local v4           #arr$:[Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .end local v6           #files:[Ljava/io/File;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_6

    .line 829
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 831
    :cond_6
    sget-boolean v18, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v18, :cond_7

    .line 832
    const-string v18, "AttachmentService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ">> Prefetch not allowed for account "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; used "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", limit "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method dequeue(J)Z
    .locals 4
    .parameter "attachmentId"

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    .line 710
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v0, :cond_1

    .line 711
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 712
    const-string v1, "AttachmentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dequeued attachmentId:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 715
    const/4 v1, 0x1

    .line 717
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 919
    const-string v11, "AttachmentDownloadService"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 921
    .local v9, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object v11, v0

    monitor-enter v11

    .line 922
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Queue, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " entries"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 925
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 926
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 927
    .local v7, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Account: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Attachment: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      Priority: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v13, :cond_2

    const-string v13, " [In progress]"

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    iget-wide v12, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    move-object/from16 v0, p0

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 931
    .local v3, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v3, :cond_3

    .line 932
    const-string v12, "      Attachment not in database?"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    :cond_1
    :goto_2
    iget-boolean v12, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v12, :cond_0

    .line 954
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      Status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Progress: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      Started: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Callback: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      Elapsed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    sub-long v13, v9, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    iget-wide v12, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 960
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      CB: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    sub-long v13, v9, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    .end local v3           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v7           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 928
    .restart local v5       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v7       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_2
    :try_start_1
    const-string v13, ""

    goto/16 :goto_1

    .line 933
    .restart local v3       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    iget-object v12, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 934
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 935
    .local v4, fileName:Ljava/lang/String;
    const-string v8, "[none]"

    .line 936
    .local v8, suffix:Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 937
    .local v6, lastDot:I
    if-ltz v6, :cond_4

    .line 938
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 940
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "      Suffix: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    iget-object v12, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 942
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " ContentUri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    :cond_5
    const-string v12, " Mime: "

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    iget-object v12, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 946
    iget-object v12, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 948
    :cond_6
    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    const-string v12, " [inferred]"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 964
    .end local v3           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #lastDot:I
    .end local v7           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v8           #suffix:Ljava/lang/String;
    :cond_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    return-void
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v0

    return v0
.end method

.method isQueued(J)Z
    .locals 1
    .parameter "attachmentId"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 1
    .parameter "att"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 698
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 900
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AttachmentDownloadService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 901
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 909
    const-string v0, "AttachmentService"

    const-string v1, "**** ON DESTROY!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    .line 912
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService;->kick()V

    .line 914
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 915
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 887
    sput-object p0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 888
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 841
    iput-object p0, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    .line 842
    new-instance v0, Lcom/android/email/EmailConnectivityManager;

    const-string v1, "AttachmentService"

    invoke-direct {v0, p0, v1}, Lcom/android/email/EmailConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    .line 843
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    invoke-direct {v0, p0}, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    .line 847
    const/4 v9, 0x6

    .line 848
    .local v9, mask:I
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "(flags & ?) != 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 852
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "AttachmentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 856
    .local v6, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v6, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, v6}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 860
    .end local v6           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 861
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 864
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 868
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    if-nez v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->waitForConnectivity()V

    .line 871
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    .line 872
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_2
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 878
    :goto_2
    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 864
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->unregister()V

    .line 883
    return-void

    .line 875
    :catch_1
    move-exception v1

    goto :goto_2
.end method
