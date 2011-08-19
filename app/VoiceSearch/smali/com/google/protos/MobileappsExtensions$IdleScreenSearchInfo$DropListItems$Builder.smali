.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4652
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4729
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4653
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->maybeForceBuilderInitialization()V

    .line 4654
    return-void
.end method

.method static synthetic access$3500()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4647
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4659
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4657
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 2

    .prologue
    .line 4678
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    .line 4679
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4680
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4682
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 4

    .prologue
    .line 4686
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 4687
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    .line 4688
    const/4 v2, 0x0

    .line 4689
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 4690
    or-int/lit8 v1, v2, 0x1

    .line 4692
    :goto_0
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->access$3702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4693
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->access$3802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;I)I

    .line 4694
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4663
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4664
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4665
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    .line 4666
    return-object p0
.end method

.method public clearDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4746
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    .line 4747
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4749
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 2

    .prologue
    .line 4670
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4647
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1

    .prologue
    .line 4674
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 4734
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method

.method public hasDroplistType()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4731
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 4706
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4647
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4647
    check-cast p1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4647
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4713
    const/4 v1, 0x0

    .line 4715
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4720
    if-eqz v0, :cond_0

    .line 4721
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    .line 4724
    :cond_0
    return-object p0

    .line 4716
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4717
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4718
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4720
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 4721
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    :cond_1
    throw v0

    .line 4720
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4698
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4702
    :goto_0
    return-object v0

    .line 4699
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->hasDroplistType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4700
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    :cond_1
    move-object v0, p0

    .line 4702
    goto :goto_0
.end method

.method public setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4737
    if-nez p1, :cond_0

    .line 4738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4740
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    .line 4741
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4743
    return-object p0
.end method
