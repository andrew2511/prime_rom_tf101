.class public Lcom/android/exchange/adapter/MoveItemsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "MoveItemsParser.java"


# instance fields
.field private mNewServerId:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 47
    iput-object p2, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 48
    return-void
.end method


# virtual methods
.method public getNewServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    return v0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x145

    if-eq v1, v2, :cond_0

    .line 101
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 104
    iget v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14a

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->parseResponse()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_0

    .line 110
    :cond_2
    return v0
.end method

.method public parseResponse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 59
    :cond_0
    :goto_0
    const/16 v1, 0x14a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 60
    iget v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14b

    if-ne v1, v2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValueInt()I

    move-result v0

    .line 63
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 81
    :pswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 84
    :goto_1
    if-eq v0, v6, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in MoveItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    iput v5, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 73
    :pswitch_2
    iput v6, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 88
    .end local v0           #status:I
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14c

    if-ne v1, v2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved message id is now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_0

    .line 95
    :cond_3
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
