.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionHypothesis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    }
.end annotation


# static fields
.field public static final INTERPRETATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENTENCE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;


# instance fields
.field private bitField0_:I

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

.field private sentence_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15808
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    .line 16252
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    .line 16253
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->initFields()V

    .line 16254
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
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x2

    .line 15763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15882
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15912
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15764
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->initFields()V

    move v0, v1

    .line 15768
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 15769
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 15770
    sparse-switch v2, :sswitch_data_0

    .line 15775
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 15777
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 15773
    goto :goto_0

    .line 15782
    :sswitch_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    .line 15783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15796
    :catch_0
    move-exception v0

    .line 15797
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15802
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 15803
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15805
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->makeExtensionsImmutable()V

    throw v0

    .line 15787
    :sswitch_2
    and-int/lit8 v2, v1, 0x2

    if-eq v2, v4, :cond_2

    .line 15788
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15789
    or-int/lit8 v1, v1, 0x2

    .line 15791
    :cond_2
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15798
    :catch_1
    move-exception v0

    .line 15799
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

    .line 15802
    :cond_3
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v4, :cond_4

    .line 15803
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15805
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->makeExtensionsImmutable()V

    .line 15807
    return-void

    .line 15770
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 15741
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15746
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15882
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15912
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15741
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15882
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15912
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15749
    return-void
.end method

.method static synthetic access$18900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15741
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15741
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15741
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15741
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15741
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1

    .prologue
    .line 15753
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15880
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15881
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15989
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->access$18700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15992
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15969
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15975
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15939
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15945
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15980
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15986
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15959
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15965
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15949
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15955
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1

    .prologue
    .line 15757
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter

    .prologue
    .line 15871
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 15868
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

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
    .line 15861
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getInterpretationOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 15875
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

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
    .line 15865
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15820
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15831
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15832
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15833
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 15841
    :goto_0
    return-object v1

    .line 15835
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 15837
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15838
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15839
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15841
    goto :goto_0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 15846
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15847
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15848
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15850
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15853
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15914
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15915
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15927
    :goto_0
    return v0

    .line 15918
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 15919
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    move v1, v2

    move v2, v0

    .line 15922
    :goto_2
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 15923
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 15922
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 15926
    :cond_1
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    move v0, v2

    .line 15927
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public hasSentence()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15828
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

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

    .line 15884
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15885
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 15898
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 15885
    goto :goto_0

    .line 15887
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->hasSentence()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15888
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    move v0, v2

    .line 15889
    goto :goto_0

    :cond_2
    move v0, v2

    .line 15891
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getInterpretationCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 15892
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 15893
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    move v0, v2

    .line 15894
    goto :goto_0

    .line 15891
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15897
    :cond_4
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    move v0, v3

    .line 15898
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15990
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15994
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

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
    .line 15933
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 15903
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getSerializedSize()I

    .line 15904
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15905
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15907
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 15908
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15907
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 15910
    :cond_1
    return-void
.end method
