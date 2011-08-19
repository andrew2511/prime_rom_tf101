.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationRoleProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;,
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$LocationRole;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 566
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    .line 567
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->initFields()V

    .line 568
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 297
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 404
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedIsInitialized:B

    .line 418
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedSerializedSize:I

    .line 298
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->initFields()V

    .line 300
    const/4 v0, 0x0

    .line 301
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 302
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 303
    packed-switch v1, :pswitch_data_0

    .line 308
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 310
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 306
    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->makeExtensionsImmutable()V

    .line 324
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->makeExtensionsImmutable()V

    throw v0

    .line 318
    :catch_1
    move-exception v0

    .line 319
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

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
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
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 280
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 404
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedIsInitialized:B

    .line 418
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedSerializedSize:I

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 404
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedIsInitialized:B

    .line 418
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedSerializedSize:I

    .line 283
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;->access$100()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 490
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 437
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 443
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 447
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 453
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedSerializedSize:I

    .line 421
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 425
    :goto_0
    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 424
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 406
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedIsInitialized:B

    .line 407
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 410
    :goto_0
    return v0

    .line 407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->memoizedIsInitialized:B

    move v0, v2

    .line 410
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;
    .locals 1

    .prologue
    .line 488
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;
    .locals 1

    .prologue
    .line 492
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto$Builder;

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
    .line 431
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRoleProto;->getSerializedSize()I

    .line 416
    return-void
.end method
