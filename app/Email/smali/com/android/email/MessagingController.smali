.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$LocalMessageInfo;,
        Lcom/android/email/MessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static final FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static final PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static final PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/MessagingController;


# instance fields
.field private mBusy:Z

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    .line 100
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 115
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;)V
    .locals 1
    .parameter "_context"
    .parameter "_controller"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 125
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    .line 133
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    .line 134
    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 2
    .parameter "_context"
    .parameter "_controller"

    .prologue
    .line 143
    const-class v0, Lcom/android/email/MessagingController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/email/MessagingController;

    invoke-direct {v1, p0, p1}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;Lcom/android/email/Controller;)V

    sput-object v1, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 146
    :cond_0
    sget-object v1, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter "mockController"

    .prologue
    .line 153
    sput-object p0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 154
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1085
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1088
    .local v0, accountIdArgs:[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1668
    .line 1673
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 1674
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1675
    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1678
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1680
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1682
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1683
    const-string v2, "syncServerId"

    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    move v0, v7

    .line 1782
    :goto_0
    return v0

    .line 1688
    :cond_2
    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v6

    .line 1690
    goto :goto_0

    .line 1693
    :cond_3
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v1, v8}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1694
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_4

    move v0, v6

    .line 1695
    goto :goto_0

    .line 1700
    :cond_4
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 1701
    iget-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    .line 1705
    :goto_1
    if-nez v1, :cond_7

    .line 1707
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v1

    .line 1710
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1711
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1712
    new-array v2, v7, [Lcom/android/emailcommon/mail/Message;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 1715
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v1, v6

    move v2, v7

    move v3, v7

    .line 1753
    :goto_2
    if-eqz v3, :cond_a

    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1755
    :try_start_0
    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v3

    .line 1756
    if-eqz v3, :cond_a

    .line 1757
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1758
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1759
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1760
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 1769
    :goto_3
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 1770
    :cond_5
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1771
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1772
    if-eqz v1, :cond_9

    .line 1773
    invoke-virtual {v3, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    :goto_4
    move v0, v7

    .line 1782
    goto/16 :goto_0

    .line 1720
    :cond_7
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1721
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1722
    new-array v3, v7, [Lcom/android/emailcommon/mail/Message;

    aput-object v1, v3, v6

    invoke-virtual {v0, v3, v2, v8}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1723
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1724
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    .line 1725
    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_8

    move v1, v7

    move v2, v6

    move v3, v6

    .line 1729
    goto :goto_2

    .line 1734
    :cond_8
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v3

    .line 1737
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1738
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1739
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1740
    new-array v2, v7, [Lcom/android/emailcommon/mail/Message;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 1743
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1748
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1, v2, v7}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v1, v6

    move v2, v7

    move v3, v7

    goto/16 :goto_2

    .line 1763
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_3

    .line 1774
    :cond_9
    if-eqz v0, :cond_6

    .line 1775
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1776
    const-string v1, "syncServerId"

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const-string v1, "syncServerTimeStamp"

    iget-wide v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1778
    invoke-virtual {v3, v2, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move-object v1, v8

    goto/16 :goto_1
.end method

.method private processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1418
    const/4 v0, 0x0

    .line 1421
    iget-object v1, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, "Local-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    if-eqz p5, :cond_6

    .line 1431
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    move-object v1, v0

    move-object v0, p2

    .line 1434
    :goto_1
    if-eqz v1, :cond_0

    .line 1439
    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1444
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 1445
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1448
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1449
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-ne v2, v3, :cond_0

    .line 1454
    iget-object v2, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1455
    if-eqz v2, :cond_0

    .line 1458
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1459
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update for msg id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " read="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flagged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new mailbox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 1466
    if-eqz p3, :cond_3

    .line 1467
    sget-object v4, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v5, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1469
    :cond_3
    if-eqz p4, :cond_4

    .line 1470
    sget-object v4, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v5, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1472
    :cond_4
    if-eqz p5, :cond_5

    .line 1473
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 1474
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1478
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1480
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1481
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1483
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1484
    const-string v2, "syncServerId"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1488
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    :cond_6
    move-object v1, p2

    goto/16 :goto_1
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1624
    iget v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 1651
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 1630
    .local v1, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1634
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1635
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2

    .line 1636
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1641
    :cond_2
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 1642
    .local v0, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v0, :cond_3

    .line 1643
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1648
    :cond_3
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1649
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1650
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1107
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "accountKey=?"

    const-string v10, "mailboxKey"

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1111
    const-wide/16 v6, -0x1

    .line 1114
    const/4 v8, 0x0

    .line 1116
    const/4 v9, 0x0

    move-object v14, v9

    move-object v15, v8

    move-wide v8, v6

    move-object v6, v14

    move-object v7, v15

    .line 1118
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1119
    const/4 v10, 0x0

    .line 1121
    const-class v11, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v5, v11}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object p3

    check-cast p3, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1124
    if-eqz p3, :cond_8

    .line 1125
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide v8, v0

    .line 1126
    if-eqz v6, :cond_1

    iget-wide v10, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v12, v0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 1127
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v10, v0

    invoke-static {v6, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 1128
    if-eqz v6, :cond_0

    .line 1132
    :cond_2
    iget v10, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    move v14, v10

    move-object v15, v6

    move v6, v14

    move-wide/from16 v16, v8

    move-wide/from16 v9, v16

    move-object v8, v15

    .line 1136
    :goto_2
    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    .line 1137
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v7

    .line 1141
    :cond_3
    if-eqz v6, :cond_4

    .line 1143
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1147
    :cond_4
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide v11, v0

    invoke-static {v6, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1149
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v2, v11

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    move-wide v14, v9

    move-wide v8, v14

    .line 1150
    goto :goto_0

    .line 1132
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 1160
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1162
    :goto_3
    return-void

    .line 1152
    :catch_0
    move-exception v6

    move-wide v7, v9

    .line 1155
    :goto_4
    :try_start_2
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 1156
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to process pending delete for id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1160
    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1152
    :catch_1
    move-exception v6

    move-wide v7, v8

    goto :goto_4

    :cond_8
    move v14, v10

    move-object v15, v6

    move v6, v14

    move-wide/from16 v16, v8

    move-wide/from16 v9, v16

    move-object v8, v15

    goto/16 :goto_2
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 8
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "oldMessage"
    .parameter "newMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v5, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v6, "Local-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1513
    .local v0, oldMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 1518
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 1528
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v5

    if-nez v5, :cond_2

    .line 1529
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1530
    .local v4, sentinel:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1531
    iget-wide v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1532
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1533
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1534
    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1535
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 1543
    .end local v4           #sentinel:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 1544
    .local v1, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1548
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1549
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_3

    .line 1550
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1555
    :cond_3
    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1556
    .local v2, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v2, :cond_4

    .line 1557
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1562
    :cond_4
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 1563
    .local v3, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1567
    sget-object v5, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 1572
    :cond_5
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1576
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1577
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_6

    .line 1578
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1579
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 1583
    :cond_6
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-instance v6, Lcom/android/email/MessagingController$6;

    invoke-direct {v6, p0, p5}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v5, v3, v6}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1602
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1606
    :cond_7
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1607
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 1608
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1283
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "accountKey=?"

    const-string v9, "mailboxKey"

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1287
    const-wide/16 v4, -0x1

    .line 1290
    const/4 v6, 0x0

    .line 1292
    const/4 v7, 0x0

    move-object/from16 v21, v7

    move-object/from16 v22, v6

    move-wide v6, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    .line 1294
    :goto_0
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1295
    const/4 v10, 0x0

    .line 1296
    const/4 v11, 0x0

    .line 1297
    const/4 v12, 0x0

    .line 1298
    const/4 v13, 0x0

    .line 1300
    const-class v8, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1302
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1303
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    iget-wide v14, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v14, v15}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    .line 1305
    if-eqz v9, :cond_d

    .line 1306
    if-eqz v4, :cond_0

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    iget-wide v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v6, v6, v11

    if-eqz v6, :cond_1

    .line 1307
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-wide v6, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v4, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 1308
    if-nez v4, :cond_1

    move-wide/from16 v6, v19

    .line 1309
    goto :goto_0

    .line 1312
    :cond_1
    iget-wide v6, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v6, v6, v11

    if-eqz v6, :cond_c

    .line 1313
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    .line 1314
    const/4 v6, 0x1

    move v7, v6

    move v6, v13

    .line 1319
    :goto_1
    iget-boolean v10, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v10, v11, :cond_6

    const/4 v10, 0x1

    .line 1320
    :goto_2
    iget-boolean v11, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v12, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_3
    move v15, v6

    move v14, v11

    move v13, v10

    move/from16 v21, v7

    move-object v7, v4

    move/from16 v4, v21

    .line 1324
    :goto_4
    if-nez v5, :cond_3

    if-nez v4, :cond_2

    if-nez v13, :cond_2

    if-nez v14, :cond_2

    if-eqz v15, :cond_3

    .line 1326
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v10, 0x0

    invoke-static {v5, v6, v10}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v5

    .line 1330
    :cond_3
    if-eqz v4, :cond_8

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    .line 1332
    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1340
    :cond_4
    :goto_5
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1342
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v4, v7

    move-wide/from16 v6, v19

    .line 1343
    goto/16 :goto_0

    .line 1316
    :cond_5
    const/4 v6, 0x1

    move v7, v10

    goto :goto_1

    .line 1319
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1320
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 1334
    :cond_8
    if-nez v13, :cond_9

    if-nez v14, :cond_9

    if-eqz v15, :cond_4

    :cond_9
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 1335
    invoke-direct/range {v10 .. v17}, Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1345
    :catch_0
    move-exception v4

    move-wide/from16 v5, v19

    .line 1348
    :goto_6
    :try_start_2
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_a

    .line 1349
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to process pending update for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1353
    :cond_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1355
    :goto_7
    return-void

    .line 1353
    :cond_b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1345
    :catch_1
    move-exception v4

    move-wide v5, v6

    goto :goto_6

    :cond_c
    move v6, v13

    move v7, v10

    goto/16 :goto_1

    :cond_d
    move v15, v13

    move v14, v12

    move-object v7, v4

    move v4, v10

    move v13, v11

    goto/16 :goto_4
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 23
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1182
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? and type=5"

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1186
    .local v19, mailboxes:Landroid/database/Cursor;
    const-wide/16 v15, -0x1

    .line 1189
    .local v15, lastMessageId:J
    const/4 v10, 0x0

    .line 1190
    .local v10, remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1191
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1192
    .local v17, mailboxId:J
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 1194
    .local v7, mailboxKeyArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1197
    .local v12, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 1205
    .local v21, upsyncs1:Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1207
    if-nez v10, :cond_2

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v10

    .line 1212
    :cond_2
    if-nez v12, :cond_3

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 1214
    if-eqz v12, :cond_1

    .line 1219
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1220
    .local v13, id:J
    move-wide v15, v13

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    .line 1221
    invoke-direct/range {v8 .. v14}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1224
    .end local v13           #id:J
    :catchall_0
    move-exception v3

    if-eqz v21, :cond_4

    .line 1225
    :try_start_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1259
    .end local v7           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v17           #mailboxId:J
    .end local v21           #upsyncs1:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object/from16 v20, v3

    .line 1262
    .local v20, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1263
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process pending upsync for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1267
    :cond_5
    if-eqz v19, :cond_6

    .line 1268
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1271
    .end local v20           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_6
    :goto_2
    return-void

    .line 1224
    .restart local v7       #mailboxKeyArgs:[Ljava/lang/String;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v17       #mailboxId:J
    .restart local v21       #upsyncs1:Landroid/database/Cursor;
    :cond_7
    if-eqz v21, :cond_8

    .line 1225
    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1230
    :cond_8
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "mailboxKey=?"

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v22

    .line 1235
    .local v22, upsyncs2:Landroid/database/Cursor;
    :cond_9
    :goto_3
    :try_start_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1237
    if-nez v10, :cond_a

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v10

    .line 1242
    :cond_a
    if-nez v12, :cond_b

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 1244
    if-eqz v12, :cond_9

    .line 1249
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1250
    .restart local v13       #id:J
    move-wide v15, v13

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    .line 1251
    invoke-direct/range {v8 .. v14}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1254
    .end local v13           #id:J
    :catchall_1
    move-exception v3

    if-eqz v22, :cond_c

    .line 1255
    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1267
    .end local v7           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v17           #mailboxId:J
    .end local v21           #upsyncs1:Landroid/database/Cursor;
    .end local v22           #upsyncs2:Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    if-eqz v19, :cond_d

    .line 1268
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v3

    .line 1254
    .restart local v7       #mailboxKeyArgs:[Ljava/lang/String;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v17       #mailboxId:J
    .restart local v21       #upsyncs1:Landroid/database/Cursor;
    .restart local v22       #upsyncs2:Landroid/database/Cursor;
    :cond_e
    if-eqz v22, :cond_0

    .line 1255
    :try_start_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 1267
    .end local v7           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v17           #mailboxId:J
    .end local v21           #upsyncs1:Landroid/database/Cursor;
    .end local v22           #upsyncs2:Landroid/database/Cursor;
    :cond_f
    if-eqz v19, :cond_6

    .line 1268
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 7
    .parameter "resolver"
    .parameter "remoteStore"
    .parameter "account"
    .parameter "mailbox"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1378
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1380
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 1381
    .local v0, deleteUpdate:Z
    if-nez v1, :cond_1

    .line 1382
    const/4 v0, 0x1

    .line 1383
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync failed for null message, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :goto_0
    if-eqz v0, :cond_0

    .line 1399
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1400
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1402
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 1384
    :cond_1
    iget v3, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1385
    const/4 v0, 0x0

    .line 1386
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1387
    :cond_2
    iget v3, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1388
    const/4 v0, 0x0

    .line 1389
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1390
    :cond_3
    iget v3, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 1391
    const/4 v0, 0x0

    .line 1392
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1394
    :cond_4
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsyc triggered for message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "description"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    .line 182
    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 183
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 184
    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 185
    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 188
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 189
    .local v1, ie:Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 58
    .parameter "account"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 473
    const-string v6, "Email"

    const-string v7, "*** synchronizeMailboxGeneric ***"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 477
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 478
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v50

    .line 479
    .local v50, totalMessages:I
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    move-object v0, v6

    move/from16 v1, v50

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 941
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v50           #totalMessages:I
    :goto_0
    return-object v6

    .line 484
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/16 v28, 0x0

    .line 485
    .local v28, localUidCursor:Landroid/database/Cursor;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v26, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :try_start_0
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController$LocalMessageInfo;->access$500()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "accountKey=? AND mailboxKey=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 498
    :goto_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 499
    new-instance v19, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 500
    .local v19, info:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v26

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 503
    .end local v19           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_0
    move-exception v6

    if-eqz v28, :cond_2

    .line 504
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6

    .line 503
    :cond_3
    if-eqz v28, :cond_4

    .line 504
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "accountKey=? AND mailboxKey=? AND flagRead=0"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 520
    .local v30, localUnreadCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v44

    .line 521
    .local v44, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v44

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v38

    .line 530
    .local v38, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x6

    if-eq v6, v7, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 532
    :cond_5
    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 533
    sget-object v6, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v38

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 534
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    .line 540
    :cond_6
    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 546
    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v40

    .line 549
    .local v40, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    move/from16 v57, v0

    .line 550
    .local v57, visibleLimit:I
    if-gtz v57, :cond_7

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v6, v7}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v19

    .line 553
    .local v19, info:Lcom/android/email/mail/Store$StoreInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v57, v0

    .line 557
    .end local v19           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_7
    const/4 v6, 0x0

    move v0, v6

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v41, v0

    .line 558
    .local v41, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v52, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    new-instance v47, Ljava/util/HashMap;

    invoke-direct/range {v47 .. v47}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v47, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    const/16 v33, 0x0

    .line 562
    .local v33, newMessageCount:I
    if-lez v40, :cond_c

    .line 566
    const/4 v6, 0x0

    sub-int v7, v40, v57

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v43, v6, 0x1

    .line 567
    .local v43, remoteStart:I
    move/from16 v36, v40

    .line 568
    .local v36, remoteEnd:I
    const/4 v6, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v43

    move/from16 v2, v36

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v41

    .line 569
    move-object/from16 v12, v41

    .local v12, arr$:[Lcom/android/emailcommon/mail/Message;
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v31, v12, v17

    .line 570
    .local v31, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v31 .. v31}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v47

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 581
    .end local v31           #message:Lcom/android/emailcommon/mail/Message;
    :cond_8
    move-object/from16 v12, v41

    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    aget-object v31, v12, v17

    .line 582
    .restart local v31       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v31 .. v31}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 583
    .local v24, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v24, :cond_9

    .line 584
    add-int/lit8 v33, v33, 0x1

    .line 592
    :cond_9
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    if-nez v6, :cond_b

    .line 594
    :cond_a
    move-object/from16 v0, v52

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 605
    .end local v12           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v31           #message:Lcom/android/emailcommon/mail/Message;
    .end local v36           #remoteEnd:I
    .end local v43           #remoteStart:I
    :cond_c
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v11, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 612
    new-instance v16, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 613
    .local v16, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v8, Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 618
    .local v8, localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v52

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    move-object v12, v0

    new-instance v6, Lcom/android/email/MessagingController$3;

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v38

    move-object v1, v12

    move-object/from16 v2, v16

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 665
    .end local v8           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .end local v16           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    :cond_d
    new-instance v16, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 666
    .restart local v16       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v6, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    move-object/from16 v2, v16

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 668
    const/16 v46, 0x0

    .line 669
    .local v46, remoteSupportsSeen:Z
    const/16 v45, 0x0

    .line 670
    .local v45, remoteSupportsFlagged:Z
    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v12

    .local v12, arr$:[Lcom/android/emailcommon/mail/Flag;
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    aget-object v15, v12, v17

    .line 671
    .local v15, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v6, :cond_e

    .line 672
    const/16 v46, 0x1

    .line 674
    :cond_e
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v6, :cond_f

    .line 675
    const/16 v45, 0x1

    .line 670
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 679
    .end local v15           #flag:Lcom/android/emailcommon/mail/Flag;
    :cond_10
    if-nez v46, :cond_11

    if-eqz v45, :cond_17

    .line 680
    :cond_11
    move-object/from16 v12, v41

    .local v12, arr$:[Lcom/android/emailcommon/mail/Message;
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_17

    aget-object v39, v12, v17

    .line 681
    .local v39, remoteMessage:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v39 .. v39}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 682
    .local v25, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v25, :cond_13

    .line 680
    :cond_12
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 685
    :cond_13
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v27, v0

    .line 686
    .local v27, localSeen:Z
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v42

    .line 687
    .local v42, remoteSeen:Z
    if-eqz v46, :cond_15

    move/from16 v0, v42

    move/from16 v1, v27

    if-eq v0, v1, :cond_15

    const/4 v6, 0x1

    move/from16 v34, v6

    .line 688
    .local v34, newSeen:Z
    :goto_7
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v23, v0

    .line 689
    .local v23, localFlagged:Z
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v37

    .line 690
    .local v37, remoteFlagged:Z
    if-eqz v45, :cond_16

    move/from16 v0, v23

    move/from16 v1, v37

    if-eq v0, v1, :cond_16

    const/4 v6, 0x1

    move/from16 v32, v6

    .line 691
    .local v32, newFlagged:Z
    :goto_8
    if-nez v34, :cond_14

    if-eqz v32, :cond_12

    .line 692
    :cond_14
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v54

    .line 694
    .local v54, uri:Landroid/net/Uri;
    new-instance v53, Landroid/content/ContentValues;

    invoke-direct/range {v53 .. v53}, Landroid/content/ContentValues;-><init>()V

    .line 695
    .local v53, updateValues:Landroid/content/ContentValues;
    const-string v6, "flagRead"

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v53

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 696
    const-string v6, "flagFavorite"

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v53

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 697
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v54

    move-object/from16 v2, v53

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 687
    .end local v23           #localFlagged:Z
    .end local v32           #newFlagged:Z
    .end local v34           #newSeen:Z
    .end local v37           #remoteFlagged:Z
    .end local v53           #updateValues:Landroid/content/ContentValues;
    .end local v54           #uri:Landroid/net/Uri;
    :cond_15
    const/4 v6, 0x0

    move/from16 v34, v6

    goto :goto_7

    .line 690
    .restart local v23       #localFlagged:Z
    .restart local v34       #newSeen:Z
    .restart local v37       #remoteFlagged:Z
    :cond_16
    const/4 v6, 0x0

    move/from16 v32, v6

    goto :goto_8

    .line 736
    .end local v12           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v23           #localFlagged:Z
    .end local v25           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v27           #localSeen:Z
    .end local v34           #newSeen:Z
    .end local v37           #remoteFlagged:Z
    .end local v39           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    .end local v42           #remoteSeen:Z
    :cond_17
    new-instance v29, Ljava/util/HashSet;

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 737
    .local v29, localUidsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v47 .. v47}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 738
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 739
    .local v51, uidToDelete:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 743
    .local v20, infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v9, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 747
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v55

    .line 749
    .local v55, uriToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v55

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 752
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    .line 754
    .local v49, syncRowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v49

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 755
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 757
    .local v14, deletERowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v14, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9

    .line 768
    .end local v14           #deletERowToDelete:Landroid/net/Uri;
    .end local v20           #infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v49           #syncRowToDelete:Landroid/net/Uri;
    .end local v51           #uidToDelete:Ljava/lang/String;
    .end local v55           #uriToDelete:Landroid/net/Uri;
    :cond_18
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v21, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v48, smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/emailcommon/mail/Message;

    .line 771
    .restart local v31       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v31 .. v31}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v6

    const/16 v7, 0x6400

    if-le v6, v7, :cond_19

    .line 772
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 774
    :cond_19
    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 785
    .end local v31           #message:Lcom/android/emailcommon/mail/Message;
    :cond_1a
    new-instance v16, Lcom/android/emailcommon/mail/FetchProfile;

    .end local v16           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 786
    .restart local v16       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v48

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolver:Landroid/content/ContentResolver;
    check-cast v5, [Lcom/android/emailcommon/mail/Message;

    new-instance v6, Lcom/android/email/MessagingController$4;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, v38

    move-object v1, v5

    move-object/from16 v2, v16

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 802
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 803
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    move-object/from16 v0, v38

    move-object v1, v5

    move-object/from16 v2, v16

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 805
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/emailcommon/mail/Message;

    .line 806
    .restart local v31       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v31 .. v31}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 810
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 811
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 815
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/emailcommon/mail/Message;

    const/4 v7, 0x0

    aput-object v31, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move-object v1, v6

    move-object/from16 v2, v16

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 818
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_b

    .line 825
    :cond_1b
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v56, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v13, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v56

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 829
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/emailcommon/mail/Part;

    .line 830
    .local v35, part:Lcom/android/emailcommon/mail/Part;
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 831
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 834
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/emailcommon/mail/Message;

    const/4 v7, 0x0

    aput-object v31, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move-object v1, v6

    move-object/from16 v2, v16

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_c

    .line 837
    .end local v35           #part:Lcom/android/emailcommon/mail/Part;
    :cond_1c
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_b

    .line 844
    .end local v13           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v31           #message:Lcom/android/emailcommon/mail/Message;
    .end local v56           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_1d
    const/4 v6, 0x0

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 941
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v0, v6

    move/from16 v1, v40

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 11
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 384
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 386
    .local v8, nc:Lcom/android/email/NotificationController;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 391
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 392
    .local v9, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 393
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v10

    .line 399
    .local v10, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    iget v5, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 403
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 414
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    return-void

    .line 396
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v9       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .restart local v10       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_0

    .line 404
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 408
    .local v5, e:Lcom/android/emailcommon/mail/MessagingException;
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_1

    .line 410
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 195
    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 2095
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 2098
    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 2126
    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 956
    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 971
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 973
    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 974
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 975
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p4, v2}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 978
    :cond_0
    if-eqz v1, :cond_1

    .line 979
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_1
    return-void

    .line 978
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_2

    .line 979
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 978
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    .locals 17
    .parameter "message"
    .parameter "localMessage"
    .parameter "loadStatus"
    .parameter "context"

    .prologue
    .line 998
    :try_start_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide v3, v0

    move-object/from16 v0, p4

    move-wide v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v10

    .line 1000
    .local v10, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    if-nez v10, :cond_0

    .line 1001
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Body;

    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1005
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v5, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v7, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 1009
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v16, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1013
    move-object v0, v10

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1017
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 1020
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V

    .line 1023
    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1025
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1026
    .local v11, cv:Landroid/content/ContentValues;
    const-string v3, "flagAttachment"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move v4, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1027
    const-string v3, "flagLoaded"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 1030
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1041
    .end local v9           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :goto_0
    return-void

    .line 1032
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 1033
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while copying downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1036
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v3

    move-object v14, v3

    .line 1037
    .local v14, rte:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    .end local v14           #rte:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    move-object v12, v3

    .line 1039
    .local v12, ioe:Ljava/io/IOException;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public listFolders(JLcom/android/email/MessagingListener;)V
    .locals 3
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 250
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 254
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v4, v0

    const/4 v11, 0x1

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 1880
    const-string v15, "loadAttachment"

    new-instance v4, Lcom/android/email/MessagingController$8;

    move-object/from16 v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move/from16 v12, p10

    move-wide/from16 v13, p5

    invoke-direct/range {v4 .. v14}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;JJJZJ)V

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p9

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1969
    return-void
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 1793
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$7;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1867
    return-void
