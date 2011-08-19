.class public Lcom/amazon/kcp/application/models/internal/DeregisterModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "DeregisterModel.java"


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->status:Ljava/lang/String;

    .line 31
    return-void
.end method
