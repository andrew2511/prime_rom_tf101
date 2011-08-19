.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;"
    }
.end annotation


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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6320
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6321
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->maybeForceBuilderInitialization()V

    .line 6322
    return-void
.end method

.method static synthetic access$7100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6327
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .locals 2

    .prologue
    .line 6489
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6490
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6491
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6493
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6325
    return-void
.end method


# virtual methods
.method public addAllContact(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;"
        }
    .end annotation

    .prologue
    .line 6556
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6557
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6559
    return-object p0
.end method

.method public addContact(ILcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6549
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6550
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6552
    return-object p0
.end method

.method public addContact(ILcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6532
    if-nez p2, :cond_0

    .line 6533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6535
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6536
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6538
    return-object p0
.end method

.method public addContact(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6542
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6543
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6545
    return-object p0
.end method

.method public addContact(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6522
    if-nez p1, :cond_0

    .line 6523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6525
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6526
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6528
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 2

    .prologue
    .line 6350
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    .line 6351
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6352
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6354
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 5

    .prologue
    .line 6358
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 6359
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6360
    const/4 v2, 0x0

    .line 6361
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6362
    or-int/lit8 v2, v2, 0x1

    .line 6364
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6365
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6366
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6367
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6369
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/util/List;)Ljava/util/List;

    .line 6370
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 6371
    or-int/lit8 v1, v2, 0x2

    .line 6373
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6374
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;I)I

    .line 6375
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6331
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6333
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6335
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6337
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6338
    return-object p0
.end method

.method public clearContact()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6563
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6565
    return-object p0
.end method

.method public clearKansasId()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6469
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6470
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getKansasId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6472
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6611
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6612
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6614
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2

    .prologue
    .line 6342
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

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
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 1
    .parameter

    .prologue
    .line 6502
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    return-object p0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 6499
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

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
    .line 6496
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1

    .prologue
    .line 6346
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public getKansasId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6438
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6439
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6440
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6441
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6444
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getKansasIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6449
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6450
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6451
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6453
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6456
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6580
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6581
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6582
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6583
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6586
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6592
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6593
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6595
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6598
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasKansasId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6435
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

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
    .line 6577
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 6404
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getContactCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6405
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 6410
    :goto_1
    return v0

    .line 6404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6410
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
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
    .line 6315
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6315
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

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
    .line 6315
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6417
    const/4 v1, 0x0

    .line 6419
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6424
    if-eqz v0, :cond_0

    .line 6425
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    .line 6428
    :cond_0
    return-object p0

    .line 6420
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6421
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6422
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6424
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 6425
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    :cond_1
    throw v0

    .line 6424
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6379
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6400
    :goto_0
    return-object v0

    .line 6380
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->hasKansasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6381
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6382
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6385
    :cond_1
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6386
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6387
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6388
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6395
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6396
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6397
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    :cond_3
    move-object v0, p0

    .line 6400
    goto :goto_0

    .line 6390
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6391
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6568
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6569
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6571
    return-object p0
.end method

.method public setContact(ILcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6516
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6517
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6519
    return-object p0
.end method

.method public setContact(ILcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6506
    if-nez p2, :cond_0

    .line 6507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6509
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6510
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6512
    return-object p0
.end method

.method public setKansasId(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6460
    if-nez p1, :cond_0

    .line 6461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6463
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6464
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6466
    return-object p0
.end method

.method public setKansasIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6476
    if-nez p1, :cond_0

    .line 6477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6479
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6480
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6482
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6602
    if-nez p1, :cond_0

    .line 6603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6605
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6606
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6608
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6618
    if-nez p1, :cond_0

    .line 6619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6621
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6622
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6624
    return-object p0
.end method
