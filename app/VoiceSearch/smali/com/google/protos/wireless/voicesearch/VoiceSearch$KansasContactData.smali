.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KansasContactData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    }
.end annotation


# static fields
.field public static final CONTACT_FIELD_NUMBER:I = 0x2

.field public static final KANSAS_CONTACT_DATA_FIELD_NUMBER:I = 0xc

.field public static final KANSAS_ID_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

.field public static final kansasContactData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;"
        }
    .end annotation
.end field

.field private kansasId_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 6090
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    .line 6631
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    .line 6632
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->initFields()V

    .line 6640
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasContactData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 6040
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6198
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6227
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6041
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->initFields()V

    move v0, v1

    .line 6045
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 6046
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6047
    sparse-switch v2, :sswitch_data_0

    .line 6052
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 6054
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 6050
    goto :goto_0

    .line 6059
    :sswitch_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    .line 6060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6078
    :catch_0
    move-exception v0

    .line 6079
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6084
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 6085
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6087
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->makeExtensionsImmutable()V

    throw v0

    .line 6064
    :sswitch_2
    and-int/lit8 v2, v1, 0x2

    if-eq v2, v4, :cond_2

    .line 6065
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6066
    or-int/lit8 v1, v1, 0x2

    .line 6068
    :cond_2
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6080
    :catch_1
    move-exception v0

    .line 6081
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

    .line 6072
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    .line 6073
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6084
    :cond_3
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v4, :cond_4

    .line 6085
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6087
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->makeExtensionsImmutable()V

    .line 6089
    return-void

    .line 6047
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 6018
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6023
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6198
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6227
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6025
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6018
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6198
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6227
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6026
    return-void
.end method

.method static synthetic access$7300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6018
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6018
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6018
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6018
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1

    .prologue
    .line 6030
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6197
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6308
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->access$7100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6311
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6288
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6294
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6258
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6264
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6299
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6305
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6278
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6284
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6268
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6274
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object p0
.end method


# virtual methods
.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 1
    .parameter

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    return-object p0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6143
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getContactOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 6157
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;

    return-object p0
.end method

.method public getContactOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6147
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1

    .prologue
    .line 6034
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object v0
.end method

.method public getKansasId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6113
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6114
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6115
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6123
    :goto_0
    return-object v1

    .line 6117
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 6119
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6120
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6121
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6123
    goto :goto_0
.end method

.method public getKansasIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6128
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6129
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6130
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6132
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6135
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6167
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6168
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6169
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6177
    :goto_0
    return-object v1

    .line 6171
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 6173
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6174
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6175
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6177
    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6182
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6184
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6186
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6189
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6102
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6229
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6230
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6246
    :goto_0
    return v0

    .line 6233
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 6234
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    move v1, v2

    move v2, v0

    .line 6237
    :goto_2
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6238
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6237
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 6241
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_2

    .line 6242
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6245
    :goto_3
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public hasKansasId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6110
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 6164
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6200
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6201
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6210
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6201
    goto :goto_0

    :cond_1
    move v0, v2

    .line 6203
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getContactCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6204
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6205
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    move v0, v2

    .line 6206
    goto :goto_0

    .line 6203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6209
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    move v0, v3

    .line 6210
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6309
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6313
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

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
    .line 6252
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6215
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getSerializedSize()I

    .line 6216
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6217
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6219
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6220
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6222
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 6223
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6225
    :cond_2
    return-void
.end method
