.class public Lcom/google/android/gsf/gtalkservice/RosterManager;
.super Ljava/lang/Object;
.source "RosterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;,
        Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;,
        Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBatchPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteContactsSelectionArgs:[Ljava/lang/String;

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

.field private mRosterPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private mRosterRequestPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/RosterManager;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mDeleteContactsSelectionArgs:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/RosterManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/RosterManager;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/RosterManager;->fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/RosterManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->removePresenceForUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/RosterManager;)Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/RosterManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gsf/gtalkservice/RosterManager;->processLongRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gsf/gtalkservice/RosterManager;->processShortRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/RosterManager;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gsf/gtalkservice/RosterManager;->fireRosterChangedEvent(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private createDeleteRosterEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;
    .locals 6
    .parameter "username"

    .prologue
    const/4 v2, 0x0

    .line 456
    new-instance v0, Lorg/jivesoftware/smack/RosterEntry;

    sget-object v3, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/RosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/XMPPConnection;)V

    return-object v0
.end method

.method private createRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)Lorg/jivesoftware/smack/RosterEntry;
    .locals 6
    .parameter "item"

    .prologue
    .line 435
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, user:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v3

    .line 438
    .local v3, itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v4

    .line 440
    .local v4, itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    new-instance v0, Lorg/jivesoftware/smack/RosterEntry;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/RosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 446
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-static {}, Lorg/jivesoftware/smack/GoogleExtensions;->getSupportExtendedContactAttribute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetStatus()Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/RosterEntry;->googleSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 448
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetRejected()Z

    move-result v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/RosterEntry;->googleSetRejected(Z)V

    .line 449
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->isQuickContact()Z

    move-result v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/RosterEntry;->setQuickContact(Z)V

    .line 452
    :cond_0
    return-object v0
.end method

.method private editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
    .locals 5
    .parameter "username"
    .parameter "nickname"
    .parameter "status"

    .prologue
    .line 276
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 277
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 279
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 281
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 284
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 285
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v3, Lcom/google/android/gsf/gtalkservice/RosterManager$3;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/RosterManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 301
    return-void
.end method

.method private editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
    .locals 2
    .parameter "account"
    .parameter "username"
    .parameter "status"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, nickname:Ljava/lang/String;
    invoke-direct {p0, p3, v0, p4}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 272
    return-void
.end method

.method private fireRosterChangedEvent(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "accountId"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p3, addedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p4, updatedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p5, deletedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    const/4 v0, 0x0

    .line 703
    .local v0, notified:Z
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->entriesAdded(JLjava/util/ArrayList;)V

    .line 705
    const/4 v0, 0x1

    .line 707
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v1, p1, p2, p4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->entriesUpdated(JLjava/util/ArrayList;)V

    .line 709
    const/4 v0, 0x1

    .line 711
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 713
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v1, p1, p2, p5}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->entriesDeleted(JLjava/util/ArrayList;)V

    .line 714
    const/4 v0, 0x1

    .line 717
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->setRosterFetched(Z)V

    .line 719
    if-nez v0, :cond_3

    .line 722
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 724
    :cond_3
    return-void
.end method

.method private fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "user"
    .parameter "presence"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->presenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 336
    return-void
.end method

.method private handleBlockedEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 488
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, user:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove presence for blocked contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 493
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->removePresenceForUser(Ljava/lang/String;)V

    .line 495
    .end local v0           #user:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 754
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 758
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method

