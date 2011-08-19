.class public final Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$OrkutPhoneActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrkutPhoneAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;,
        Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    }
.end annotation


# static fields
.field public static final ISSMS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONENUMBERTYPEACTEDON_FIELD_NUMBER:I = 0x1

.field public static final PHONENUMBERTYPESHOWN_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;


# instance fields
.field private bitField0_:I

.field private isSms_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

.field private phoneNumberTypeShown_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9929
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 10353
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->defaultInstance:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 10354
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->defaultInstance:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->initFields()V

    .line 10355
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
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

    .line 9854
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10030
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedIsInitialized:B

    .line 10053
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedSerializedSize:I

    .line 9855
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->initFields()V

    move v0, v1

    .line 9859
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 9860
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9861
    sparse-switch v2, :sswitch_data_0

    .line 9866
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v6

    .line 9868
    goto :goto_0

    :sswitch_0
    move v0, v6

    .line 9864
    goto :goto_0

    .line 9873
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9874
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    move-result-object v2

    .line 9875
    if-eqz v2, :cond_0

    .line 9876
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    .line 9877
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9917
    :catch_0
    move-exception v0

    .line 9918
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9923
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_1

    .line 9924
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    .line 9926
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->makeExtensionsImmutable()V

    throw v0

    .line 9882
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    .line 9883
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isSms_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 9919
    :catch_1
    move-exception v0

    .line 9920
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

    .line 9887
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9888
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    move-result-object v2

    .line 9889
    if-eqz v2, :cond_0

    .line 9890
    and-int/lit8 v3, v1, 0x4

    if-eq v3, v5, :cond_2

    .line 9891
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    .line 9892
    or-int/lit8 v1, v1, 0x4

    .line 9894
    :cond_2
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9899
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 9900
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v2

    .line 9901
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_5

    .line 9902
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 9903
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    move-result-object v3

    .line 9904
    if-eqz v3, :cond_3

    .line 9905
    and-int/lit8 v4, v1, 0x4

    if-eq v4, v5, :cond_4

    .line 9906
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    .line 9907
    or-int/lit8 v1, v1, 0x4

    .line 9909
    :cond_4
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9912
    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 9923
    :cond_6
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v5, :cond_7

    .line 9924
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    .line 9926
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->makeExtensionsImmutable()V

    .line 9928
    return-void

    .line 9861
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 9832
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9837
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10030
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedIsInitialized:B

    .line 10053
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedSerializedSize:I

    .line 9839
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9832
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10030
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedIsInitialized:B

    .line 10053
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedSerializedSize:I

    .line 9840
    return-void
.end method

.method static synthetic access$11202(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9832
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9832
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isSms_:Z

    return p1
.end method

.method static synthetic access$11400(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 9832
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11402(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9832
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9832
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1

    .prologue
    .line 9844
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->defaultInstance:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10026
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 10027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isSms_:Z

    .line 10028
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10029
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10139
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->access$11000()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10142
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->newBuilder()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10119
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10125
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10089
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10095
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10130
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10136
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10109
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10115
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10099
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10105
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9832
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1

    .prologue
    .line 9848
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->defaultInstance:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object v0
.end method

.method public getIsSms()Z
    .locals 1

    .prologue
    .line 10009
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isSms_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9941
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumberTypeActedOn()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1

    .prologue
    .line 9999
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object v0
.end method

.method public getPhoneNumberTypeShown(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1
    .parameter

    .prologue
    .line 10022
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object p0
.end method

.method public getPhoneNumberTypeShownCount()I
    .locals 1

    .prologue
    .line 10019
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneNumberTypeShownList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10016
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10055
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedSerializedSize:I

    .line 10056
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10077
    :goto_0
    return v0

    .line 10059
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 10060
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->getNumber()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 10063
    :goto_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 10064
    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isSms_:Z

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_2
    move v3, v2

    .line 10069
    :goto_3
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 10070
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 10069
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    .line 10073
    :cond_1
    add-int v0, v1, v3

    .line 10074
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 10076
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedSerializedSize:I

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public hasIsSms()Z
    .locals 2

    .prologue
    .line 10006
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

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

.method public hasPhoneNumberTypeActedOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9996
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10032
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedIsInitialized:B

    .line 10033
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 10036
    :goto_0
    return v0

    .line 10033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10035
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->memoizedIsInitialized:B

    move v0, v2

    .line 10036
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9832
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10140
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->newBuilder()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9832
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->toBuilder()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10144
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->newBuilder(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

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
    .line 10083
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

    .line 10041
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getSerializedSize()I

    .line 10042
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10043
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10045
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10046
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isSms_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10048
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 10049
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10048
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10051
    :cond_2
    return-void
.end method
