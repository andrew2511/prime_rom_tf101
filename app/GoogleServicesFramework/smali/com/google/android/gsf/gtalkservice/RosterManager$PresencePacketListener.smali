.class Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;
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
    name = "PresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;Lcom/google/android/gsf/gtalkservice/RosterManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5
    .parameter "packet"

    .prologue
    .line 308
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v2, v0

    .line 309
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, from:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v3, v4, :cond_1

    .line 321
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-static {v3, v1, v2}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$300(Lcom/google/android/gsf/gtalkservice/RosterManager;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v3, v4, :cond_0

    .line 325
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$PresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-static {v3, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->access$400(Lcom/google/android/gsf/gtalkservice/RosterManager;Ljava/lang/String;)V

    goto :goto_0
.end method
