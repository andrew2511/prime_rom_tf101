.class public Lcom/amazon/kcp/application/MBPBookData;
.super Ljava/lang/Object;
.source "MBPBookData.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBookData;


# instance fields
.field asin:Ljava/lang/String;

.field guid:Ljava/lang/String;

.field type:Lcom/amazon/kcp/application/IBookData$Type;

.field version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "asin"
    .parameter "guid"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/amazon/kcp/application/IBookData$Type;->MOBI:Lcom/amazon/kcp/application/IBookData$Type;

    iput-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->type:Lcom/amazon/kcp/application/IBookData$Type;

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kcp/application/IBookData;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/amazon/kcp/application/MBPBookData;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, newBookData:Lcom/amazon/kcp/application/MBPBookData;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/amazon/kcp/application/MBPBookData;->clone()Lcom/amazon/kcp/application/IBookData;

    move-result-object v0

    return-object v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/application/IBookData$Type;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->type:Lcom/amazon/kcp/application/IBookData$Type;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/amazon/kcp/application/MBPBookData;->version:I

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0
    .parameter "asin"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->asin:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .parameter "guid"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/application/MBPBookData;->guid:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 80
    const-string v0, "EBOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/kcp/application/IBookData$Type;->MOBI:Lcom/amazon/kcp/application/IBookData$Type;

    iput-object v0, p0, Lcom/amazon/kcp/application/MBPBookData;->type:Lcom/amazon/kcp/application/IBookData$Type;

    .line 84
    :cond_0
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 91
    iput p1, p0, Lcom/amazon/kcp/application/MBPBookData;->version:I

    .line 92
    return-void
.end method
