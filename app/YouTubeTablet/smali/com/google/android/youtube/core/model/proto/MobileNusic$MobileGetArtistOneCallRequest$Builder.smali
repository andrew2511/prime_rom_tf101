.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1972
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4800()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 1

    .prologue
    .line 1966
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 3

    .prologue
    .line 1975
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;-><init>()V

    .line 1976
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    .line 1977
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2008
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 3

    .prologue
    .line 2021
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    if-nez v1, :cond_0

    .line 2022
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    .line 2026
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    .line 2027
    return-object v0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 2

    .prologue
    .line 1994
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

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
    .line 1966
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2031
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2038
    :cond_0
    :goto_0
    return-object p0

    .line 2032
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2033
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    .line 2035
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2046
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2047
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2051
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2052
    :sswitch_0
    return-object p0

    .line 2057
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    goto :goto_0

    .line 2061
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    goto :goto_0

    .line 2047
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1966
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

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
    .line 1966
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2077
    if-nez p1, :cond_0

    .line 2078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->access$5002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Z)Z

    .line 2081
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->access$5102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2082
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2098
    if-nez p1, :cond_0

    .line 2099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->access$5202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Z)Z

    .line 2102
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->access$5302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2103
    return-object p0
.end method
