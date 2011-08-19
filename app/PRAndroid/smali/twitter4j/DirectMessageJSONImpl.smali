.class final Ltwitter4j/DirectMessageJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "DirectMessageJSONImpl.java"

# interfaces
.implements Ltwitter4j/DirectMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d250e1d8adf6ba9L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private id:J

.field private recipient:Ltwitter4j/User;

.field private recipientId:I

.field private recipientScreenName:Ljava/lang/String;

.field private sender:Ltwitter4j/User;

.field private senderId:I

.field private senderScreenName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 54
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 55
    .local v0, json:Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 56
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 57
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 61
    return-void
.end method

.method static createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 9
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 148
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 149
    .local v5, list:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 150
    .local v6, size:I
    new-instance v1, Ltwitter4j/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 151
    .local v1, directMessages:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 152
    invoke-virtual {v5, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 153
    .local v3, json:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 154
    .local v0, directMessage:Ltwitter4j/DirectMessage;
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v0, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v0           #directMessage:Ltwitter4j/DirectMessage;
    .end local v3           #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_0
    invoke-static {v1, v5}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    return-object v1

    .line 159
    .end local v1           #directMessages:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    .end local v2           #i:I
    .end local v5           #list:Ltwitter4j/internal/org/json/JSONArray;
    .end local v6           #size:I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 160
    .local v4, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 161
    .end local v4           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 162
    .local v7, te:Ltwitter4j/TwitterException;
    throw v7
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    .line 64
    const-string v1, "text"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    .line 65
    const-string v1, "sender_id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:I

    .line 66
    const-string v1, "recipient_id"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:I

    .line 67
    const-string v1, "created_at"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    .line 68
    const-string v1, "sender_screen_name"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    .line 69
    const-string v1, "recipient_screen_name"

    invoke-static {v1, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    .line 71
    :try_start_0
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "sender"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    .line 72
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "recipient"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_0

    move v0, v4

    .line 179
    .end local p1
    :goto_0
    return v0

    .line 176
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v5

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    instance-of v0, p1, Ltwitter4j/DirectMessage;

    if-eqz v0, :cond_2

    check-cast p1, Ltwitter4j/DirectMessage;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/DirectMessage;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    return-wide v0
.end method

.method public getRecipient()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    return-object v0
.end method

.method public getRecipientId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:I

    return v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    return-object v0
.end method

.method public getSenderId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:I

    return v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DirectMessageJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", created_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender_screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient_screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
