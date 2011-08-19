.class public Lcom/android/exchange/adapter/AccountSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "AccountSyncAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 12
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .locals 0
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
