.class Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;
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
    name = "BatchPresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;Lcom/google/android/gsf/gtalkservice/RosterManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 351
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    move-object v1, v0

    .line 356
    .local v1, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

    move-result-object v2

    .line 357
    .local v2, updates:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$BatchPresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$500(Lcom/google/android/gsf/gtalkservice/RosterManager;)Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->presenceChanged(Ljava/util/Collection;)V

    .line 358
    return-void
.end method
