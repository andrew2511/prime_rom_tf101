.class Ltwitter4j/AbstractStreamImplementation$1;
.super Ltwitter4j/AbstractStreamImplementation$StreamEvent;
.source "AbstractStreamImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AbstractStreamImplementation;->handleNextElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AbstractStreamImplementation;


# direct methods
.method constructor <init>(Ltwitter4j/AbstractStreamImplementation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 97
    iput-object p1, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-direct {p0, p1, p2}, Ltwitter4j/AbstractStreamImplementation$StreamEvent;-><init>(Ltwitter4j/AbstractStreamImplementation;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 99
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    iget-object v4, p0, Ltwitter4j/AbstractStreamImplementation$1;->line:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltwitter4j/AbstractStreamImplementation;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->line:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->line:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 102
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->line:Ljava/lang/String;

    invoke-direct {v1, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    invoke-static {v1}, Ltwitter4j/json/JSONObjectType;->determine(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/json/JSONObjectType;

    move-result-object v2

    .line 104
    .local v2, jsonObjectType:Ltwitter4j/json/JSONObjectType;
    sget-object v3, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v3}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    sget-object v3, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v4, "Received:"

    iget-object v5, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-static {v5}, Ltwitter4j/AbstractStreamImplementation;->access$000(Ltwitter4j/AbstractStreamImplementation;)Ltwitter4j/conf/Configuration;

    move-result-object v5

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isPrettyDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    sget-object v3, Ltwitter4j/json/JSONObjectType;->SENDER:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_3

    .line 108
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onSender(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 159
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v2           #jsonObjectType:Ltwitter4j/json/JSONObjectType;
    :cond_1
    :goto_1
    return-void

    .line 105
    .restart local v1       #json:Ltwitter4j/internal/org/json/JSONObject;
    .restart local v2       #jsonObjectType:Ltwitter4j/json/JSONObjectType;
    :cond_2
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 109
    :cond_3
    sget-object v3, Ltwitter4j/json/JSONObjectType;->STATUS:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_4

    .line 110
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onStatus(Ltwitter4j/internal/org/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v2           #jsonObjectType:Ltwitter4j/json/JSONObjectType;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 156
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v0}, Ltwitter4j/AbstractStreamImplementation;->onException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 111
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #json:Ltwitter4j/internal/org/json/JSONObject;
    .restart local v2       #jsonObjectType:Ltwitter4j/json/JSONObjectType;
    :cond_4
    :try_start_1
    sget-object v3, Ltwitter4j/json/JSONObjectType;->DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_5

    .line 112
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)V

    goto :goto_1

    .line 113
    :cond_5
    sget-object v3, Ltwitter4j/json/JSONObjectType;->DELETE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_6

    .line 114
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onDelete(Ltwitter4j/internal/org/json/JSONObject;)V

    goto :goto_1

    .line 115
    :cond_6
    sget-object v3, Ltwitter4j/json/JSONObjectType;->LIMIT:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_7

    .line 116
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onLimit(Ltwitter4j/internal/org/json/JSONObject;)V

    goto :goto_1

    .line 117
    :cond_7
    sget-object v3, Ltwitter4j/json/JSONObjectType;->SCRUB_GEO:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_8

    .line 118
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onScrubGeo(Ltwitter4j/internal/org/json/JSONObject;)V

    goto :goto_1

    .line 119
    :cond_8
    sget-object v3, Ltwitter4j/json/JSONObjectType;->FRIENDS:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_9

    .line 120
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-virtual {v3, v1}, Ltwitter4j/AbstractStreamImplementation;->onFriends(Ltwitter4j/internal/org/json/JSONObject;)V

    goto :goto_1

    .line 121
    :cond_9
    sget-object v3, Ltwitter4j/json/JSONObjectType;->FAVORITE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_a

    .line 122
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onFavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto :goto_1

    .line 123
    :cond_a
    sget-object v3, Ltwitter4j/json/JSONObjectType;->UNFAVORITE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_b

    .line 124
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onUnfavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 125
    :cond_b
    sget-object v3, Ltwitter4j/json/JSONObjectType;->RETWEET:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_c

    .line 127
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onRetweet(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 128
    :cond_c
    sget-object v3, Ltwitter4j/json/JSONObjectType;->FOLLOW:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_d

    .line 129
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onFollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 130
    :cond_d
    sget-object v3, Ltwitter4j/json/JSONObjectType;->UNFOLLOW:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_e

    .line 131
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onUnfollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 132
    :cond_e
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_MEMBER_ADDED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_f

    .line 133
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "target"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onUserListMemberAddition(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 134
    :cond_f
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_MEMBER_DELETED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_10

    .line 135
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "target"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onUserListMemberDeletion(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 136
    :cond_10
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_SUBSCRIBED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_11

    .line 137
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onUserListSubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 138
    :cond_11
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_12

    .line 139
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    const-string v6, "target_object"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/AbstractStreamImplementation;->onUserListUnsubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 140
    :cond_12
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_CREATED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_13

    .line 141
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onUserListCreation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 142
    :cond_13
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_UPDATED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_14

    .line 143
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onUserListUpdated(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 144
    :cond_14
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_LIST_DESTROYED:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_15

    .line 145
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onUserListDestroyed(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 146
    :cond_15
    sget-object v3, Ltwitter4j/json/JSONObjectType;->USER_UPDATE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_16

    .line 147
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onUserUpdate(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 148
    :cond_16
    sget-object v3, Ltwitter4j/json/JSONObjectType;->BLOCK:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_17

    .line 149
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onBlock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 150
    :cond_17
    sget-object v3, Ltwitter4j/json/JSONObjectType;->UNBLOCK:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_18

    .line 151
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ltwitter4j/AbstractStreamImplementation;->onUnblock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V

    goto/16 :goto_1

    .line 153
    :cond_18
    sget-object v3, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v4, "Received unknown event:"

    iget-object v5, p0, Ltwitter4j/AbstractStreamImplementation$1;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-static {v5}, Ltwitter4j/AbstractStreamImplementation;->access$000(Ltwitter4j/AbstractStreamImplementation;)Ltwitter4j/conf/Configuration;

    move-result-object v5

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isPrettyDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_19
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_2
.end method
