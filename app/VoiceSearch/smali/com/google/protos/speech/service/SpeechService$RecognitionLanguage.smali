.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionLanguage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    }
.end annotation


# static fields
.field public static final LANGUAGE_TAG_FIELD_NUMBER:I = 0x2

.field public static final LOCALIZED_NAME_FIELD_NUMBER:I = 0x4

.field public static final MATCHING_LANGUAGE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;


# instance fields
.field private bitField0_:I

.field private languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

.field private localizedName_:Ljava/lang/Object;

.field private matchingLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10634
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    .line 11249
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    .line 11250
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->initFields()V

    .line 11251
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x4

    .line 10571
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10753
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10787
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10572
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->initFields()V

    move v2, v1

    .line 10576
    :goto_0
    if-nez v1, :cond_2

    .line 10577
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 10578
    sparse-switch v0, :sswitch_data_0

    .line 10583
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 10621
    goto :goto_0

    :sswitch_0
    move v0, v6

    move v1, v2

    .line 10581
    goto :goto_1

    .line 10590
    :sswitch_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    .line 10591
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 10592
    goto :goto_1

    .line 10595
    :sswitch_2
    const/4 v0, 0x0

    .line 10596
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 10597
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->toBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    move-object v3, v0

    .line 10599
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10600
    if-eqz v3, :cond_0

    .line 10601
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {v3, v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    .line 10602
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10604
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    move v0, v1

    move v1, v2

    .line 10605
    goto :goto_1

    .line 10608
    :sswitch_3
    and-int/lit8 v0, v2, 0x4

    if-eq v0, v5, :cond_5

    .line 10609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10610
    or-int/lit8 v0, v2, 0x4

    .line 10612
    :goto_3
    :try_start_1
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v7, v1

    move v1, v0

    move v0, v7

    .line 10613
    goto :goto_1

    .line 10616
    :sswitch_4
    :try_start_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    .line 10617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1

    .line 10628
    :cond_2
    and-int/lit8 v0, v2, 0x4

    if-ne v0, v5, :cond_3

    .line 10629
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10631
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->makeExtensionsImmutable()V

    .line 10633
    return-void

    .line 10622
    :catch_0
    move-exception v0

    move v1, v2

    .line 10623
    :goto_4
    :try_start_3
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10628
    :catchall_0
    move-exception v0

    :goto_5
    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_4

    .line 10629
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10631
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->makeExtensionsImmutable()V

    throw v0

    .line 10624
    :catch_1
    move-exception v0

    move v1, v2

    .line 10625
    :goto_6
    :try_start_4
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10628
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_5

    .line 10624
    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_6

    .line 10622
    :catch_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move-object v3, v0

    goto/16 :goto_2

    .line 10578
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 10549
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10554
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10753
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10787
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10556
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10549
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10753
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10787
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10557
    return-void
.end method

.method static synthetic access$12600(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10549
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 10549
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12802(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12900(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10549
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10549
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1

    .prologue
    .line 10561
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10749
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10752
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10872
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->access$12400()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10875
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10852
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10858
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10822
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10828
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10863
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10869
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10842
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10848
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10832
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10838
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1

    .prologue
    .line 10565
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object v0
.end method

.method public getLanguageTag()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1

    .prologue
    .line 10690
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10721
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10722
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10723
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 10731
    :goto_0
    return-object v1

    .line 10725
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 10727
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10728
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10729
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10731
    goto :goto_0
.end method

.method public getLocalizedNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10736
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10737
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10738
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10740
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10743
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMatchingLanguage(I)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1
    .parameter

    .prologue
    .line 10707
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p0
.end method

.method public getMatchingLanguageCount()I
    .locals 1

    .prologue
    .line 10704
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMatchingLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10697
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getMatchingLanguageOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 10711
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;

    return-object p0
.end method

.method public getMatchingLanguageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10701
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10657
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10658
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10659
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 10667
    :goto_0
    return-object v1

    .line 10661
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 10663
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10664
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10665
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10667
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10672
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10673
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10674
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10676
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10679
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10646
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10789
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10790
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10810
    :goto_0
    return v0

    .line 10793
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 10794
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    .line 10797
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 10798
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    move v2, v0

    .line 10801
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 10802
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 10801
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 10805
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_3

    .line 10806
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLocalizedNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    .line 10809
    :goto_3
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public hasLanguageTag()Z
    .locals 2

    .prologue
    .line 10687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

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

.method public hasLocalizedName()Z
    .locals 2

    .prologue
    .line 10718
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10654
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

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

    .line 10755
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10756
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 10767
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 10756
    goto :goto_0

    .line 10758
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10759
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    move v0, v2

    .line 10760
    goto :goto_0

    .line 10762
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasLanguageTag()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10763
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    move v0, v2

    .line 10764
    goto :goto_0

    .line 10766
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    move v0, v3

    .line 10767
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10873
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .locals 1

    .prologue
    .line 10877
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

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
    .line 10816
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10772
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getSerializedSize()I

    .line 10773
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10774
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10776
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10777
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10779
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 10780
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10779
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10782
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 10783
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLocalizedNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10785
    :cond_3
    return-void
.end method
