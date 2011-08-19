.class public Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;
.super Landroid/app/IntentService;
.source "SignupStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/SignupStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignupCheckService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "SignupCheckService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 164
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$000(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$100(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v5

    .line 169
    .local v5, accounts:[Landroid/accounts/Account;
    if-eqz v5, :cond_0

    .line 172
    const-string v19, "signup.pref"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 175
    .local v16, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v19, "com.google.android.music.tutorial.CLEAR_HOLDOFF"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 176
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 177
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v19, "holdoffUntil"

    const-wide/16 v20, -0x1

    move-object v0, v8

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-static {v8}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 181
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v19, "holdoffUntil"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 182
    .local v11, holdoffUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    cmp-long v19, v11, v19

    if-gtz v19, :cond_0

    .line 185
    new-instance v18, Ljava/util/ArrayList;

    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v18, verifiedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    new-instance v17, Lcom/google/android/music/sync/api/SignupClient;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/SignupClient;-><init>(Landroid/content/Context;)V

    .line 188
    .local v17, signupClient:Lcom/google/android/music/sync/api/SignupClient;
    move-object v6, v5

    .local v6, arr$:[Landroid/accounts/Account;
    array-length v15, v6

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_4

    aget-object v4, v6, v14

    .line 190
    .local v4, account:Landroid/accounts/Account;
    :try_start_0
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/api/SignupClient;->checkInviteStatus(Landroid/accounts/Account;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 191
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 194
    .local v7, e:Landroid/accounts/AuthenticatorException;
    const-string v19, "MusicStreaming"

    invoke-virtual {v7}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 195
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v19

    move-object/from16 v7, v19

    .line 196
    .local v7, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v19

    const/16 v20, 0x1f7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 206
    .end local v4           #account:Landroid/accounts/Account;
    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    .line 208
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/sync/api/SignupClient;->getHoldoffDurationSecs()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v9, v19, v21

    .line 209
    .local v9, holdoffDurationMs:J
    const-wide/16 v19, 0x0

    cmp-long v19, v9, v19

    if-gez v19, :cond_5

    .line 212
    const-wide/32 v9, 0x1499700

    .line 214
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 215
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v19, "holdoffUntil"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v9

    move-object v0, v8

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v19, :cond_8

    .line 219
    const-string v19, "status"

    const/16 v20, 0x1

    move-object v0, v8

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 220
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/music/tutorial/SignupStatus;->access$200(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    .line 221
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/music/jumper/MusicPreferences;->notifyStreamingAccountsReady()V

    .line 230
    :cond_6
    invoke-static {v8}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 200
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #holdoffDurationMs:J
    .restart local v4       #account:Landroid/accounts/Account;
    .restart local v7       #e:Lorg/apache/http/client/HttpResponseException;
    :cond_7
    const-string v19, "MusicStreaming"

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 202
    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_2
    move-exception v19

    move-object/from16 v7, v19

    .line 203
    .local v7, e:Ljava/io/IOException;
    const-string v19, "MusicStreaming"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 223
    .end local v4           #account:Landroid/accounts/Account;
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v9       #holdoffDurationMs:J
    :cond_8
    const-string v19, "status"

    const/16 v20, -0x1

    move-object v0, v8

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    const/4 v13, 0x1

    .line 225
    .local v13, i:I
    :goto_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "verifiedAccountsName"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 226
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "verifiedAccountsName"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "verifiedAccountsType"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method
