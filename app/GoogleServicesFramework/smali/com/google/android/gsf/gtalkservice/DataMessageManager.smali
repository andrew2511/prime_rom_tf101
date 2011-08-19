.class public Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.super Ljava/lang/Object;
.source "DataMessageManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;,
        Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;
    }
.end annotation


# static fields
.field private static final RESERVED_INTENT_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mHandler:Landroid/os/Handler;

.field private mLockObject:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->RESERVED_INTENT_KEYS:Ljava/util/HashSet;

    .line 62
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->RESERVED_INTENT_KEYS:Ljava/util/HashSet;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->reportNoReceiverError(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 356
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMsgMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method private parseDataMessageIntent(Lorg/jivesoftware/smack/packet/DataMessage;)Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    .locals 14
    .parameter "dataMsg"

    .prologue
    const/4 v13, 0x2

    .line 230
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, from:Ljava/lang/String;
    const-string v10, "GTalkService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDataMessageIntent: from="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, category:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 236
    const-string v10, "GTalkService"

    const-string v11, "[DataMsgMgr] found msg w/o category, dropping"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v10, 0x0

    .line 333
    :goto_0
    return-object v10

    .line 243
    :cond_1
    const-string v10, "GSYNC_TICKLE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 244
    const-string v1, "com.google.android.gsf.subscribedfeeds"

    .line 256
    :cond_2
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    if-eqz v10, :cond_3

    .line 257
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->notifyLastDataMessageReceived()V

    .line 260
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 265
    .local v4, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/DataMessage$AppData;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 266
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 267
    .local v0, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, value:Ljava/lang/String;
    sget-object v10, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->RESERVED_INTENT_KEYS:Ljava/util/HashSet;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "GOOGLE."

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 271
    :cond_4
    const-string v10, "GTalkService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DataMsgMgr] parseDataMessageIntent: not including app data -- key is reserved: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :cond_5
    const-string v10, "GTalkService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 278
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse intent data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 280
    :cond_6
    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 284
    .end local v0           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_7
    const-string v10, "com.google.android.gsf"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "google.com"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 290
    const-string v10, "registration_id"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, registration_id:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 295
    const-string v10, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {v3, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 297
    const-string v10, "app"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    .end local v7           #registration_id:Ljava/lang/String;
    :cond_8
    const-string v10, "from"

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v10, "GTalkService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse intent, category="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 307
    :cond_9
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, token:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 310
    const-string v10, "collapse_key"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    :cond_a
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getPermission()Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, permission:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".permission.C2D_MESSAGE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    :cond_b
    :goto_2
    const-string v10, "INSTALL_ASSET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "REMOVE_ASSET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "DECLINE_ASSET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "UPDATES_AVAILABLE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "SERVER_NOTIFICATION"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 331
    :cond_c
    const/4 v6, 0x0

    .line 333
    :cond_d
    new-instance v10, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;

    invoke-direct {v10, v3, v6}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_e
    const-string v10, "NONE"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 321
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private reportNoReceiverError(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "intent"
    .parameter "from"

    .prologue
    const/4 v6, 0x0

    .line 339
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 340
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    .local v0, app:Ljava/lang/String;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver package not found, unregister application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sender "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, unregIntent:Landroid/content/Intent;
    const-string v3, "app"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const-string v3, "app_gsf"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findReceiverForIntent(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 172
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 174
    .local v2, ts:J
    invoke-virtual {v0, p1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReceiverForIntent: queryBroadcastReceivers took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 181
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v7

    .line 185
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "connContext"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 133
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    .line 134
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 141
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "GOOGLE_C2DM"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 142
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 143
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 163
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConnection for accountId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 169
    return-void
.end method

.method public processDataMessageIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .parameter "intent"
    .parameter "permission"
    .parameter "callbackReceiver"

    .prologue
    const/4 v6, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string v0, "GTalkService"

    const-string v1, "parseDataMessageIntent() returned null intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 213
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 218
    .end local v8           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->acquireWakeLock()V

    .line 220
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send ordered broadcast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_3

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 221
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " with permission="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter "packet"

    .prologue
    .line 189
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v1, :cond_0

    .line 190
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->parseDataMessageIntent(Lorg/jivesoftware/smack/packet/DataMessage;)Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;

    move-result-object v7

    .line 192
    .local v7, result:Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    if-eqz v7, :cond_1

    .line 193
    iget-object v8, v7, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->intent:Landroid/content/Intent;

    iget-object v9, v7, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->permission:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;

    iget-object v3, v7, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;-><init>(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Ljava/lang/String;J)V

    invoke-virtual {p0, v8, v9, v1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processDataMessageIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 201
    .end local v7           #result:Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v7       #result:Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    :cond_1
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataMessageMgr] processPacket: cannot parse data message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
