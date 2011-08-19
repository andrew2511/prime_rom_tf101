.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultislotActionResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_SLOT_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;


# instance fields
.field private actionSlot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12043
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 12371
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 12372
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->initFields()V

    .line 12373
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
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

    const/4 v4, 0x1

    .line 12003
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12082
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedIsInitialized:B

    .line 12105
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedSerializedSize:I

    .line 12004
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->initFields()V

    move v0, v1

    .line 12008
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 12009
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 12010
    sparse-switch v2, :sswitch_data_0

    .line 12015
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 12017
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 12013
    goto :goto_0

    .line 12022
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 12023
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    .line 12024
    or-int/lit8 v1, v1, 0x1

    .line 12026
    :cond_1
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 12031
    :catch_0
    move-exception v0

    .line 12032
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12037
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 12038
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    .line 12040
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->makeExtensionsImmutable()V

    throw v0

    .line 12037
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 12038
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    .line 12040
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->makeExtensionsImmutable()V

    .line 12042
    return-void

    .line 12033
    :catch_1
    move-exception v0

    .line 12034
    :try_start_2
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12010
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 11981
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11986
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12082
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedIsInitialized:B

    .line 12105
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedSerializedSize:I

    .line 11988
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11981
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11989
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12082
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedIsInitialized:B

    .line 12105
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedSerializedSize:I

    .line 11989
    return-void
.end method

.method static synthetic access$14700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 11981
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11981
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1

    .prologue
    .line 11993
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 12080
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    .line 12081
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 1

    .prologue
    .line 12178
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->access$14500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12181
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12158
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12164
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12128
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12134
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12169
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12175
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12148
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12154
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12138
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12144
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p0
.end method


# virtual methods
.method public getActionSlot(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .locals 1
    .parameter

    .prologue
    .line 12072
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    return-object p0
.end method

.method public getActionSlotCount()I
    .locals 1

    .prologue
    .line 12069
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12062
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    return-object v0
.end method

.method public getActionSlotOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 12076
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;

    return-object p0
.end method

.method public getActionSlotOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12066
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11981
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1

    .prologue
    .line 11997
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12055
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 12107
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedSerializedSize:I

    .line 12108
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12116
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 12111
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 12112
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 12111
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 12115
    :cond_1
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedSerializedSize:I

    move v0, v2

    .line 12116
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12084
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedIsInitialized:B

    .line 12085
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 12094
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 12085
    goto :goto_0

    :cond_1
    move v0, v2

    .line 12087
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getActionSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 12088
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getActionSlot(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12089
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedIsInitialized:B

    move v0, v2

    .line 12090
    goto :goto_0

    .line 12087
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12093
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->memoizedIsInitialized:B

    move v0, v3

    .line 12094
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11981
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 1

    .prologue
    .line 12179
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11981
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 1

    .prologue
    .line 12183
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

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
    .line 12122
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
    .line 12099
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getSerializedSize()I

    .line 12100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 12101
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 12103
    :cond_0
    return-void
.end method
