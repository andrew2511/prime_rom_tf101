.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 3

    .prologue
    .line 778
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;-><init>()V

    .line 779
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 780
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    if-nez v1, :cond_0

    .line 825
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 829
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 830
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 793
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearArtistId()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z

    .line 896
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    return-object p0
.end method

.method public clearArtistName()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z

    .line 917
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;

    .line 918
    return-object p0
.end method

.method public clearBiography()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z

    .line 938
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getBiography()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2

    .prologue
    .line 797
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

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
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getBiography()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 801
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId()Z

    move-result v0

    return v0
.end method

.method public hasArtistName()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName()Z

    move-result v0

    return v0
.end method

.method public hasBiography()Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasBiography()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 834
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-object p0

    .line 835
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    .line 838
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasArtistName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    .line 841
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->hasBiography()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getBiography()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->setBiography(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 853
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 857
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 858
    :sswitch_0
    return-object p0

    .line 863
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    goto :goto_0

    .line 867
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    goto :goto_0

    .line 871
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->setBiography(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    goto :goto_0

    .line 853
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 769
    check-cast p1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 887
    if-nez p1, :cond_0

    .line 888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z

    .line 891
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;

    .line 892
    return-object p0
.end method

.method public setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 908
    if-nez p1, :cond_0

    .line 909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z

    .line 912
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    return-object p0
.end method

.method public setBiography(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 929
    if-nez p1, :cond_0

    .line 930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Z)Z

    .line 933
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->access$2902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    return-object p0
.end method
