.class Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    }
.end annotation


# instance fields
.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->this$0:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    .line 139
    invoke-static {p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->access$002(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)Landroid/content/Context;

    .line 140
    return-void
.end method


# virtual methods
.method public add(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 11
    .parameter "accountId"
    .parameter "username"
    .parameter "nickname"
    .parameter "title"
    .parameter "message"
    .parameter "intent"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;-><init>(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;J)V

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    .local v0, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public cancelNotifications()V
    .locals 6

    .prologue
    .line 212
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    .line 216
    .local v2, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->this$0:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->access$100(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAccountId:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 218
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;>;"
    .end local v2           #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :cond_0
    return-void
.end method

.method public getItemForAccount(J)Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    return-object p0
.end method

.method public removeAll()V
    .locals 4

    .prologue
    .line 205
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    .line 207
    .local v2, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    goto :goto_0

    .line 209
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;>;"
    .end local v2           #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :cond_0
    return-void
.end method

.method public removeForAccount(J)Z
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    .line 190
    .local v0, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    if-nez v0, :cond_0

    move v1, v3

    .line 197
    :goto_0
    return v1

    .line 196
    :cond_0
    iput v3, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    .line 197
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeForUser(Ljava/lang/String;J)Z
    .locals 4
    .parameter "username"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    .line 175
    .local v0, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    if-nez v0, :cond_0

    move v1, v3

    .line 185
    :goto_0
    return v1

    .line 178
    :cond_0
    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 179
    goto :goto_0

    .line 184
    :cond_1
    iput v3, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    .line 185
    const/4 v1, 0x1

    goto :goto_0
.end method
