.class Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;
.super Ljava/lang/Object;
.source "RosterManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/RosterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;Lcom/google/android/gsf/gtalkservice/RosterManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 23
    .parameter "packet"

    .prologue
    .line 367
    move-object/from16 v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    move-object v5, v0

    .line 368
    .local v5, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v10

    .line 370
    .local v10, accountId:J
    const/16 v20, 0x0

    .line 372
    .local v20, isRosterResult:Z
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v4, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gsf/gtalkservice/RosterManager;->isRosterRequestPendingForAccount(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v10, v11, v6}, Lcom/google/android/gsf/gtalkservice/RosterManager;->setRosterRequestPendingForAccount(JZ)V

    .line 382
    const/16 v20, 0x1

    .line 384
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getEtag()Ljava/lang/String;

    move-result-object v19

    .line 387
    .local v19, etag:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getNotModified()Ljava/lang/Boolean;

    move-result-object v22

    .line 388
    .local v22, notModifiedBoolean:Ljava/lang/Boolean;
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 391
    .local v21, notModified:Z
    :goto_0
    if-eqz v21, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    const-string v5, "roster not modified"

    .end local v5           #rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$600(Lcom/google/android/gsf/gtalkservice/RosterManager;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$500(Lcom/google/android/gsf/gtalkservice/RosterManager;)Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->setRosterFetched(Z)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$500(Lcom/google/android/gsf/gtalkservice/RosterManager;)Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 431
    :goto_1
    return-void

    .line 384
    .end local v19           #etag:Ljava/lang/String;
    .end local v21           #notModified:Z
    .end local v22           #notModifiedBoolean:Ljava/lang/Boolean;
    .restart local v5       #rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 388
    .restart local v19       #etag:Ljava/lang/String;
    .restart local v22       #notModifiedBoolean:Ljava/lang/Boolean;
    :cond_2
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_0

    .line 401
    .restart local v21       #notModified:Z
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v6, addedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v7, updatedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v8, deletedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    if-eqz v20, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v11}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$700(Lcom/google/android/gsf/gtalkservice/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V

    .line 428
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v9, v0

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$900(Lcom/google/android/gsf/gtalkservice/RosterManager;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$1000(Lcom/google/android/gsf/gtalkservice/RosterManager;)Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v4

    move-wide v1, v10

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->setRosterEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_4
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemCount()I

    move-result v4

    const/16 v9, 0x32

    if-ge v4, v9, :cond_5

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v12, v0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-wide/from16 v17, v10

    invoke-static/range {v12 .. v18}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$800(Lcom/google/android/gsf/gtalkservice/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V

    goto :goto_2

    .line 422
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-object v4, v0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$700(Lcom/google/android/gsf/gtalkservice/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V

    goto :goto_2
.end method
