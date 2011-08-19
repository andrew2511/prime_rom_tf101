.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gaiaStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7838
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7921
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7839
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->maybeForceBuilderInitialization()V

    .line 7840
    return-void
.end method

.method static synthetic access$9100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7845
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGaiaStatusIsMutable()V
    .locals 2

    .prologue
    .line 7924
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 7925
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7926
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7928
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7843
    return-void
.end method


# virtual methods
.method public addAllGaiaStatus(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;"
        }
    .end annotation

    .prologue
    .line 7991
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7992
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7994
    return-object p0
.end method

.method public addGaiaStatus(ILcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7984
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7985
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7987
    return-object p0
.end method

.method public addGaiaStatus(ILcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7967
    if-nez p2, :cond_0

    .line 7968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7970
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7971
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7973
    return-object p0
.end method

.method public addGaiaStatus(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7977
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7978
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7980
    return-object p0
.end method

.method public addGaiaStatus(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7957
    if-nez p1, :cond_0

    .line 7958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7960
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7961
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7963
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 2

    .prologue
    .line 7864
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    .line 7865
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7866
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7868
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 3

    .prologue
    .line 7872
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 7873
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7874
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7875
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7876
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7878
    :cond_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;Ljava/util/List;)Ljava/util/List;

    .line 7879
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7849
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7850
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7851
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7852
    return-object p0
.end method

.method public clearGaiaStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7998
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 8000
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2

    .prologue
    .line 7856
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

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
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 1

    .prologue
    .line 7860
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaStatus(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter

    .prologue
    .line 7937
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object p0
.end method

.method public getGaiaStatusCount()I
    .locals 1

    .prologue
    .line 7934
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7931
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7898
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
    .line 7833
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7833
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

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
    .line 7833
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7905
    const/4 v1, 0x0

    .line 7907
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7912
    if-eqz v0, :cond_0

    .line 7913
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    .line 7916
    :cond_0
    return-object p0

    .line 7908
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7909
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7910
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7912
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 7913
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    :cond_1
    throw v0

    .line 7912
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7883
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7894
    :goto_0
    return-object v0

    .line 7884
    :cond_0
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7885
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7886
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7887
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    :cond_1
    :goto_1
    move-object v0, p0

    .line 7894
    goto :goto_0

    .line 7889
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7890
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeGaiaStatus(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8003
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 8004
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8006
    return-object p0
.end method

.method public setGaiaStatus(ILcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7951
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7952
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7954
    return-object p0
.end method

.method public setGaiaStatus(ILcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7941
    if-nez p2, :cond_0

    .line 7942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7944
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7945
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7947
    return-object p0
.end method
