.class public Ljavax/sip/TransactionTerminatedEvent;
.super Ljava/util/EventObject;
.source "TransactionTerminatedEvent.java"


# instance fields
.field private mClientTransaction:Ljavax/sip/ClientTransaction;

.field private mIsServerTransaction:Z

.field private mServerTransaction:Ljavax/sip/ServerTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V
    .registers 4
    .parameter "source"
    .parameter "clientTransaction"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object p2, p0, Ljavax/sip/TransactionTerminatedEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V
    .registers 4
    .parameter "source"
    .parameter "serverTransaction"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object p2, p0, Ljavax/sip/TransactionTerminatedEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getClientTransaction()Ljavax/sip/ClientTransaction;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    return-object v0
.end method

.method public getServerTransaction()Ljavax/sip/ServerTransaction;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    return-object v0
.end method

.method public isServerTransaction()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Ljavax/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    return v0
.end method
