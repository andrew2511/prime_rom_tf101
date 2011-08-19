.class public Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "GetAnnotationsModel.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "asin"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->asin:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->position:I

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0
    .parameter "asin"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->asin:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->message:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->method:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 42
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->position:I

    .line 43
    return-void
.end method
