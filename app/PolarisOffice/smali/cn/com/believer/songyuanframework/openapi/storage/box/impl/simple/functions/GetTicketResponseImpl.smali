.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetTicketResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "GetTicketResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;


# instance fields
.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetTicketResponseImpl;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetTicketResponseImpl;->ticket:Ljava/lang/String;

    .line 31
    return-void
.end method
