.class public Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.super Ljava/lang/Object;
.source "WebServiceModel.java"


# instance fields
.field protected changeEvent:Lcom/amazon/foundation/internal/EventProvider;

.field protected finishedEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 15
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->finishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-void
.end method


# virtual methods
.method public getChangeEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getFinishedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceModel;->finishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method
