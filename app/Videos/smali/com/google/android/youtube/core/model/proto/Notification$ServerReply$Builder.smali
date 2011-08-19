.class public final Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;",
        "Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1949
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 1

    .prologue
    .line 1943
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1990
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1994
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 3

    .prologue
    .line 1952
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;-><init>()V

    .line 1953
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .line 1954
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1985
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->build()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 3

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    if-nez v1, :cond_0

    .line 1999
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .line 2003
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .line 2004
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 2

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    if-nez v0, :cond_0

    .line 1963
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1966
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .line 1967
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->clear()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->access$4702(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;Z)Z

    .line 2060
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    sget-object v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->access$4802(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 2061
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 2

    .prologue
    .line 1971
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

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
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1

    .prologue
    .line 1975
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2008
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2012
    :cond_0
    :goto_0
    return-object p0

    .line 2009
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->setError(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2021
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2025
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2026
    :sswitch_0
    return-object p0

    .line 2031
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2032
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->valueOf(I)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v2

    .line 2033
    .local v2, value:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    if-eqz v2, :cond_0

    .line 2034
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->setError(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    goto :goto_0

    .line 2021
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1943
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1943
    check-cast p1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

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
    .line 1943
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setError(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2051
    if-nez p1, :cond_0

    .line 2052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->access$4702(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;Z)Z

    .line 2055
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->access$4802(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 2056
    return-object p0
.end method
