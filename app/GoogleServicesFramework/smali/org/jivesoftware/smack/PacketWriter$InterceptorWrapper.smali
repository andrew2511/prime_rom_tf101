.class Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterceptorWrapper"
.end annotation


# instance fields
.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 681
    if-nez p1, :cond_0

    move v0, v1

    .line 691
    .end local p1
    :goto_0
    return v0

    .line 684
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;

    if-eqz v0, :cond_1

    .line 685
    check-cast p1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;

    .end local p1
    iget-object v0, p1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 688
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketInterceptor;

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 691
    goto :goto_0
.end method

.method public notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 695
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 698
    :cond_1
    return-void
.end method
