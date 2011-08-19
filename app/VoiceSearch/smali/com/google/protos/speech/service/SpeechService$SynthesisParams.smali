.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesisParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final PITCH_FIELD_NUMBER:I = 0x2

.field public static final SPEED_FIELD_NUMBER:I = 0x1

.field public static final VOLUME_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pitch_:D

.field private speed_:D

.field private volume_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18375
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 18703
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 18704
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->initFields()V

    .line 18705
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 18331
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18426
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18449
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18332
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->initFields()V

    .line 18335
    const/4 v0, 0x0

    .line 18336
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 18337
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 18338
    sparse-switch v1, :sswitch_data_0

    .line 18343
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 18345
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 18341
    goto :goto_0

    .line 18350
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    .line 18351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 18366
    :catch_0
    move-exception v0

    .line 18367
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18372
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->makeExtensionsImmutable()V

    throw v0

    .line 18355
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    .line 18356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 18368
    :catch_1
    move-exception v0

    .line 18369
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18360
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    .line 18361
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 18372
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->makeExtensionsImmutable()V

    .line 18374
    return-void

    .line 18338
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18309
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18314
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18426
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18449
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18316
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18309
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18317
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18426
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18449
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18317
    return-void
.end method

.method static synthetic access$22502(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18309
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    return-wide p1
.end method

.method static synthetic access$22602(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18309
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    return-wide p1
.end method

.method static synthetic access$22702(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18309
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    return-wide p1
.end method

.method static synthetic access$22802(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18309
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1

    .prologue
    .line 18321
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 18422
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    .line 18423
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    .line 18424
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    .line 18425
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18530
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->access$22300()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18533
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18510
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18516
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18480
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18486
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18521
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18527
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18500
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18506
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18490
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18496
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18309
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1

    .prologue
    .line 18325
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18387
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPitch()D
    .locals 2

    .prologue
    .line 18408
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18451
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18452
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 18468
    :goto_0
    return v0

    .line 18454
    :cond_0
    const/4 v0, 0x0

    .line 18455
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 18456
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 18459
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 18460
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 18463
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 18464
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 18467
    :cond_3
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 18398
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    return-wide v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 18418
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    return-wide v0
.end method

.method public hasPitch()Z
    .locals 2

    .prologue
    .line 18405
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18395
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVolume()Z
    .locals 2

    .prologue
    .line 18415
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 18428
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18429
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 18432
    :goto_0
    return v0

    .line 18429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 18431
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    move v0, v2

    .line 18432
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18309
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18531
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18309
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18535
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 18474
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18437
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getSerializedSize()I

    .line 18438
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 18439
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18441
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 18442
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18444
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 18445
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18447
    :cond_2
    return-void
.end method
