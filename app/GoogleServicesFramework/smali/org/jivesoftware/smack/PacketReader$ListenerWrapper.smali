.class Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
.super Ljava/lang/Object;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field protected packetCollector:Lorg/jivesoftware/smack/PacketCollector;

.field protected packetListener:Lorg/jivesoftware/smack/PacketListener;

.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 0
    .parameter
    .parameter "packetListener"
    .parameter "packetCollector"

    .prologue
    .line 1940
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->this$0:Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1941
    iput-object p2, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 1942
    iput-object p3, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    .line 1943
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 1946
    if-nez p1, :cond_0

    move v0, v1

    .line 1955
    .end local p1
    :goto_0
    return v0

    .line 1949
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    if-eqz v0, :cond_1

    .line 1950
    check-cast p1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .end local p1
    iget-object v0, p1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1952
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketListener;

    if-eqz v0, :cond_2

    .line 1953
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1955
    goto :goto_0
.end method

.method public notifyListener()Z
    .locals 2

    .prologue
    .line 1966
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->pollResult()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 1967
    .local v0, packet:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1969
    const/4 v1, 0x1

    .line 1972
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 1962
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->this$0:Lorg/jivesoftware/smack/PacketReader;

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/PacketProcessor;->queuePacket(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smack/PacketListener;)V

    .line 1963
    return-void
.end method
