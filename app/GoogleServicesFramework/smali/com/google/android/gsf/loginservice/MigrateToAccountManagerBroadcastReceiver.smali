.class public Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MigrateToAccountManagerBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private migrateAccounts(Landroid/content/Context;)V
    .locals 31
    .parameter "context"

    .prologue
    .line 69
    const-string v5, "accounts.db"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    .line 70
    .local v26, path:Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v22, file:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 72
    const-string v5, "GoogleLoginService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skipping migration because "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v5, "GoogleLoginService"

    const-string v6, "beginning migration to the AccountManager..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    .line 80
    .local v15, accountManager:Landroid/accounts/AccountManager;
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v26

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 82
    .local v4, oldDatabase:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v19, 0x0

    .line 84
    .local v19, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_3

    .line 85
    const-string v5, "GoogleLoginService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong DB version, skipping migration. Expected 7, found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v19, :cond_2

    .line 156
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_2
    if-eqz v4, :cond_0

    .line 159
    throw v4

    goto :goto_0

    .line 93
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v17

    .line 96
    .local v17, accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    const-string v5, "accounts"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "username"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "encryptedpassword"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "sha1hash"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "flags"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "registered"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 106
    const/16 v25, 0x0

    .line 107
    .local v25, foundHosted:Z
    :cond_4
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 108
    const/4 v5, 0x3

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 109
    .local v23, flags:J
    const-wide/16 v5, 0x2

    and-long v5, v5, v23

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 110
    const/16 v25, 0x1

    goto :goto_1

    .line 113
    .end local v23           #flags:J
    :cond_5
    const/4 v5, -0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 115
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 117
    .local v20, encryptedPassword:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 118
    .local v30, sha1hash:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 119
    .restart local v23       #flags:J
    const/4 v5, 0x4

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 120
    .local v27, registered:J
    const/4 v5, 0x5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 122
    .local v13, accountId:J
    new-instance v12, Landroid/accounts/Account;

    const-string v5, "com.google"

    move-object v0, v12

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v12, account:Landroid/accounts/Account;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v21, extras:Landroid/os/Bundle;
    const-string v5, "flags"

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "sha1hash"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "registered"

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "GoogleLoginService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrating account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 155
    .end local v12           #account:Landroid/accounts/Account;
    .end local v13           #accountId:J
    .end local v16           #accountName:Ljava/lang/String;
    .end local v17           #accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20           #encryptedPassword:Ljava/lang/String;
    .end local v21           #extras:Landroid/os/Bundle;
    .end local v23           #flags:J
    .end local v25           #foundHosted:Z
    .end local v27           #registered:J
    .end local v30           #sha1hash:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v19, :cond_6

    .line 156
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_6
    if-eqz v4, :cond_7

    .line 159
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v5

    .line 132
    .restart local v17       #accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v25       #foundHosted:Z
    :cond_8
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 135
    const-string v5, "authtokens"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "account"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "service"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "authtoken"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 137
    :cond_9
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 138
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 139
    .restart local v13       #accountId:J
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 140
    .local v29, service:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 142
    .local v18, authToken:Ljava/lang/String;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accounts/Account;

    .line 143
    .restart local v12       #account:Landroid/accounts/Account;
    if-eqz v12, :cond_9

    .line 146
    const-string v5, "GoogleLoginService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrating authtoken "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v29

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 150
    .end local v12           #account:Landroid/accounts/Account;
    .end local v13           #accountId:J
    .end local v18           #authToken:Ljava/lang/String;
    .end local v29           #service:Ljava/lang/String;
    :cond_a
    const-string v5, "GoogleLoginService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migration complete, deleting the old database file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v19, :cond_b

    .line 156
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_b
    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method private migrateAndroidId(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 32
    new-instance v6, Ljava/io/File;

    const-string v8, "accounts.db"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 35
    new-instance v6, Ljava/io/File;

    .end local v6           #file:Ljava/io/File;
    const-string v8, "gls.db"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .restart local v6       #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 37
    const-string v8, "GoogleLoginService"

    const-string v9, "no legacy android id exists to migrate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 45
    .local v7, oldDatabase:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "SELECT intValue FROM meta WHERE name=\'androidId\'"

    invoke-static {v7, v8, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 47
    .local v1, androidId:J
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 48
    const/4 v7, 0x0

    .line 50
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setting the androidId to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 53
    .local v3, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "pre_froyo_aid"

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v0, aidFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 56
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    const-string v8, "pre_froyo_aid"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    .local v4, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v4, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 61
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v4           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 63
    .local v5, e:Ljava/io/IOException;
    const-string v8, "GoogleLoginService"

    const-string v9, "error saving old android id"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->migrateAndroidId(Landroid/content/Context;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->migrateAccounts(Landroid/content/Context;)V

    .line 169
    const-string v0, "GoogleLoginService"

    const-string v1, "disabling the migration script since the migration is complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v4, componentName:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 173
    .local v5, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;

    const-string v2, "disableMigrationScript"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;-><init>(Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->start()V

    .line 182
    return-void
.end method
