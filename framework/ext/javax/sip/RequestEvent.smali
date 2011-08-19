.class public Ljavax/sip/RequestEvent;
.super Ljava/util/EventObject;
.source "RequestEvent.java"


# instance fields
.field private mDialog:Ljavax/sip/Dialog;

.field private mRequest:Ljavax/sip/message/Request;

.field private mServerTransaction:Ljavax/sip/ServerTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V
    .registers 5
    .parameter "source"
    .parameter "serverTransaction"
    .parameter "dialog"
    .parameter "request"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p3, p0, Ljavax/sip/RequestEvent;->mDialog:Ljavax/sip/Dialog;

    .line 15
    iput-object p4, p0, Ljavax/sip/RequestEvent;->mRequest:Ljavax/sip/message/Request;

    .line 16
    iput-object p2, p0, Ljavax/sip/RequestEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 17
    return-void
.end method


# virtual methods
.method public getDialog()Ljavax/sip/Dialog;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Ljavax/sip/RequestEvent;->mDialog:Ljavax/sip/Dialog;

    return-object v0
.end method

.method public getRequest()Ljavax/sip/message/Request;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Ljavax/sip/RequestEvent;->mRequest:Ljavax/sip/message/Request;

    return-object v0
.end method

.method public getServerTransaction()Ljavax/sip/ServerTransaction;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Ljavax/sip/RequestEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    return-object v0
.end method
