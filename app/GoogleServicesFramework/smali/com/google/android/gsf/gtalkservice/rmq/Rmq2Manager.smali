.class public Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
.super Ljava/lang/Object;
.source "Rmq2Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    }
.end annotation


# static fields
.field private static sIncludeStreamId:Z


# instance fields
.field private mAccountId:J

.field private final mAckedS2dMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAckingInterval:I

.field private final mD2sIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastStreamIdAcked:I

.field private mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

.field private mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

.field private mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

.field private mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

.field private final mResendQueue:Ljava/util/LinkedList;

.field private mRmqAckLock:Ljava/lang/Object;

.field private mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

.field private mStreamIdIn:I

.field private mStreamIdOut:I

.field private mUnackedS2dIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sIncludeStreamId:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Landroid/content/ContentResolver;J)V
    .locals 6
    .parameter "packetSender"
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    .line 147
    new-instance v2, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;

    invoke-direct {v2, p2}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;

    invoke-direct {v3, p2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;-><init>(Landroid/content/ContentResolver;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;-><init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;J)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;J)V
    .locals 2
    .parameter "packetSender"
    .parameter "clientRmq"
    .parameter "s2dRmq"
    .parameter "accountId"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    .line 75
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAccountId:J

    .line 128
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    .line 132
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    .line 158
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    .line 159
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    .line 160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    .line 161
    iput-wide p4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAccountId:J

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendPackets()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private ackD2sMessagesInternal(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, d2sIdsToAck:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 615
    .local v3, size:I
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v4, :cond_0

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ackD2sMessagesInternal: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 619
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    .local v2, rmq2Ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 622
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    .line 623
    .local v0, d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->d2sId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    .end local v0           #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v4, v2}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesByRmq2Ids(Ljava/util/List;)I

    .line 629
    return-void
.end method

.method public static getIncludeStreamIdInProtobuf()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sIncludeStreamId:Z

    return v0
.end method

.method private internalProcessS2dMessage(Ljava/lang/String;I)V
    .locals 12
    .parameter "s2dId"
    .parameter "lastStreamIdReceived"

    .prologue
    .line 540
    const-string v9, "Rmq"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 541
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process S2d: s2dId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastStreamId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mStreamIdIn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 545
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 546
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v9

    .line 547
    :try_start_0
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_1
    const/4 v4, 0x0

    .line 552
    .local v4, deviceStreamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 554
    .local v8, s2dIdsToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, -0x1

    if-eq p2, v9, :cond_6

    .line 556
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 558
    .local v1, d2sIdsToAck:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v9

    .line 566
    :try_start_1
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    .line 567
    .local v2, d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget v10, v2, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->streamId:I

    if-ge p2, v10, :cond_7

    .line 573
    .end local v2           #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 575
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 576
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->ackD2sMessagesInternal(Ljava/util/List;)V

    .line 586
    :cond_3
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v10

    .line 587
    :try_start_2
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 589
    .local v3, deviceStreamId:I
    if-ge p2, v3, :cond_8

    .line 606
    .end local v3           #deviceStreamId:I
    :cond_5
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 609
    .end local v1           #d2sIdsToAck:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    :cond_6
    invoke-direct {p0, p1, v8, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->updateS2dIds(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 610
    return-void

    .line 548
    .end local v4           #deviceStreamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #s2dIdsToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 571
    .restart local v1       #d2sIdsToAck:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    .restart local v2       #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .restart local v4       #deviceStreamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #s2dIdsToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    .end local v2           #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 593
    .restart local v3       #deviceStreamId:I
    :cond_8
    if-nez v4, :cond_9

    .line 594
    :try_start_5
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 595
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 598
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 602
    .local v0, ackedS2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 603
    .local v7, id:Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    .end local v0           #ackedS2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #deviceStreamId:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #id:Ljava/lang/String;
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 750
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rmq2Mgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method private makeRmqPacket(JLorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .locals 9
    .parameter "rmqId"
    .parameter "packet"

    .prologue
    .line 335
    const/4 v8, 0x0

    .line 338
    .local v8, retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :try_start_0
    invoke-virtual {p3}, Lorg/jivesoftware/smack/packet/Packet;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 339
    .local v7, protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-virtual {v7}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->getTag(Lcom/google/common/io/protocol/ProtoBufType;)B

    move-result v4

    .line 340
    .local v4, tag:B
    invoke-virtual {v7}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v5

    .line 341
    .local v5, bytes:[B
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    move-object v1, p3

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(Lorg/jivesoftware/smack/packet/Packet;JB[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v4           #tag:B
    .end local v5           #bytes:[B
    .end local v7           #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v8           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .local v0, retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :goto_0
    return-object v0

    .line 342
    .end local v0           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v8       #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 343
    .local v6, ioe:Ljava/io/IOException;
    const-string v1, "Rmq"

    const-string v2, "makeRmqPacket: caught IOException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .end local v8           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v0       #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    goto :goto_0
.end method

.method private processSelectiveAck(Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;)V
    .locals 3
    .parameter "ack"

    .prologue
    .line 684
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;->getIdList()Ljava/util/List;

    move-result-object v0

    .line 686
    .local v0, acks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got SelectiveAck, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v1, v0}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesByRmq2Ids(Ljava/util/List;)I

    .line 692
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendRmqPackets()V

    .line 693
    return-void
.end method

.method private resendPackets()V
    .locals 4

    .prologue
    .line 733
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 735
    monitor-exit v1

    .line 747
    return-void

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .line 740
    .local v0, packet:Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v2, :cond_1

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resend packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 744
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v2, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 745
    monitor-exit v1

    goto :goto_0

    .end local v0           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resendRmqPackets()V
    .locals 8

    .prologue
    .line 696
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAccountId:J

    invoke-interface {v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getRmq2Packets(J)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;

    move-result-object v2

    .line 697
    .local v2, list:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->size()I

    move-result v0

    .line 700
    .local v0, count:I
    if-nez v0, :cond_1

    .line 701
    :try_start_0
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    const-string v4, "no rmq packets to resend"

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 727
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    .line 729
    :goto_0
    return-void

    .line 707
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 708
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 709
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 711
    .local v3, packet:Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v5, :cond_2

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendRmqPackets: add packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 714
    :cond_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    :try_start_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 727
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    goto :goto_0

    .line 716
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 727
    .end local v1           #i:I
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    throw v4
.end method

.method private sendStreamAck()V
    .locals 6

    .prologue
    .line 661
    const/4 v2, 0x0

    .line 663
    .local v2, needToSendAck:Z
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v3

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getAckingInterval()I

    move-result v1

    .line 666
    .local v1, ackingInterval:I
    const-string v4, "Rmq"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendStreamAck(?): mStreamIdIn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastStreamIdAcked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ackInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 671
    :cond_0
    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    sub-int/2addr v4, v5

    if-lt v4, v1, :cond_1

    .line 672
    const/4 v2, 0x1

    .line 674
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    if-eqz v2, :cond_2

    .line 677
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;-><init>()V

    .line 679
    .local v0, ack:Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v3, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 681
    .end local v0           #ack:Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;
    :cond_2
    return-void

    .line 674
    .end local v1           #ackingInterval:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static setIncludeStreamId(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 203
    sput-boolean p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sIncludeStreamId:Z

    .line 204
    return-void
.end method

.method private setLastStreamIdAcked(I)Z
    .locals 3
    .parameter "lastStreamIdReceived"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    if-le p1, v1, :cond_0

    .line 228
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    .line 229
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 239
    :goto_0
    return v0

    .line 231
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    if-le v0, p1, :cond_1

    .line 235
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! mLastStreamIdAcked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than lastStreamIdReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateS2dIds(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter "s2dIdToAdd"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p2, s2dIdsToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, deviceStreamIdsAcked:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 636
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateS2dIds: add s2did="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v3, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->addS2dId(Ljava/lang/String;)V

    .line 641
    :cond_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 642
    .local v1, size:I
    :goto_0
    if-lez v1, :cond_3

    .line 643
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateS2dIds: delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2d ids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 644
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v3, p2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->deleteS2dIds(Ljava/util/List;)V

    .line 648
    :cond_3
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 649
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 650
    .local v2, streamId:Ljava/lang/Integer;
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_4

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateS2dIds: remove streamId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 653
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v3

    .line 654
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 641
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #size:I
    .end local v2           #streamId:Ljava/lang/Integer;
    :cond_5
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 658
    .restart local v1       #size:I
    :cond_6
    return-void
.end method


# virtual methods
.method public getAckingInterval()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckingInterval:I

    return v0
.end method

.method public getD2sIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 258
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v0, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    monitor-exit v1

    .line 261
    return-object v0

    .line 259
    .end local v0           #retVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLastStreamIdAcked()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    monitor-exit v0

    return v1

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastStreamIdReceived()I
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    monitor-exit v0

    return v1

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMessageQueue()Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    return-object v0
.end method

.method public getS2dIdStore()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    return-object v0
.end method

.method public getStreamId()I
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    monitor-exit v0

    return v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resetStreamIds()V

    .line 166
    return-void
.end method

.method public processAndRetrieveInitialS2dIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->getS2dIds()Ljava/util/List;

    move-result-object v2

    .line 281
    .local v2, s2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v3

    .line 282
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .local v1, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    return-object v2
.end method

.method public processD2sMessage(Ljava/lang/String;)I
    .locals 5
    .parameter "rmq2Id"

    .prologue
    .line 358
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    new-instance v1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;-><init>(ILjava/lang/String;)V

    .line 362
    .local v1, d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local v1           #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    :cond_0
    const-string v2, "Rmq"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processD2sMessage: mStreamIdOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 374
    :cond_1
    const/4 v0, 0x0

    .line 376
    .local v0, ackedS2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v2

    .line 377
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 378
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    .line 379
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    .line 381
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v2

    .line 384
    if-eqz v0, :cond_3

    .line 385
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 389
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    return v2

    .line 364
    .end local v0           #ackedS2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 381
    .end local v1           #d2sInfo:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .restart local v0       #ackedS2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 387
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->internalProcessS2dMessage(Ljava/lang/String;I)V

    .line 532
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sendStreamAck()V

    .line 534
    instance-of v0, p1, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;

    if-eqz v0, :cond_0

    .line 535
    check-cast p1, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processSelectiveAck(Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;)V

    .line 537
    :cond_0
    return-void

    .line 526
    .restart local p1
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetStreamIds()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    .line 170
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    .line 171
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    .line 173
    const-string v0, "Rmq"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### resetStreamIds: mStreamIdIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastStreamIdAcked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v0

    .line 189
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 190
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 191
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 186
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 190
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public send(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 7
    .parameter "packet"

    .prologue
    .line 304
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v4}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getNextRmqId()J

    move-result-wide v1

    .line 305
    .local v1, rmqId:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, rmq2Id:Ljava/lang/String;
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send: rmq2Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->setRmq2Id(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->makeRmqPacket(JLorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    move-result-object v3

    .line 312
    .local v3, rmqPacket:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    if-nez v3, :cond_1

    .line 313
    const-string v4, "Rmq"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send: cannot make RmqPacket from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v4, 0x0

    .line 329
    :goto_0
    return v4

    .line 319
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->enqueueMessage(JLcom/google/android/gsf/gtalkservice/rmq/RmqPacket;)V

    .line 321
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 322
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 323
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v5, v3}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v5

    monitor-exit v4

    move v4, v5

    goto :goto_0

    .line 325
    :cond_2
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v5, :cond_3

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send: add packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to resend queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 328
    :cond_3
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 329
    const/4 v5, 0x1

    monitor-exit v4

    move v4, v5

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B
    .locals 11
    .parameter "serializer"
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 396
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Packet;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 401
    .local v3, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v3, :cond_1

    .line 402
    const-string v7, "Rmq"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    const-string v7, "serializePacketAsProtoBuf: protobuf==null"

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-virtual {p0, v9}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-object v7, v9

    .line 520
    :goto_0
    return-object v7

    .line 409
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    .line 410
    .local v6, type:Lcom/google/common/io/protocol/ProtoBufType;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getLastStreamIdReceived()I

    move-result v1

    .line 412
    .local v1, lastStreamIdReceived:I
    const/4 v2, 0x0

    .line 415
    .local v2, persistentId:Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_5

    .line 416
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 417
    .local v5, streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 418
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 419
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 421
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 422
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 423
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v5           #streamId:I
    :cond_3
    :goto_1
    invoke-interface {p1, v3}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v4

    .line 515
    .local v4, result:[B
    if-eqz v4, :cond_4

    .line 516
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getStreamId()I

    move-result v8

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v9

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/android/gsf/gtalkservice/LogTag;->logRmq2(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;IIZ)V

    :cond_4
    move-object v7, v4

    .line 520
    goto :goto_0

    .line 425
    .end local v4           #result:[B
    :cond_5
    :try_start_1
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_7

    .line 426
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 427
    .restart local v5       #streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 428
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 429
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 431
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 432
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 433
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 508
    .end local v5           #streamId:I
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 509
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GTalkService"

    const-string v8, "serializePacketAsProtoBuf: caught "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    .line 510
    goto :goto_0

    .line 435
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_a

    .line 436
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 437
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 440
    .restart local v5       #streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 441
    const/16 v7, 0x9

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 442
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 444
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 445
    const/16 v7, 0xa

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 446
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto :goto_1

    .line 448
    .end local v5           #streamId:I
    :cond_a
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_d

    .line 449
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 450
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_b
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 453
    .restart local v5       #streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 454
    const/16 v7, 0xe

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 455
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 457
    :cond_c
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 458
    const/16 v7, 0xf

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 459
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 461
    .end local v5           #streamId:I
    :cond_d
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_10

    .line 462
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 463
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    :cond_e
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 466
    .restart local v5       #streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 467
    const/4 v7, 0x5

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 468
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 470
    :cond_f
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 471
    const/4 v7, 0x6

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 472
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 474
    .end local v5           #streamId:I
    :cond_10
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_13

    .line 475
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 476
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    :cond_11
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 479
    .restart local v5       #streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 480
    const/16 v7, 0xe

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 481
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 483
    :cond_12
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 484
    const/16 v7, 0xf

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 485
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 487
    .end local v5           #streamId:I
    :cond_13
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_16

    .line 488
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 489
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_14
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 492
    .restart local v5       #streamId:I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 493
    const/16 v7, 0xa

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 494
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 496
    :cond_15
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 497
    const/16 v7, 0xb

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 499
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 501
    .end local v5           #streamId:I
    :cond_16
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_17

    .line 502
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .restart local v5       #streamId:I
    goto/16 :goto_1

    .line 504
    .end local v5           #streamId:I
    :cond_17
    const-string v7, "Rmq"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serializePacketAsProtoBuf: unhandled type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public setAckingInterval(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 247
    if-gtz p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 250
    :cond_0
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckingInterval:I

    .line 251
    return-void
.end method
