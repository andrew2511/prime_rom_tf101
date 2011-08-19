.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DropListItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    }
.end annotation


# static fields
.field public static final DROPLIST_TYPE_FIELD_NUMBER:I = 0xd

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;


# instance fields
.field private bitField0_:I

.field private droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4521
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    .line 4756
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    .line 4757
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->initFields()V

    .line 4758
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

    .line 4483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4550
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4567
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4484
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->initFields()V

    .line 4487
    const/4 v0, 0x0

    .line 4488
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4489
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4490
    sparse-switch v1, :sswitch_data_0

    .line 4495
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 4497
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 4493
    goto :goto_0

    .line 4502
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 4503
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v1

    .line 4504
    if-eqz v1, :cond_0

    .line 4505
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    .line 4506
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4512
    :catch_0
    move-exception v0

    .line 4513
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4518
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->makeExtensionsImmutable()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->makeExtensionsImmutable()V

    .line 4520
    return-void

    .line 4514
    :catch_1
    move-exception v0

    .line 4515
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4490
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x68 -> :sswitch_1
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
    .line 4461
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4466
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4550
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4567
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4468
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4461
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4469
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4550
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4567
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4469
    return-void
.end method

.method static synthetic access$3702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4461
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4461
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1

    .prologue
    .line 4473
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4548
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4549
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4640
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->access$3500()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4643
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4620
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4626
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4590
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4596
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4631
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4637
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4610
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4616
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4600
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4606
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4461
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1

    .prologue
    .line 4477
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object v0
.end method

.method public getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 4544
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4533
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4569
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    .line 4570
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4578
    :goto_0
    return v0

    .line 4572
    :cond_0
    const/4 v0, 0x0

    .line 4573
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4574
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4577
    :cond_1
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasDroplistType()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4541
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

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

    .line 4552
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    .line 4553
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 4556
    :goto_0
    return v0

    .line 4553
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4555
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->memoizedIsInitialized:B

    move v0, v2

    .line 4556
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4461
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4641
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4461
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4645
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

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
    .line 4584
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getSerializedSize()I

    .line 4562
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4563
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4565
    :cond_0
    return-void
.end method
