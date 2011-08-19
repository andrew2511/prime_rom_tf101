.class public Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;
.super Ljava/lang/Object;
.source "HandshakeCompletedListenerImpl.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field private handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

.field private tlsMessageChannel:Lgov/nist/javax/sip/stack/TLSMessageChannel;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .registers 2
    .parameter "tlsMessageChannel"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->tlsMessageChannel:Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 32
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

    return-object v0
.end method

.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .registers 2
    .parameter "handshakeCompletedEvent"

    .prologue
    .line 37
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

    .line 44
    return-void
.end method
