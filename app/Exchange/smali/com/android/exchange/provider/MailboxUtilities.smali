.class public Lcom/android/exchange/provider/MailboxUtilities;
.super Ljava/lang/Object;
.source "MailboxUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMailboxConsistency(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 186
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_0

    .line 188
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has inconsistent mailbox data; fixing up..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "parentKey"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, accountSelector:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 195
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    invoke-static {p0, v1}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-static {p0, p1, p2}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static endMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 174
    return-void
.end method

.method public static fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "accountSelector"

    .prologue
    const/4 v4, 0x0

    .line 124
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(parentKey isnull OR parentKey=0) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, noParentKeySelection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, parentCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {p0, v6}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 141
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 143
    const-string v1, "parentKey"

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method private static setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "start"

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 149
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "flags"

    if-eqz p3, :cond_1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v3, v3, -0x201

    goto :goto_1
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "context"
    .parameter "parentCursor"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    .line 46
    .end local p0
    .local v4, selectionArgs:[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v9, parentValues:Landroid/content/ContentValues;
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 49
    .local v7, parentId:J
    const/4 p0, 0x0

    .line 50
    .local p0, parentFlags:I
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 51
    .local v2, parentType:I
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, parentServerId:Ljava/lang/String;
    const/16 v3, 0x40

    if-gt v2, v3, :cond_0

    .line 54
    or-int/lit8 p0, p0, 0x8

    .line 57
    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 59
    :cond_1
    or-int/lit8 p0, p0, 0x10

    move v6, p0

    .line 65
    .end local p0           #parentFlags:I
    .local v6, parentFlags:I
    :goto_0
    if-eqz v1, :cond_3

    .line 66
    const/4 p0, 0x0

    aput-object v1, v4, p0

    .line 67
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .end local v1           #parentServerId:Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    .end local v2           #parentType:I
    const-string v3, "parentServerId=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .local p0, childCursor:Landroid/database/Cursor;
    move p1, v6

    .line 71
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #parentFlags:I
    .local p1, parentFlags:I
    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    or-int/lit8 v3, p1, 0x3

    .line 73
    .end local p1           #parentFlags:I
    .local v3, parentFlags:I
    :try_start_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local p1, childValues:Landroid/content/ContentValues;
    const-string v1, "parentKey"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 76
    .local v1, childId:J
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .end local v1           #childId:J
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p1, v3

    .line 78
    .end local v3           #parentFlags:I
    .local p1, parentFlags:I
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, p1

    .line 90
    .end local p1           #parentFlags:I
    .local p0, parentFlags:I
    :goto_3
    const-string p1, "flags"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0           #parentFlags:I
    invoke-virtual {v9, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    sget-object p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v9, p1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    return-void

    .line 84
    .local v1, parentServerId:Ljava/lang/String;
    .restart local v2       #parentType:I
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #parentFlags:I
    .local p1, parentCursor:Landroid/database/Cursor;
    :cond_3
    const-string p0, "parentKey"

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #parentServerId:Ljava/lang/String;
    invoke-virtual {v9, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string p0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mailbox with null serverId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1           #parentCursor:Landroid/database/Cursor;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v6

    .end local v6           #parentFlags:I
    .restart local p0       #parentFlags:I
    goto :goto_3

    .line 80
    .end local v2           #parentType:I
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .restart local v3       #parentFlags:I
    .local p0, childCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    move-object v0, p1

    move p1, v3

    .end local v3           #parentFlags:I
    .local p1, parentFlags:I
    goto :goto_2

    .restart local v1       #parentServerId:Ljava/lang/String;
    .restart local v2       #parentType:I
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .local p0, parentFlags:I
    .local p1, parentCursor:Landroid/database/Cursor;
    :cond_4
    move v6, p0

    .end local p0           #parentFlags:I
    .restart local v6       #parentFlags:I
    goto/16 :goto_0
.end method

.method public static startMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 165
    return-void
.end method
