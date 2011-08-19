.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_RESPONSE_FIELD_NUMBER:I = 0x19

.field public static final DISPLAY_DISAMBIGUATION_FIELD_NUMBER:I = 0x3

.field public static final HYPOTHESIS_FIELD_NUMBER:I = 0x1

.field public static final INTERPRETATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;


# instance fields
.field private bitField0_:I

.field private displayDisambiguation_:Z

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 16356
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 16882
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    .line 16883
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->initFields()V

    .line 16891
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x19

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16300
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16429
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16464
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16301
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->initFields()V

    move v0, v1

    .line 16305
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 16306
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 16307
    sparse-switch v2, :sswitch_data_0

    .line 16312
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 16314
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 16310
    goto :goto_0

    .line 16319
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 16320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16321
    or-int/lit8 v1, v1, 0x1

    .line 16323
    :cond_1
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 16341
    :catch_0
    move-exception v0

    .line 16342
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16347
    :catchall_0
    move-exception v0

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v4, :cond_2

    .line 16348
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16350
    :cond_2
    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_3

    .line 16351
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16353
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->makeExtensionsImmutable()V

    throw v0

    .line 16327
    :sswitch_2
    and-int/lit8 v2, v1, 0x2

    if-eq v2, v5, :cond_4

    .line 16328
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16329
    or-int/lit8 v1, v1, 0x2

    .line 16331
    :cond_4
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 16343
    :catch_1
    move-exception v0

    .line 16344
    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16335
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    .line 16336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 16347
    :cond_5
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_6

    .line 16348
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16350
    :cond_6
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v5, :cond_7

    .line 16351
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16353
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->makeExtensionsImmutable()V

    .line 16355
    return-void

    .line 16307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 16278
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16283
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16429
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16464
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16285
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16278
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16429
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16464
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16286
    return-void
.end method

.method static synthetic access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16278
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16278
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16278
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16278
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16278
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16278
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1

    .prologue
    .line 16290
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16426
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    .line 16428
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16545
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->access$19300()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16548
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16525
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16531
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16495
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16501
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16536
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16542
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16515
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16521
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16505
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16511
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16278
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1

    .prologue
    .line 16294
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object v0
.end method

.method public getDisplayDisambiguation()Z
    .locals 1

    .prologue
    .line 16421
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    return v0
.end method

.method public getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter

    .prologue
    .line 16386
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 16383
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHypothesisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16376
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method public getHypothesisOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 16390
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;

    return-object p0
.end method

.method public getHypothesisOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16380
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter

    .prologue
    .line 16407
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 16404
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterpretationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16397
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getInterpretationOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 16411
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;

    return-object p0
.end method

.method public getInterpretationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16401
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16368
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16466
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16467
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 16483
    :goto_0
    return v0

    :cond_0
    move v1, v3

    move v2, v3

    .line 16470
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 16471
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 16470
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 16474
    :goto_2
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 16475
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 16474
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 16478
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_3

    .line 16479
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 16482
    :goto_3
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method public hasDisplayDisambiguation()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16418
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16431
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16432
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 16447
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 16432
    goto :goto_0

    :cond_1
    move v0, v2

    .line 16434
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getHypothesisCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 16435
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 16436
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 16437
    goto :goto_0

    .line 16434
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 16440
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretationCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 16441
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16442
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 16443
    goto :goto_0

    .line 16440
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16446
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    move v0, v3

    .line 16447
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16278
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16546
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16278
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16550
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

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
    .line 16489
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16452
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getSerializedSize()I

    move v1, v2

    .line 16453
    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 16454
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16453
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 16456
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 16457
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 16459
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 16460
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16462
    :cond_2
    return-void
.end method
