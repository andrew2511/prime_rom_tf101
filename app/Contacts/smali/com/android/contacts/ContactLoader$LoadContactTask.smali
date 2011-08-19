.class final Lcom/android/contacts/ContactLoader$LoadContactTask;
.super Landroid/os/AsyncTask;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;-><init>(Lcom/android/contacts/ContactLoader;)V

    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 799
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 813
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :pswitch_1
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 815
    :goto_0
    :pswitch_2
    return-void

    .line 807
    :pswitch_3
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :pswitch_4
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 579
    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 581
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, authority:Ljava/lang/String;
    const-string v5, "com.android.contacts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 585
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p2

    .line 607
    .end local v4           #type:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 592
    .restart local v4       #type:Ljava/lang/String;
    :cond_1
    const-string v5, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 594
    .local v2, rawContactId:J
    iget-object v5, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 599
    .end local v2           #rawContactId:J
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri format is unknown"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    const-string v0, "contacts"

    .line 604
    .local v0, OBSOLETE_AUTHORITY:Ljava/lang/String;
    const-string v5, "contacts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 606
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 607
    .restart local v2       #rawContactId:J
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 611
    .end local v2           #rawContactId:J
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri authority is unknown"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 22
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 615
    const-string v3, "entities"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 616
    .local v4, entityUri:Landroid/net/Uri;
    sget-object v5, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "raw_contact_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 618
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 619
    const-string v3, "ContactLoader"

    const-string v4, "No cursor returned in loadContactEntity"

    .end local v4           #entityUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-object v3, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;

    .line 656
    :goto_0
    return-object v3

    .line 624
    .restart local v4       #entityUri:Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 625
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 626
    sget-object v3, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 629
    :cond_1
    const-wide/16 v9, -0x1

    .line 630
    .local v9, currentRawContactId:J
    const/16 v16, 0x0

    .line 631
    .local v16, entity:Landroid/content/Entity;
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v19

    .line 632
    .local v19, result:Lcom/android/contacts/ContactLoader$Result;
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    .line 633
    .local v15, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v21

    .line 634
    .local v21, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    .line 635
    const/16 v3, 0xd

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 636
    .local v17, rawContactId:J
    cmp-long v3, v17, v9

    if-eqz v3, :cond_2

    .line 637
    move-wide/from16 v9, v17

    .line 638
    new-instance v16, Landroid/content/Entity;

    .end local v16           #entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 639
    .restart local v16       #entity:Landroid/content/Entity;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_2
    const/16 v3, 0x1a

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 642
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 643
    .local v12, data:Landroid/content/ContentValues;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 645
    const/16 v3, 0x34

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x36

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 647
    :cond_3
    new-instance v20, Lcom/android/contacts/util/DataStatus;

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 648
    .local v20, status:Lcom/android/contacts/util/DataStatus;
    const/16 v3, 0x1a

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 649
    .local v13, dataId:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .end local v12           #data:Landroid/content/ContentValues;
    .end local v13           #dataId:J
    .end local v20           #status:Lcom/android/contacts/util/DataStatus;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 656
    .end local v9           #currentRawContactId:J
    .end local v15           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v16           #entity:Landroid/content/Entity;
    .end local v17           #rawContactId:J
    .end local v19           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v21           #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v9       #currentRawContactId:J
    .restart local v15       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v16       #entity:Landroid/content/Entity;
    .restart local v19       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v21       #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, v19

    goto/16 :goto_0
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 26
    .parameter "cursor"
    .parameter "contactUri"

    .prologue
    .line 692
    const-string v2, "directory"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 694
    .local v25, directoryParameter:Ljava/lang/String;
    if-nez v25, :cond_1

    const-wide/16 v2, 0x0

    move-wide v5, v2

    .line 697
    .local v5, directoryId:J
    :goto_0
    const/16 v2, 0xc

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 698
    .local v8, contactId:J
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, lookupKey:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 700
    .local v10, nameRawContactId:J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 701
    .local v12, displayNameSource:I
    const/4 v2, 0x3

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 702
    .local v16, displayName:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 703
    .local v17, phoneticName:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 704
    .local v13, photoId:J
    const/16 v2, 0x3b

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 705
    .local v15, photoUri:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 706
    .local v18, starred:Z
    :goto_1
    const/4 v2, 0x7

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 709
    .local v19, presence:Ljava/lang/Integer;
    :goto_2
    const/16 v2, 0x8

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 710
    .local v20, status:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v21, v2

    .line 713
    .local v21, statusTimestamp:Ljava/lang/Long;
    :goto_3
    const/16 v2, 0xb

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v22, v2

    .line 716
    .local v22, statusLabel:Ljava/lang/Integer;
    :goto_4
    const/16 v2, 0xa

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 720
    .local v23, statusResPackage:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, v5, v2

    if-nez v2, :cond_6

    .line 721
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 727
    .local v4, lookupUri:Landroid/net/Uri;
    :goto_5
    new-instance v2, Lcom/android/contacts/ContactLoader$Result;

    const/16 v24, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v24}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/contacts/ContactLoader$1;)V

    return-object v2

    .line 694
    .end local v4           #lookupUri:Landroid/net/Uri;
    .end local v5           #directoryId:J
    .end local v7           #lookupKey:Ljava/lang/String;
    .end local v8           #contactId:J
    .end local v10           #nameRawContactId:J
    .end local v12           #displayNameSource:I
    .end local v13           #photoId:J
    .end local v15           #photoUri:Ljava/lang/String;
    .end local v16           #displayName:Ljava/lang/String;
    .end local v17           #phoneticName:Ljava/lang/String;
    .end local v18           #starred:Z
    .end local v19           #presence:Ljava/lang/Integer;
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #statusTimestamp:Ljava/lang/Long;
    .end local v22           #statusLabel:Ljava/lang/Integer;
    .end local v23           #statusResPackage:Ljava/lang/String;
    :cond_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v5, v2

    goto/16 :goto_0

    .line 705
    .restart local v5       #directoryId:J
    .restart local v7       #lookupKey:Ljava/lang/String;
    .restart local v8       #contactId:J
    .restart local v10       #nameRawContactId:J
    .restart local v12       #displayNameSource:I
    .restart local v13       #photoId:J
    .restart local v15       #photoUri:Ljava/lang/String;
    .restart local v16       #displayName:Ljava/lang/String;
    .restart local v17       #phoneticName:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_1

    .line 706
    .restart local v18       #starred:Z
    :cond_3
    const/4 v2, 0x7

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_2

    .line 710
    .restart local v19       #presence:Ljava/lang/Integer;
    .restart local v20       #status:Ljava/lang/String;
    :cond_4
    const/16 v2, 0x9

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_3

    .line 713
    .restart local v21       #statusTimestamp:Ljava/lang/Long;
    :cond_5
    const/16 v2, 0xb

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_4

    .line 724
    .restart local v22       #statusLabel:Ljava/lang/Integer;
    .restart local v23       #statusResPackage:Ljava/lang/String;
    :cond_6
    move-object/from16 v4, p2

    .restart local v4       #lookupUri:Landroid/net/Uri;
    goto :goto_5
