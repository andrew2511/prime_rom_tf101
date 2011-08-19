.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$1;,
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter "contactsProvider"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 181
    return-void
.end method

.method private buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "filter"
    .parameter "limit"

    .prologue
    .line 265
    new-instance v11, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_3

    move-object v2, p2

    :goto_0
    invoke-direct {v11, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 267
    .local v11, cursor:Landroid/database/MatrixCursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v2, "SELECT _id, lookup, photo_thumb_uri, display_name, snippet, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence FROM "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport;->getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v2, " AS contacts"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    if-eqz p4, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v5, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u2026"

    const/4 v9, 0x5

    move-object/from16 v4, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    :cond_0
    if-eqz p3, :cond_1

    .line 284
    const-string v2, " WHERE "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    const-string v2, " ORDER BY (CASE WHEN contacts.starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),contacts.times_contacted DESC, contacts.display_name, contacts._id"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    if-eqz p5, :cond_2

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #sb:Ljava/lang/StringBuilder;
    move-result-object v10

    .line 291
    .local v10, c:Landroid/database/Cursor;
    new-instance v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V

    .line 292
    .local v12, suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, p4

    move-object v1, v12

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 294
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 296
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 297
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 298
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 299
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->shortenSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 300
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    iput v2, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 301
    invoke-virtual {v12, p2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 265
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #cursor:Landroid/database/MatrixCursor;
    .end local v12           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_3
    sget-object v2, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 300
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #cursor:Landroid/database/MatrixCursor;
    .restart local v12       #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_4
    const/4 v2, 0x5

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_2

    .line 304
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 306
    return-object v11
.end method

.method private buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "searchClause"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 221
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 222
    .local v1, cursor:Landroid/database/MatrixCursor;
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    .local v4, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const v6, 0x10403b5

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 230
    .local v3, i:I
    if-gez v3, :cond_0

    .line 231
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_0
    const v6, 0x108020d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    const v6, 0x10403b6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 247
    if-gez v3, :cond_1

    .line 248
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_1
    const v6, 0x1080219

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v6, "_-1"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 260
    return-object v1

    .line 234
    .end local v0           #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 251
    .restart local v0       #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-object p0
.end method

.method private shortenSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "snippet"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 314
    if-nez p1, :cond_0

    move-object v9, v12

    .line 344
    :goto_0
    return-object v9

    .line 318
    :cond_0
    const/4 v3, 0x0

    .line 319
    .local v3, from:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 320
    .local v8, to:I
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 321
    .local v7, start:I
    if-ne v7, v9, :cond_1

    move-object v9, v12

    .line 322
    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 326
    .local v2, firstNl:I
    if-eq v2, v9, :cond_2

    .line 327
    add-int/lit8 v3, v2, 0x1

    .line 329
    :cond_2
    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 330
    .local v1, end:I
    if-eq v1, v9, :cond_3

    .line 331
    invoke-virtual {p1, v11, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 332
    .local v5, lastNl:I
    if-eq v5, v9, :cond_3

    .line 333
    move v8, v5

    .line 337
    .end local v5           #lastNl:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v6, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 339
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 340
    .local v0, c:C
    if-eq v0, v10, :cond_4

    if-eq v0, v10, :cond_4

    .line 341
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 344
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "projection"
    .parameter "lookupKey"
    .parameter "filter"

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 216
    .local v6, contactId:J
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 213
    .end local v6           #contactId:J
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 214
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v6, -0x1

    .restart local v6       #contactId:J
    goto :goto_0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "limit"

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    move-object v0, v3

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, searchClause:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
