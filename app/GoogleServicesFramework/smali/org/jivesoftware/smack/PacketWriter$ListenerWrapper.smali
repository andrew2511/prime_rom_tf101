.class Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 647
    if-nez p1, :cond_0

    move v0, v1

    .line 656
    .end local p1
    :goto_0
    return v0

    .line 650
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;

    if-eqz v0, :cond_1

    .line 651
    check-cast p1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;

    .end local p1
    iget-object v0, p1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 653
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketListener;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 656
    goto :goto_0
.end method

.method public notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 660
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 663
    :cond_1
    return-void
.end method