.end method

.method private loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 763
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 765
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 767
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 768
    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 769
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 770
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 771
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 772
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 773
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 774
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 775
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 776
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 777
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 778
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 779
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 780
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 781
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 782
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 783
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 784
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 785
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 786
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 787
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 788
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 789
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 790
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 791
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 792
    const/16 v1, 0x35

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 794
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 14
    .parameter "result"

    .prologue
    .line 818
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v7

    .line 820
    .local v7, directoryId:J
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 823
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 852
    .end local v7           #directoryId:J
    :goto_0
    return-void

    .line 827
    .restart local v7       #directoryId:J
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, displayName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 830
    .local v10, packageName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 831
    .local v13, typeResourceId:I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, accountType:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 833
    .local v4, accountName:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 834
    .local v5, exportSupport:I
    const/4 v2, 0x0

    .line 835
    .local v2, directoryType:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 838
    .local v11, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 839
    .local v12, resources:Landroid/content/res/Resources;
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .end local v7           #directoryId:J
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object v0, p1

    .line 846
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactLoader$Result;->access$400(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #directoryType:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #exportSupport:I
    .end local v10           #packageName:Ljava/lang/String;
    .end local v13           #typeResourceId:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 840
    .restart local v1       #displayName:Ljava/lang/String;
    .restart local v2       #directoryType:Ljava/lang/String;
    .restart local v3       #accountType:Ljava/lang/String;
    .restart local v4       #accountName:Ljava/lang/String;
    .restart local v5       #exportSupport:I
    .restart local v7       #directoryId:J
    .restart local v10       #packageName:Ljava/lang/String;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v13       #typeResourceId:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 841
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v0, "ContactLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #directoryId:J
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact directory resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 850
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #directoryType:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #exportSupport:I
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v13           #typeResourceId:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 14
    .parameter "result"

    .prologue
    .line 859
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .local v11, selection:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v12, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/contacts/ContactLoader$Result;->access$500(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    .line 862
    .local v9, entity:Landroid/content/Entity;
    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 863
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, accountName:Ljava/lang/String;
    const-string v0, "account_type"

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, accountType:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 866
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    const-string v0, " OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_1
    const-string v0, "(account_name=? AND account_type=?)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 875
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v9           #entity:Landroid/content/Entity;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 879
    .local v8, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 880
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 881
    .restart local v1       #accountName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 882
    .restart local v2       #accountType:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 883
    .local v3, groupId:J
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    .local v5, title:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v6, v0

    .line 887
    .local v6, defaultGroup:Z
    :goto_2
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v7, v0

    .line 891
    .local v7, favorites:Z
    :goto_3
    new-instance v0, Lcom/android/contacts/GroupMetaData;

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    invoke-static {p1, v0}, Lcom/android/contacts/ContactLoader$Result;->access$600(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/GroupMetaData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 895
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #groupId:J
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #defaultGroup:Z
    .end local v7           #favorites:Z
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 884
    .restart local v1       #accountName:Ljava/lang/String;
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v3       #groupId:J
    .restart local v5       #title:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto :goto_2

    .line 887
    .restart local v6       #defaultGroup:Z
    :cond_5
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v7, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    move v7, v0

    goto :goto_3

    .line 895
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #groupId:J
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #defaultGroup:Z
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 897
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 12
    .parameter "contactData"

    .prologue
    .line 665
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoId()J

    move-result-wide v7

    .line 666
    .local v7, photoId:J
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-gtz v10, :cond_1

    .line 686
    :cond_0
    return-void

    .line 671
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 672
    .local v2, entity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity$NamedContentValues;

    .line 673
    .local v9, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v9, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 674
    .local v3, entryValues:Landroid/content/ContentValues;
    const-string v10, "_id"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 675
    .local v0, dataId:J
    cmp-long v10, v0, v7

    if-nez v10, :cond_3

    .line 676
    const-string v10, "mimetype"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, mimeType:Ljava/lang/String;
    const-string v10, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 681
    const-string v10, "data15"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/contacts/ContactLoader$Result;->access$200(Lcom/android/contacts/ContactLoader$Result;[B)V

    goto :goto_0
.end method

.method private loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 737
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 741
    const/16 v1, 0xe

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 742
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 743
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 744
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 745
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 746
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 747
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 748
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 749
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 750
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 751
    const/16 v1, 0xc

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 752
    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 753
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 754
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 756
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/ContactLoader$Result;
    .locals 7
    .parameter "args"

    .prologue
    .line 555
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 556
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/contacts/ContactLoader$LoadContactTask;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 557
    .local v3, uriCurrentFormat:Landroid/net/Uri;
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    .line 558
    .local v2, result:Lcom/android/contacts/ContactLoader$Result;
    sget-object v4, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;

    if-eq v2, v4, :cond_1

    .line 559
    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 560
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 564
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V

    :cond_1
    move-object v4, v2

    .line 569
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v3           #uriCurrentFormat:Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 561
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v3       #uriCurrentFormat:Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$100(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 562
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v3           #uriCurrentFormat:Landroid/net/Uri;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 568
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ContactLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading the contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v6}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    sget-object v4, Lcom/android/contacts/ContactLoader$Result;->ERROR:Lcom/android/contacts/ContactLoader$Result;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 901
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$700(Lcom/android/contacts/ContactLoader;)V

    .line 904
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$800(Lcom/android/contacts/ContactLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0, p1}, Lcom/android/contacts/ContactLoader;->access$902(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 910
    sget-object v0, Lcom/android/contacts/ContactLoader$Result;->ERROR:Lcom/android/contacts/ContactLoader$Result;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;

    if-eq p1, v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$002(Lcom/android/contacts/ContactLoader;Landroid/net/Uri;)Landroid/net/Uri;

    .line 913
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 914
    const-string v0, "ContactLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1000(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v0

    if-nez v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    new-instance v1, Landroid/content/Loader$ForceLoadContentObserver;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {v1, v2}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$1002(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$1000(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 922
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 923
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/contacts/ContactLoader$Result;->access$1100(Lcom/android/contacts/ContactLoader$Result;Z)V

    .line 924
    new-instance v0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;-><init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v3}, Lcom/android/contacts/ContactLoader;->access$900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 928
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader;->deliverResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 550
    check-cast p1, Lcom/android/contacts/ContactLoader$Result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->onPostExecute(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method
