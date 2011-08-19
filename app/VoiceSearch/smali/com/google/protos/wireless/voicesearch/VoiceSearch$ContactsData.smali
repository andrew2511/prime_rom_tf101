.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    }
.end annotation


# static fields
.field public static final CONTACTS_DATA_FIELD_NUMBER:I = 0xd

.field public static final CONTACT_FIELD_NUMBER:I = 0x1

.field public static final HIGH_CONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x2

.field public static final contactsData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private highConfidence_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private priority_:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 6739
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    .line 7182
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    .line 7183
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->initFields()V

    .line 7191
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contactsData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 6689
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6801
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    .line 6838
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedSerializedSize:I

    .line 6690
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->initFields()V

    move v0, v1

    .line 6694
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 6695
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6696
    sparse-switch v2, :sswitch_data_0

    .line 6701
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 6703
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 6699
    goto :goto_0

    .line 6708
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 6709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    .line 6710
    or-int/lit8 v1, v1, 0x1

    .line 6712
    :cond_1
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6727
    :catch_0
    move-exception v0

    .line 6728
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6733
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 6734
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    .line 6736
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->makeExtensionsImmutable()V

    throw v0

    .line 6716
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    .line 6717
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6729
    :catch_1
    move-exception v0

    .line 6730
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

    .line 6721
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    .line 6722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6733
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 6734
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    .line 6736
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->makeExtensionsImmutable()V

    .line 6738
    return-void

    .line 6696
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 6667
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6672
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6801
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    .line 6838
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedSerializedSize:I

    .line 6674
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6667
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6675
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6801
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    .line 6838
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedSerializedSize:I

    .line 6675
    return-void
.end method

.method static synthetic access$8000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 6667
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6667
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6667
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I

    return p1
.end method

.method static synthetic access$8202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6667
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z

    return p1
.end method

.method static synthetic access$8302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6667
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1

    .prologue
    .line 6679
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    .line 6798
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I

    .line 6799
    iput-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z

    .line 6800
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .locals 1

    .prologue
    .line 6919
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->access$7800()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6922
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6899
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6905
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6869
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6875
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6910
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6916
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6889
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6895
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6879
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6885
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object p0
.end method


# virtual methods
.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 1
    .parameter

    .prologue
    .line 6769
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    return-object p0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 6766
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6759
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getContactOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 6773
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;

    return-object p0
.end method

.method public getContactOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6763
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6667
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .locals 1

    .prologue
    .line 6683
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    return-object v0
.end method

.method public getHighConfidence()Z
    .locals 1

    .prologue
    .line 6793
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6751
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 6783
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6840
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedSerializedSize:I

    .line 6841
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6857
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 6844
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6845
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6844
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 6848
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 6849
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 6852
    :goto_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 6853
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6856
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public hasHighConfidence()Z
    .locals 2

    .prologue
    .line 6790
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

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

.method public hasPriority()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6780
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

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

    .line 6803
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    .line 6804
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6821
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6804
    goto :goto_0

    .line 6806
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->hasPriority()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6807
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    move v0, v2

    .line 6808
    goto :goto_0

    .line 6810
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->hasHighConfidence()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6811
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    move v0, v2

    .line 6812
    goto :goto_0

    :cond_3
    move v0, v2

    .line 6814
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getContactCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 6815
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6816
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    move v0, v2

    .line 6817
    goto :goto_0

    .line 6814
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6820
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->memoizedIsInitialized:B

    move v0, v3

    .line 6821
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6667
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .locals 1

    .prologue
    .line 6920
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6667
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .locals 1

    .prologue
    .line 6924
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

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
    .line 6863
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

    .line 6826
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getSerializedSize()I

    .line 6827
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6828
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6827
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6830
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 6831
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6833
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2

    .line 6834
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6836
    :cond_2
    return-void
.end method
