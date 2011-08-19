.class Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;
.super Ljava/lang/Object;
.source "RawStanzaSendReceiveManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawXmlPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 56
    instance-of v0, p1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    check-cast p1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    .end local p1
    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->access$100(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v0, :cond_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->access$200(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
