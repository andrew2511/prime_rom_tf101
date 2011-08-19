.class public Lcom/google/android/gsf/talk/SuggestionFooterCursor;
.super Landroid/database/CursorWrapper;
.source "SuggestionFooterCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# static fields
.field private static sAccountUsername:Ljava/lang/String;


# instance fields
.field private mAtFooterPosition:Z

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentData:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "text1"
    .parameter "text2"
    .parameter "query"
    .parameter "intentAction"
    .parameter "intentData"

    .prologue
    .line 65
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 66
    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2
    iput-object p2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 67
    iput-object p3, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText1:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText2:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mQuery:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentAction:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentData:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mContext:Landroid/content/Context;

    .line 74
    sget-object v2, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->sAccountUsername:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 78
    const/4 v8, 0x0

    .line 84
    .local v8, accountUsername:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "username"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 90
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 92
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 93
    .local v10, numRows:I
    const/4 v2, 0x1

    if-eq v10, v2, :cond_0

    .line 94
    const-string v2, "TalkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accounts table has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows, using first account"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 101
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 104
    .end local v10           #numRows:I
    :cond_2
    if-nez v8, :cond_3

    .line 105
    const-string v2, "TalkProvider"

    const-string v3, "SuggestionFooterCursor - Couldn\'t get account username"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    sput-object v8, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->sAccountUsername:Ljava/lang/String;

    .line 109
    .end local v8           #accountUsername:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_4
    return-void

    .line 101
    .restart local v8       #accountUsername:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 7
    .parameter "position"
    .parameter "window"

    .prologue
    .line 238
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v6}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    .line 239
    .local v1, count:I
    if-ltz p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    if-le p1, v6, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getPosition()I

    move-result v4

    .line 245
    .local v4, oldpos:I
    move v5, p1

    .line 246
    .local v5, pos:I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 247
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getColumnCount()I

    move-result v0

    .line 249
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 250
    :goto_1
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 252
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, field:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 254
    invoke-virtual {p2, v2, v5, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 255
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 265
    .end local v2           #field:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 259
    .restart local v2       #field:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v5, v3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 260
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 268
    .end local v0           #columnNum:I
    .end local v2           #field:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #oldpos:I
    .end local v5           #pos:I
    :catch_0
    move-exception v6

    .line 271
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 251
    .restart local v0       #columnNum:I
    .restart local v2       #field:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #oldpos:I
    .restart local v5       #pos:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 267
    .end local v2           #field:Ljava/lang/String;
    .end local v3           #i:I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .end local v0           #columnNum:I
    .end local v4           #oldpos:I
    .end local v5           #pos:I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    .line 114
    .local v0, count:I
    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_1
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 9
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, name:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v6, :cond_8

    .line 174
    const-string v6, "suggest_text_1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText1:Ljava/lang/String;

    .line 229
    :goto_0
    return-object v6

    .line 176
    :cond_0
    const-string v6, "suggest_text_2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mText2:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_1
    const-string v6, "suggest_intent_query"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mQuery:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_2
    const-string v6, "suggest_intent_action"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_3
    const-string v6, "suggest_intent_data"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 183
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mIntentData:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_4
    const-string v6, "presenceMode"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "presenceStatus"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "userID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "suggest_icon_1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "suggest_icon_1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "suggest_icon_2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move-object v6, v8

    .line 192
    goto :goto_0

    .line 193
    :cond_6
    const-string v6, "_id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 194
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v6}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 196
    :cond_7
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Footer column: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_8
    const-string v6, "suggest_icon_1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v8

    .line 202
    goto/16 :goto_0

    .line 203
    :cond_9
    const-string v6, "suggest_icon_2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 205
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v7, "presenceMode"

    invoke-interface {v6, v7}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, presenceColumn:I
    if-gez v4, :cond_a

    move-object v6, v8

    .line 207
    goto/16 :goto_0

    .line 209
    :cond_a
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v6, v4}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v3

    .line 211
    .local v3, presence:I
    invoke-static {v3}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 212
    .end local v3           #presence:I
    .end local v4           #presenceColumn:I
    :cond_b
    const-string v6, "suggest_text_2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 214
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v7, "presenceStatus"

    invoke-interface {v6, v7}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, customStatusColumn:I
    if-gez v1, :cond_c

    move-object v6, v8

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_c
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v6, v1}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, customStatus:Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    .line 221
    :cond_d
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    const-string v7, "userID"

    invoke-interface {v6, v7}, Landroid/database/CrossProcessCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 222
    .local v5, usernameColumn:I
    if-gez v5, :cond_e

    move-object v6, v8

    .line 223
    goto/16 :goto_0

    .line 225
    :cond_e
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v6, v5}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v5           #usernameColumn:I
    :cond_f
    move-object v6, v0

    .line 227
    goto/16 :goto_0

    .line 229
    .end local v0           #customStatus:Ljava/lang/String;
    .end local v1           #customStatusColumn:I
    :cond_10
    iget-object v6, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v6, p1}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public move(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 139
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-boolean v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->move(I)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 139
    goto :goto_1
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 134
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 156
    iput-boolean v2, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    move v0, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToNext()Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 143
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 144
    iget-boolean v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, p1, v1

    .line 145
    .local v0, computedPos:I
    if-ne v0, v2, :cond_2

    move v1, v4

    .line 148
    :goto_2
    return v1

    .end local v0           #computedPos:I
    :cond_0
    move v1, v3

    .line 143
    goto :goto_0

    :cond_1
    move v1, v3

    .line 144
    goto :goto_1

    .line 148
    .restart local v0       #computedPos:I
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, v0}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v1

    goto :goto_2
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mAtFooterPosition:Z

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->moveToPrevious()Z

    move-result v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gsf/talk/SuggestionFooterCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
