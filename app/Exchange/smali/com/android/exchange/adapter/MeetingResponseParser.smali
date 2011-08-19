.class public Lcom/android/exchange/adapter/MeetingResponseParser;
.super Lcom/android/exchange/adapter/Parser;
.source "MeetingResponseParser.java"


# instance fields
.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 31
    iput-object p2, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 32
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x207

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 56
    iget v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x20a

    if-ne v1, v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->parseResult()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_0

    .line 62
    :cond_2
    return v0
.end method

.method public parseResult()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    :cond_0
    :goto_0
    const/16 v1, 0x20a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 36
    iget v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x20b

    if-ne v1, v2, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->getValueInt()I

    move-result v0

    .line 38
    .local v0, status:I
    if-eq v0, v5, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in meeting response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0           #status:I
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x205

    if-ne v1, v2, :cond_2

    .line 42
    iget-object v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meeting response calendar id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_0

    .line 47
    :cond_3
    return-void
.end method
