.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 1

    .prologue
    .line 1096
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 3

    .prologue
    .line 1105
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;-><init>()V

    .line 1106
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1107
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 3

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    if-nez v1, :cond_0

    .line 1152
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1156
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1157
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1120
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearArtistId()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Z)Z

    .line 1216
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Ljava/lang/String;)Ljava/lang/String;

    .line 1217
    return-object p0
.end method

.method public clearArtistName()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Z)Z

    .line 1237
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Ljava/lang/String;)Ljava/lang/String;

    .line 1238
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2

    .prologue
    .line 1124
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

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
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1

    .prologue
    .line 1128
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId()Z

    move-result v0

    return v0
.end method

.method public hasArtistName()Z
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1161
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-object p0

    .line 1162
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    .line 1165
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1177
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1181
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
    :sswitch_0
    return-object p0

    .line 1187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    goto :goto_0

    .line 1191
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    goto :goto_0

    .line 1177
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
    .line 1096
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1096
    check-cast p1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

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
    .line 1096
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1207
    if-nez p1, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Z)Z

    .line 1211
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    return-object p0
.end method

.method public setArtistName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1228
    if-nez p1, :cond_0

    .line 1229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Z)Z

    .line 1232
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->access$3602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    return-object p0
.end method
