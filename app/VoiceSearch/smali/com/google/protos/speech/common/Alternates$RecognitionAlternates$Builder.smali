.class public final Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionAlternatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternatesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private slot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    .line 3125
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->maybeForceBuilderInitialization()V

    .line 3126
    return-void
.end method

.method static synthetic access$4100()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3119
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3131
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSlotIsMutable()V
    .locals 2

    .prologue
    .line 3216
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    .line 3218
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    .line 3220
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3129
    return-void
.end method


# virtual methods
.method public addAllSlot(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;)",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;"
        }
    .end annotation

    .prologue
    .line 3283
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3284
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3286
    return-object p0
.end method

.method public addSlot(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3276
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3277
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3279
    return-object p0
.end method

.method public addSlot(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3259
    if-nez p2, :cond_0

    .line 3260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3262
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3263
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3265
    return-object p0
.end method

.method public addSlot(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3269
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3270
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3272
    return-object p0
.end method

.method public addSlot(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3249
    if-nez p1, :cond_0

    .line 3250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3252
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3253
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3255
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 2

    .prologue
    .line 3150
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    .line 3151
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3152
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3154
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 3

    .prologue
    .line 3158
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 3159
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    .line 3160
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3161
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    .line 3162
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    .line 3164
    :cond_0
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->access$4302(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;Ljava/util/List;)Ljava/util/List;

    .line 3165
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3135
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    .line 3137
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    .line 3138
    return-object p0
.end method

.method public clearSlot()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    .line 3290
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    .line 3292
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 2

    .prologue
    .line 3142
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

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
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    .locals 1

    .prologue
    .line 3146
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getSlot(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object p0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 3184
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->getSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3185
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->getSlot(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 3190
    :goto_1
    return v0

    .line 3184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3190
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
    .line 3119
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3119
    check-cast p1, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

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
    .line 3119
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3197
    const/4 v1, 0x0

    .line 3199
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3204
    if-eqz v0, :cond_0

    .line 3205
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    .line 3208
    :cond_0
    return-object p0

    .line 3200
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3201
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3202
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3204
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 3205
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;

    :cond_1
    throw v0

    .line 3204
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3169
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3180
    :goto_0
    return-object v0

    .line 3170
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->access$4300(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3171
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3172
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->access$4300(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    .line 3173
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->bitField0_:I

    :cond_1
    :goto_1
    move-object v0, p0

    .line 3180
    goto :goto_0

    .line 3175
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3176
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;->access$4300(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeSlot(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3295
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3296
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3298
    return-object p0
.end method

.method public setSlot(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3243
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3244
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3246
    return-object p0
.end method

.method public setSlot(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3233
    if-nez p2, :cond_0

    .line 3234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3236
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->ensureSlotIsMutable()V

    .line 3237
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3239
    return-object p0
.end method