.method private processLongRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V
    .locals 17
    .parameter "rosterPacket"
    .parameter
    .parameter
    .parameter
    .parameter "removeObsolete"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/RosterPacket;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p3, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p4, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemsList()Ljava/util/ArrayList;

    move-result-object v14

    .line 625
    .local v14, rosterItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemCount()I

    move-result v15

    .line 626
    .local v15, size:I
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 628
    .local v13, itemsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLongRosterUpdate: removeObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 633
    :cond_0
    monitor-enter v14

    .line 634
    :try_start_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 635
    .local v12, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v12}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mDeleteContactsSelectionArgs:[Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v6, Lcom/google/android/gsf/gtalkservice/RosterManager;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v7, "account=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mDeleteContactsSelectionArgs:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 653
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 655
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 656
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 657
    .local v16, user:Ljava/lang/String;
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 659
    .restart local v12       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    if-nez v12, :cond_4

    .line 661
    if-eqz p5, :cond_2

    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 664
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v4, :cond_3

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLongRosterUpdate: add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to deleteEntries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 669
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->createDeleteRosterEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v4

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 683
    .end local v12           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v16           #user:Ljava/lang/String;
    :catchall_1
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 676
    .restart local v12       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .restart local v16       #user:Ljava/lang/String;
    :cond_4
    :try_start_3
    monitor-enter v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 677
    :try_start_4
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 678
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 680
    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 678
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 683
    .end local v12           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v16           #user:Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 689
    :goto_2
    monitor-enter v14

    .line 690
    :try_start_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 691
    .restart local v12       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_3

    .line 693
    .end local v12           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_3
    move-exception v4

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4

    .line 686
    :cond_6
    const-string v4, "processLongRosterUpdate"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_2

    .line 693
    :cond_7
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 694
    return-void
.end method

.method private processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .parameter "item"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p2, entries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p3, deleteEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    .line 501
    .local v1, itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->createRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    .line 504
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    sget-object v2, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRosterEntry: delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 506
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRosterEntry: add/update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 513
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->handleBlockedEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    goto :goto_0
.end method

.method private processShortRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V
    .locals 20
    .parameter "rosterPacket"
    .parameter
    .parameter
    .parameter
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/RosterPacket;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p2, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p3, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p4, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    const/4 v8, 0x0

    .line 537
    .local v8, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemCount()I

    move-result v18

    .line 539
    .local v18, size:I
    if-nez v18, :cond_0

    .line 540
    const-string v4, "processShortRosterUpdate: no roster item!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 544
    :cond_0
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processShortRosterUpdate: roster size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 547
    :cond_1
    add-int/lit8 v4, v18, 0x1

    new-array v8, v4, [Ljava/lang/String;

    .line 549
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemsList()Ljava/util/ArrayList;

    move-result-object v17

    .line 550
    .local v17, rosterItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 552
    .local v16, itemsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    const/4 v13, 0x1

    .line 553
    .local v13, index:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v10, buf:Ljava/lang/StringBuilder;
    const-string v4, "account=? AND ("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const/4 v4, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 556
    monitor-enter v17

    .line 557
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    move v14, v13

    .end local v13           #index:I
    .local v14, index:I
    :goto_1
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 558
    .local v15, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v15}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v19

    .line 559
    .local v19, user:Ljava/lang/String;
    aput-object v19, v8, v14

    .line 561
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 563
    add-int/lit8 v13, v14, 0x1

    .end local v14           #index:I
    .restart local v13       #index:I
    const/4 v4, 0x1

    if-le v14, v4, :cond_2

    .line 564
    :try_start_2
    const-string v4, " OR "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_2
    const-string v4, "username"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v14, v13

    .line 567
    .end local v13           #index:I
    .restart local v14       #index:I
    goto :goto_1

    .line 568
    .end local v15           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v19           #user:Ljava/lang/String;
    :cond_3
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 569
    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v6, Lcom/google/android/gsf/gtalkservice/RosterManager;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 577
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 579
    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 580
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 581
    .restart local v19       #user:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 583
    .restart local v15       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    if-eqz v15, :cond_4

    .line 588
    monitor-enter v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 589
    :try_start_5
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 592
    :try_start_6
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 595
    .end local v15           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v19           #user:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 568
    .end local v7           #selection:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #index:I
    .restart local v13       #index:I
    :catchall_1
    move-exception v4

    :goto_3
    :try_start_7
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 590
    .end local v13           #index:I
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #index:I
    .restart local v15       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .restart local v19       #user:Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 595
    .end local v15           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v19           #user:Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 601
    :goto_4
    monitor-enter v17

    .line 602
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 603
    .restart local v15       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_5

    .line 605
    .end local v15           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_3
    move-exception v4

    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v4

    .line 598
    :cond_6
    const-string v4, "processLongRosterUpdate"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_4

    .line 605
    :cond_7
    :try_start_b
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_0

    .line 568
    .end local v7           #selection:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    :catchall_4
    move-exception v4

    move v13, v14

    .end local v14           #index:I
    .restart local v13       #index:I
    goto :goto_3
.end method

.method private removePresenceForUser(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 347
    return-void
.end method


# virtual methods
.method public blockContact(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 252
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 253
    return-void
.end method

.method public clearContactFlags(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 264
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 265
    return-void
.end method

.method public createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"
    .parameter "subscribe"

    .prologue
    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createContact: contact="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nickname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscribe="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p4, :cond_1

    .line 175
    :cond_0
    new-instance v3, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 176
    .local v3, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 177
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 181
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 182
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v4, Lcom/google/android/gsf/gtalkservice/RosterManager$1;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/gtalkservice/RosterManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 193
    .end local v0           #iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    .end local v1           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v3           #rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    :cond_1
    if-eqz p4, :cond_2

    .line 195
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 196
    .local v2, presencePacket:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 199
    .end local v2           #presencePacket:Lorg/jivesoftware/smack/packet/Presence;
    :cond_2
    return-void
.end method

.method public editContactNickname(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "contact"
    .parameter "nickname"

    .prologue
    .line 202
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getContactTypeForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)I

    move-result v1

    .line 205
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 216
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 220
    .local v0, status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :goto_0
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 221
    return-void

    .line 207
    .end local v0           #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :pswitch_0
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 208
    .restart local v0       #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    goto :goto_0

    .line 210
    .end local v0           #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :pswitch_1
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 211
    .restart local v0       #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    goto :goto_0

    .line 213
    .end local v0           #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :pswitch_2
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 214
    .restart local v0       #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRosterEtag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    .line 132
    .local v2, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v0

    .line 133
    .local v0, accountId:J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, v1}, Lcom/google/android/gsf/TalkContract$ContactsEtag;->getRosterEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public hideContact(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 260
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 261
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
    .locals 1
    .parameter "context"
    .parameter "resolver"
    .parameter "connectionCtx"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 92
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mResolver:Landroid/content/ContentResolver;

    .line 93
    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 98
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "initConnection: set up roster and presence packet filters"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v1, :cond_1

    .line 103
    new-instance v1, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/gtalkservice/RosterManager$RosterPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;Lcom/google/android/gsf/gtalkservice/RosterManager$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 104
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v1, :cond_2

    .line 109
    new-instance v1, Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;Lcom/google/android/gsf/gtalkservice/RosterManager$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 110
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v1, :cond_3

    .line 115
    new-instance v1, Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;Lcom/google/android/gsf/gtalkservice/RosterManager$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 116
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mBatchPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mBatchPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 128
    return-void
.end method

.method public isRosterRequestPendingForAccount(J)Z
    .locals 3
    .parameter "accountId"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 161
    .local v0, flag:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method notifyPresenceChanged()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyPresenceChanged()Z

    .line 343
    return-void
.end method

.method public pinContact(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 256
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 257
    return-void
.end method

.method public removeContact(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "contact"

    .prologue
    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContact: contact="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", accountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->rosterHasContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContact: cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in db, bail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 232
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 234
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    const/4 v3, 0x0

    invoke-direct {v1, p3, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    sget-object v3, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 237
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 239
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 240
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v3, Lcom/google/android/gsf/gtalkservice/RosterManager$2;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/RosterManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    goto :goto_0
.end method

.method public requestRoster()Z
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 138
    .local v0, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->getRosterEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->setEtag(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v1

    return v1
.end method

.method public setRosterRequestPendingForAccount(JZ)V
    .locals 3
    .parameter "accountId"
    .parameter "flag"

    .prologue
    .line 150
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRosterRequestPendingForAccount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    if-eqz p3, :cond_1

    .line 153
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
