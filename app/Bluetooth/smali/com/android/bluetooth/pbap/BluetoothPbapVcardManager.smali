.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mVcardResults:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;

    return-object p1
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I
    .locals 20
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"

    .prologue
    .line 272
    const/4 v3, 0x1

    move/from16 v0, p3

    move v1, v3

    if-lt v0, v1, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 273
    :cond_0
    const-string v3, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v3, 0xd0

    .line 328
    :goto_0
    return v3

    .line 276
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, typeSelection:Ljava/lang/String;
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 279
    .local v4, myUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    .line 282
    .local v5, CALLLOG_PROJECTION:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 284
    .local v13, ID_COLUMN_INDEX:I
    const/4 v14, 0x0

    .line 285
    .local v14, callsCursor:Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 286
    .local v18, startPointId:J
    const-wide/16 v15, 0x0

    .line 289
    .local v15, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 291
    if-eqz v14, :cond_2

    .line 292
    const/4 v3, 0x1

    sub-int v3, p3, v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 293
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .line 295
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 296
    move-wide/from16 v15, v18

    .line 304
    :cond_2
    :goto_1
    if-eqz v14, :cond_3

    .line 305
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    .end local v4           #myUri:Landroid/net/Uri;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 320
    .local v17, recordSelection:Ljava/lang/String;
    :goto_2
    if-nez v6, :cond_7

    .line 321
    move-object/from16 v9, v17

    .line 328
    .local v9, selection:Ljava/lang/String;
    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v10, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v3

    goto :goto_0

    .line 298
    .end local v9           #selection:Ljava/lang/String;
    .end local v17           #recordSelection:Ljava/lang/String;
    .restart local v4       #myUri:Landroid/net/Uri;
    :cond_4
    const/4 v3, 0x1

    sub-int v3, p4, v3

    :try_start_1
    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 299
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v15

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_5

    .line 305
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_5
    throw v3

    .line 315
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    .end local v4           #myUri:Landroid/net/Uri;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #recordSelection:Ljava/lang/String;
    goto :goto_2

    .line 323
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #selection:Ljava/lang/String;
    goto :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I
    .locals 13
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"

    .prologue
    .line 378
    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    .line 379
    const-string v2, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v2, 0xd0

    .line 422
    :goto_0
    return v2

    .line 382
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 383
    .local v3, myUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 384
    .local v10, contactCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 385
    .local v6, selection:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 386
    .local v11, contactId:J
    sget v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    move v1, v2

    if-ne v0, v1, :cond_4

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    .end local v6           #selection:Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 390
    if-eqz v10, :cond_1

    .line 391
    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 392
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v11

    .line 396
    :cond_1
    if-eqz v10, :cond_2

    .line 397
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    .end local v3           #myUri:Landroid/net/Uri;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 422
    .restart local v6       #selection:Ljava/lang/String;
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 396
    .end local v6           #selection:Ljava/lang/String;
    .restart local v3       #myUri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 397
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_3
    throw v2

    .line 400
    .restart local v6       #selection:Ljava/lang/String;
    :cond_4
    sget v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    move v1, v2

    if-ne v0, v1, :cond_7

    .line 402
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "display_name"

    .end local v6           #selection:Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 404
    if-eqz v10, :cond_5

    .line 405
    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 406
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v11

    .line 410
    :cond_5
    if-eqz v10, :cond_2

    .line 411
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 410
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_6

    .line 411
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_6
    throw v2

    .line 415
    .restart local v6       #selection:Ljava/lang/String;
    :cond_7
    const-string v2, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    .end local v3           #myUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v2, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .locals 15
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"

    .prologue
    .line 333
    const/4 v2, 0x1

    move/from16 v0, p2

    move v1, v2

    if-lt v0, v1, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 334
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v3, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v2, 0xd0

    .line 373
    :goto_0
    return v2

    .line 337
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 339
    .local v3, myUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 340
    .local v10, contactCursor:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 341
    .local v13, startPointId:J
    const-wide/16 v11, 0x0

    .line 343
    .local v11, endPointId:J
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 345
    if-eqz v10, :cond_2

    .line 346
    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 347
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 349
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 350
    move-wide v11, v13

    .line 358
    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    .line 359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    .end local v3           #myUri:Landroid/net/Uri;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in_visible_group=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x1

    move-object v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 352
    .end local v6           #selection:Ljava/lang/String;
    .restart local v3       #myUri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x1

    sub-int v2, p3, v2

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 353
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v11

    goto :goto_1

    .line 358
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_5
    throw v2

    .line 367
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id>="

    .end local v3           #myUri:Landroid/net/Uri;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in_visible_group=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_2
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 9
    .parameter "op"
    .parameter "selection"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "isContacts"

    .prologue
    const/16 v8, 0xd0

    .line 427
    const-wide/16 v2, 0x0

    .line 430
    .local v2, timestamp:J
    if-eqz p5, :cond_8

    .line 431
    const/4 v0, 0x0

    .line 435
    .local v0, composer:Lcom/android/vcard/VCardComposer;
    if-eqz p3, :cond_1

    .line 436
    const/high16 v4, -0x4000

    .line 440
    .local v4, vcardType:I
    :goto_0
    const/high16 v5, 0x80

    or-int/2addr v4, v5

    .line 441
    const/high16 v5, 0x200

    or-int/2addr v4, v5

    .line 443
    :try_start_0
    new-instance v1, Lcom/android/vcard/VCardComposer;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v1, v5, v4, v6}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .local v1, composer:Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v5, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/vcard/VCardComposer;->addHandler(Lcom/android/vcard/VCardComposer$OneEntryHandler;)V

    .line 445
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual {v1, v5, p2, v6, v7}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v5

    if-nez v5, :cond_2

    .line 462
    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_0
    move v5, v8

    .line 498
    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .end local v4           #vcardType:I
    .end local p1
    :goto_1
    return v5

    .line 438
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    .restart local p1
    :cond_1
    const v4, -0x3fffffff

    .restart local v4       #vcardType:I
    goto :goto_0

    .line 449
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 450
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v5, :cond_5

    .line 451
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v5, 0x1

    iput-boolean v5, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 452
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 462
    :cond_3
    if-eqz v1, :cond_4

    .line 463
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 498
    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .end local v4           #vcardType:I
    :cond_4
    :goto_2
    const/16 v5, 0xa0

    goto :goto_1

    .line 455
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #vcardType:I
    .restart local p1
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->createOneEntry()Z

    move-result v5

    if-nez v5, :cond_2

    .line 456
    const-string v5, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact. Error reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 462
    if-eqz v1, :cond_6

    .line 463
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_6
    move v5, v8

    .line 458
    goto :goto_1

    .line 462
    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v5

    .end local p1
    :goto_3
    if-eqz v0, :cond_7

    .line 463
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 462
    :cond_7
    throw v5

    .line 467
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .end local v4           #vcardType:I
    .restart local p1
    :cond_8
    const/4 v0, 0x0

    .line 469
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_4
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    .end local v0           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v1, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_5
    new-instance v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v5, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->addHandler(Lcom/android/vcard/VCardComposer$OneEntryHandler;)V

    .line 471
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual {v1, v5, p2, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v5

    if-nez v5, :cond_a

    .line 489
    if-eqz v1, :cond_9

    .line 490
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    :cond_9
    move v5, v8

    .line 473
    goto :goto_1

    .line 476
    :cond_a
    :try_start_6
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_b

    .line 477
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v5, :cond_c

    .line 478
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v5, 0x1

    iput-boolean v5, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 479
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 489
    :cond_b
    if-eqz v1, :cond_4

    .line 490
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    goto :goto_2

    .line 482
    .restart local p1
    :cond_c
    :try_start_7
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry()Z

    move-result v5

    if-nez v5, :cond_a

    .line 483
    const-string v5, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact. Error reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 489
    if-eqz v1, :cond_d

    .line 490
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    :cond_d
    move v5, v8

    .line 485
    goto/16 :goto_1

    .line 489
    .end local v1           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v0       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v5

    .end local p1
    :goto_4
    if-eqz v0, :cond_e

    .line 490
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 489
    :cond_e
    throw v5

    .end local v0           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v1       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v0       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .line 462
    .end local v0           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v1, composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #vcardType:I
    :catchall_3
    move-exception v5

    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .local v0, composer:Lcom/android/vcard/VCardComposer;
    goto :goto_3
.end method

.method public final getCallHistorySize(I)I
    .locals 8
    .parameter "type"

    .prologue
    .line 148
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 151
    .local v7, size:I
    const/4 v6, 0x0

    .line 153
    .local v6, callCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    if-eqz v6, :cond_0

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 159
    :cond_0
    if-eqz v6, :cond_1

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    return v7

    .line 159
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v10, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 237
    .local v6, contactCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 239
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 240
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 247
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    if-eqz v6, :cond_3

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 255
    .local v7, id:J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 259
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 263
    .end local v7           #id:J
    .end local v9           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    throw v0

    .line 242
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 263
    :cond_3
    if-eqz v6, :cond_4

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_4
    return-object v10
.end method

.method public final getContactsSize()I
    .locals 8

    .prologue
    .line 131
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 132
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 133
    .local v7, size:I
    const/4 v6, 0x0

    .line 135
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 140
    :cond_0
    if-eqz v6, :cond_1

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return v7

    .line 140
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(Z)Ljava/lang/String;
    .locals 6
    .parameter "vcardType21"

    .prologue
    .line 108
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;Z)V

    .line 109
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, number:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, vcard:Ljava/lang/String;
    return-object v3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 204
    .local v1, myUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 206
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 222
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 226
    .end local v7           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_2
    throw v0

    .line 210
    :cond_3
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 226
    :cond_4
    if-eqz v6, :cond_5

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_5
    return-object v8
.end method

.method public final getPhonebookSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 127
    .local v0, size:I
    :goto_0
    return v0

    .line 120
    .end local v0           #size:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 121
    .restart local v0       #size:I
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 168
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 172
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 173
    .local v7, CALLS_NUMBER_COLUMN_INDEX:I
    const/4 v6, 0x1

    .line 175
    .local v6, CALLS_NAME_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 176
    .local v8, callCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    if-eqz v8, :cond_2

    .line 181
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 188
    :cond_0
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    .end local v10           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_1
    throw v0

    :cond_2
    if-eqz v8, :cond_3

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_3
    return-object v9
.end method