.end method

.method public processPendingActions(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1044
    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1065
    return-void
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 199
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v2}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    iput-boolean v5, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 173
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 174
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 176
    :cond_1
    iput-boolean v4, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_0

    .line 168
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 169
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    :cond_2
    move v3, v4

    .line 174
    goto :goto_1
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1978
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/MessagingController$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1983
    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v7

    .line 1995
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    .line 1996
    const-wide/16 v0, -0x1

    cmp-long v0, v5, v0

    if-nez v0, :cond_0

    .line 2078
    :goto_0
    return-void

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2000
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2006
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-gtz v1, :cond_1

    .line 2076
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2010
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 2012
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v9

    .line 2013
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 2014
    invoke-virtual {v1}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v10

    .line 2015
    const/4 v1, 0x0

    .line 2016
    if-eqz v10, :cond_9

    .line 2017
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2018
    const-string v2, "mailboxKey"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v11, v1

    .line 2022
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_8

    .line 2023
    const-wide/16 v1, -0x1

    .line 2025
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2026
    iget-object v3, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 2028
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2029
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2030
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t send #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; unloaded attachments"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2036
    :catch_0
    move-exception v3

    move-object v6, v3

    move-wide v4, v1

    .line 2038
    :try_start_3
    instance-of v1, v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_3

    .line 2039
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v7, v1, v2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 2041
    :cond_3
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2070
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 2071
    :try_start_4
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_4

    .line 2072
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v7, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 2074
    :cond_4
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const-wide/16 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2076
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2035
    :cond_5
    :try_start_5
    invoke-virtual {v9, v1, v2}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2045
    :try_start_6
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2047
    if-eqz v10, :cond_7

    .line 2050
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 2052
    if-eqz v4, :cond_6

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 2054
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2057
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 2076
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2059
    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2061
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2063
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2064
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2068
    :cond_8
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V

    .line 2069
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v7, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2076
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_9
    move-object v11, v1

    goto/16 :goto_1
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    .line 363
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 367
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
