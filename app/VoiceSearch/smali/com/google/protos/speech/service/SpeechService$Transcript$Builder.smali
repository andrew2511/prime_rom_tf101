.class public final Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$Transcript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Transcript;",
        "Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private transcript_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15224
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->maybeForceBuilderInitialization()V

    .line 15225
    return-void
.end method

.method static synthetic access$18000()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15218
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15230
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 15228
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->build()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 2

    .prologue
    .line 15249
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    .line 15250
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15251
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 15253
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 4

    .prologue
    .line 15257
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 15258
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15259
    const/4 v2, 0x0

    .line 15260
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 15261
    or-int/lit8 v1, v2, 0x1

    .line 15263
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$Transcript;->access$18202(Lcom/google/protos/speech/service/SpeechService$Transcript;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15264
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript;->access$18302(Lcom/google/protos/speech/service/SpeechService$Transcript;I)I

    .line 15265
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15234
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15236
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15237
    return-object p0
.end method

.method public clearTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15342
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15343
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15345
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 2

    .prologue
    .line 15241
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

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
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1

    .prologue
    .line 15245
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getTranscript()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15311
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15312
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15313
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15314
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15317
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15322
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15324
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15326
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15329
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasTranscript()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 15308
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 15279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->hasTranscript()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15281
    const/4 v0, 0x0

    .line 15283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15218
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15290
    const/4 v1, 0x0

    .line 15292
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Transcript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15297
    if-eqz v0, :cond_0

    .line 15298
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    .line 15301
    :cond_0
    return-object p0

    .line 15293
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 15294
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Transcript;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15295
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15297
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 15298
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    :cond_1
    throw v0

    .line 15297
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15269
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 15275
    :goto_0
    return-object v0

    .line 15270
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$Transcript;->hasTranscript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15271
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15272
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$Transcript;->access$18200(Lcom/google/protos/speech/service/SpeechService$Transcript;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    :cond_1
    move-object v0, p0

    .line 15275
    goto :goto_0
.end method

.method public setTranscript(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15333
    if-nez p1, :cond_0

    .line 15334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15336
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15337
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15339
    return-object p0
.end method

.method public setTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15349
    if-nez p1, :cond_0

    .line 15350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15352
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15353
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15355
    return-object p0
.end method
