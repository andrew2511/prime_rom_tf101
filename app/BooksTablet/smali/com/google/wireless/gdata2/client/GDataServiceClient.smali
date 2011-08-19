.class public abstract Lcom/google/wireless/gdata2/client/GDataServiceClient;
.super Ljava/lang/Object;
.source "GDataServiceClient.java"


# static fields
.field protected static DEFAULT_GDATA_VERSION:Ljava/lang/String;


# instance fields
.field private final gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

.field private final gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "2.0"

    sput-object v0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V
    .locals 0
    .parameter "gDataClient"
    .parameter "gDataParserFactory"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    .line 36
    iput-object p2, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    .line 37
    return-void
.end method

.method private parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 2
    .parameter "entryClass"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v1, p1, p2}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    :cond_0
    return-object v1

    .line 360
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method protected convertHttpExceptionForEntryReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 4
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 427
    new-instance v0, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v0

    .line 419
    :sswitch_0
    new-instance v0, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 421
    :sswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 423
    :sswitch_2
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 425
    :sswitch_3
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 417
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_3
        0x191 -> :sswitch_1
        0x193 -> :sswitch_0
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method protected convertHttpExceptionForFeedReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 4
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceGoneException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 409
    new-instance v0, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v0

    .line 401
    :sswitch_0
    new-instance v0, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 403
    :sswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 405
    :sswitch_2
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceGoneException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceGoneException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 407
    :sswitch_3
    new-instance v0, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_3
        0x191 -> :sswitch_1
        0x193 -> :sswitch_0
        0x19a -> :sswitch_2
    .end sparse-switch
.end method

.method protected convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 6
    .parameter "entryClass"
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 474
    :pswitch_0
    new-instance v2, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v2

    .line 455
    :pswitch_1
    const/4 v0, 0x0

    .line 456
    .local v0, entry:Lcom/google/wireless/gdata2/data/Entry;
    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v1

    .line 458
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p3}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    .line 462
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    new-instance v2, Lcom/google/wireless/gdata2/ConflictDetectedException;

    invoke-direct {v2, v0}, Lcom/google/wireless/gdata2/ConflictDetectedException;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    throw v2

    .line 464
    .end local v0           #entry:Lcom/google/wireless/gdata2/data/Entry;
    :pswitch_2
    new-instance v2, Lcom/google/wireless/gdata2/client/BadRequestException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 466
    :pswitch_3
    new-instance v2, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 468
    :pswitch_4
    new-instance v2, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 470
    :pswitch_5
    new-instance v2, Lcom/google/wireless/gdata2/client/PreconditionFailedException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/PreconditionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 472
    :pswitch_6
    new-instance v2, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;

    invoke-direct {v2, p2, p3}, Lcom/google/wireless/gdata2/client/ResourceNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected convertHttpExceptionsForBatches(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    .locals 4
    .parameter "message"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    :pswitch_0
    new-instance v0, Lcom/google/wireless/gdata2/client/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/client/HttpException;->getResponseStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v0

    .line 437
    :pswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/ForbiddenException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/ForbiddenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 439
    :pswitch_2
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 441
    :pswitch_3
    new-instance v0, Lcom/google/wireless/gdata2/client/BadRequestException;

    invoke-direct {v0, p1, p2}, Lcom/google/wireless/gdata2/client/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 435
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 7
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v4, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v4, p3}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v3

    .line 180
    .local v3, serializer:Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    :try_start_0
    iget-object v4, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v2

    .line 182
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 191
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 183
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 185
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V
    :try_end_1
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    const/4 v4, 0x0

    goto :goto_0

    .line 187
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 189
    .local v1, e1:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    throw v0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-interface {v0}, Lcom/google/wireless/gdata2/client/GDataClient;->createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v0

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "editUri"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/wireless/gdata2/client/GDataClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 345
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    .line 350
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 4
    .parameter "entryClass"
    .parameter "id"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getGDataClient()Lcom/google/wireless/gdata2/client/GDataClient;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, p3, p4, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 220
    .local v1, is:Ljava/io/InputStream;
    invoke-direct {p0, p1, v1}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 222
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not fetch entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForEntryReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 223
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getGDataClient()Lcom/google/wireless/gdata2/client/GDataClient;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    return-object v0
.end method

.method protected getGDataParserFactory()Lcom/google/wireless/gdata2/client/GDataParserFactory;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    return-object v0
.end method

.method public getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "mediaEntryUrl"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceGoneException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/google/wireless/gdata2/client/GDataClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 148
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not fetch media entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForEntryReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .parameter "feedEntryClass"
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/ResourceGoneException;,
            Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, p3, p4, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 113
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v2, p1, v1}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 115
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not fetch feed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForFeedReads(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 116
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getProtocolVersion()Ljava/lang/String;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public submitBatch(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Enumeration;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 5
    .parameter "feedEntryClass"
    .parameter "batchUrl"
    .parameter "authToken"
    .parameter "entries"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v3, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v3, p4}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createSerializer(Ljava/util/Enumeration;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v2

    .line 387
    .local v2, serializer:Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    :try_start_0
    iget-object v3, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p2, p3, v4, v2}, Lcom/google/wireless/gdata2/client/GDataClient;->submitBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v1

    .line 389
    .local v1, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v3, p1, v1}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 392
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 390
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 391
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not submit batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionsForBatches(Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 392
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateEntry(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 8
    .parameter "entry"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, editUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "No edit URI -- cannot update."

    invoke-direct {v0, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v0, p1}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v5

    .line 260
    .local v5, serializer:Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/wireless/gdata2/client/GDataClient;->updateEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v7

    .line 263
    .local v7, is:Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    .end local v7           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 265
    .local v6, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMediaEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/MediaEntry;
    .locals 11
    .parameter "editUri"
    .parameter "inputStream"
    .parameter "contentType"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/PreconditionFailedException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ForbiddenException;,
            Lcom/google/wireless/gdata2/client/ResourceNotFoundException;,
            Lcom/google/wireless/gdata2/client/BadRequestException;
        }
    .end annotation

    .prologue
    const-class v10, Lcom/google/wireless/gdata2/data/MediaEntry;

    .line 302
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No edit URI -- cannot update."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata2/client/GDataClient;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p4

    move-object/from16 v4, p5

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/google/wireless/gdata2/client/GDataClient;->updateMediaEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 310
    .local v9, is:Ljava/io/InputStream;
    const-class v1, Lcom/google/wireless/gdata2/data/MediaEntry;

    invoke-direct {p0, v1, v9}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/gdata2/data/MediaEntry;

    move-object p0, v0
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    move-object v1, p0

    .line 313
    .end local v9           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 311
    .restart local p0
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 312
    .local v8, e:Lcom/google/wireless/gdata2/client/HttpException;
    const-class v1, Lcom/google/wireless/gdata2/data/MediaEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not update entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v10, v1, v8}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->convertHttpExceptionForWrites(Ljava/lang/Class;Ljava/lang/String;Lcom/google/wireless/gdata2/client/HttpException;)V

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method
