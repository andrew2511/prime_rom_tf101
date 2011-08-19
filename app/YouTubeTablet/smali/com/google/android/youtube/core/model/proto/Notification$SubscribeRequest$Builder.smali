.class public final Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;",
        "Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2300()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 1

    .prologue
    .line 1090
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 3

    .prologue
    .line 1099
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;-><init>()V

    .line 1100
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    .line 1101
    return-object v0
.end method


# virtual methods
.method public addAllChannelIds(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1334
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2502(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1338
    return-object p0
.end method

.method public addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2502(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 3

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    if-nez v1, :cond_0

    .line 1146
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1150
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2502(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    .line 1154
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    .line 1155
    return-object v0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1118
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

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
    .line 1090
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1159
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-object p0

    .line 1160
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1161
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    .line 1163
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    .line 1166
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasAuthToken()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1167
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    .line 1169
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasRegistrationId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1170
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    .line 1172
    :cond_5
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1174
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2502(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1176
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1186
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1187
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1191
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    :sswitch_0
    return-object p0

    .line 1197
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    goto :goto_0

    .line 1201
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    goto :goto_0

    .line 1205
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    goto :goto_0

    .line 1209
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    goto :goto_0

    .line 1213
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    goto :goto_0

    .line 1187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 1090
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

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
    .line 1090
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1271
    if-nez p1, :cond_0

    .line 1272
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$3002(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z

    .line 1275
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$3102(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2602(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z

    .line 1233
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2702(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1292
    if-nez p1, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$3202(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z

    .line 1296
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$3302(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1250
    if-nez p1, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2802(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z

    .line 1254
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->access$2902(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1255
    return-object p0
.end method
