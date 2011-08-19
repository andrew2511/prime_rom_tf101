.class public Lcom/google/android/syncadapters/contacts/GalProvider;
.super Landroid/content/ContentProvider;
.source "GalProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;
    }
.end annotation


# static fields
.field private static final sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

.field private mThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 92
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    .line 107
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 175
    return-void
.end method

.method private addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "row"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method private buildGalResultCursor([Ljava/lang/String;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    const/4 v4, -0x1

    .line 710
    const/4 v5, -0x1

    .line 711
    const/4 v6, -0x1

    .line 712
    const/4 v7, -0x1

    .line 713
    const/4 v8, -0x1

    .line 714
    const/4 v9, -0x1

    .line 715
    const/4 v10, -0x1

    .line 716
    const/4 v11, -0x1

    .line 718
    const/4 v12, 0x0

    move/from16 v19, v12

    move v12, v4

    move/from16 v4, v19

    move/from16 v20, v10

    move v10, v6

    move/from16 v6, v20

    move/from16 v21, v7

    move v7, v9

    move/from16 v9, v21

    move/from16 v22, v5

    move v5, v11

    move/from16 v11, v22

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0

    if-ge v4, v13, :cond_9

    .line 719
    aget-object v13, p1, v4

    .line 720
    const-string v14, "display_name"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "display_name"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    move v12, v4

    .line 718
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 723
    :cond_2
    const-string v14, "display_name_alt"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move v11, v4

    .line 724
    goto :goto_1

    .line 725
    :cond_3
    const-string v14, "data1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v10, v4

    .line 726
    goto :goto_1

    .line 727
    :cond_4
    const-string v14, "has_phone_number"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v9, v4

    .line 728
    goto :goto_1

    .line 729
    :cond_5
    const-string v14, "photo_uri"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v8, v4

    .line 730
    goto :goto_1

    .line 731
    :cond_6
    const-string v14, "photo_thumb_uri"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move v7, v4

    .line 732
    goto :goto_1

    .line 733
    :cond_7
    const-string v14, "_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v6, v4

    .line 734
    goto :goto_1

    .line 735
    :cond_8
    const-string v14, "lookup"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v5, v4

    .line 736
    goto :goto_1

    .line 743
    :cond_9
    new-instance v13, Landroid/database/MatrixCursor;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 745
    const/4 v4, 0x1

    .line 747
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    move v14, v4

    .line 748
    :cond_a
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 749
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 751
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getId()Ljava/lang/String;

    move-result-object v15

    .line 752
    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 753
    if-ltz v16, :cond_a

    .line 757
    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 759
    invoke-static {v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;

    move-result-object v16

    .line 761
    if-eqz v16, :cond_a

    .line 766
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 767
    if-ltz v12, :cond_b

    .line 768
    aput-object v16, v17, v12

    .line 771
    :cond_b
    const/16 v18, -0x1

    move v0, v11

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 772
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 773
    aput-object v16, v17, v11

    .line 776
    :cond_c
    if-ltz v9, :cond_d

    .line 777
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v16

    .line 778
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    if-lez v16, :cond_d

    .line 779
    const/16 v16, -0x1

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    .line 780
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v17, v9

    .line 785
    :cond_d
    if-ltz v8, :cond_e

    .line 786
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v4

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v17, v8

    .line 789
    :cond_e
    if-ltz v7, :cond_f

    .line 790
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v4

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v17, v7

    .line 793
    :cond_f
    const/16 v16, -0x1

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    .line 794
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v17, v6

    .line 797
    :cond_10
    const/16 v16, -0x1

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_11

    .line 798
    aput-object v15, v17, v5

    .line 804
    :cond_11
    if-eqz p4, :cond_13

    .line 807
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v4

    .line 808
    if-eqz v4, :cond_16

    .line 809
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 810
    if-ltz v10, :cond_12

    .line 811
    check-cast v4, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v17, v10

    .line 813
    :cond_12
    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 814
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_3

    .line 819
    :cond_13
    if-ltz v10, :cond_14

    .line 820
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v4

    .line 821
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_14

    .line 822
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 823
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v17, v10

    .line 826
    :cond_14
    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 827
    add-int/lit8 v4, v14, 0x1

    :goto_4
    move v14, v4

    .line 829
    goto/16 :goto_2

    .line 830
    :catch_0
    move-exception v4

    .line 831
    const-string v5, "GalProvider"

    const-string v6, "Exception when parsing feed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    :cond_15
    :goto_5
    return-object v13

    .line 832
    :catch_1
    move-exception v4

    .line 833
    const-string v5, "GalProvider"

    const-string v6, "Exception when parsing feed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_16
    move v4, v14

    goto :goto_4
.end method

.method private createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter "values"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ContentValues;",
            "J)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 561
    const/4 v5, 0x0

    .line 571
    :goto_0
    return-object v5

    .line 563
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Object;

    .line 564
    .local v3, row:[Ljava/lang/Object;
    const-string v5, "contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v3, p1, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    const-string v5, "raw_contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v3, p1, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 567
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    .local v0, columnName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 569
    .local v4, value:Ljava/lang/Object;
    invoke-direct {p0, v3, p1, v0, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v0           #columnName:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #value:Ljava/lang/Object;
    :cond_1
    move-object v5, v3

    .line 571
    goto :goto_0
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7
    .parameter "accountName"

    .prologue
    .line 697
    iget-object v5, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 699
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 700
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 704
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return-object v5

    .line 699
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v1

    .line 895
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    .line 897
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    :cond_0
    :goto_0
    return-object v0

    .line 900
    :cond_1
    if-nez v0, :cond_0

    :cond_2
    move-object v0, p1

    .line 904
    goto :goto_0
.end method

.method private static getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 849
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_4

    .line 851
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 852
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 887
    :cond_0
    :goto_0
    return-object v0

    .line 856
    :cond_1
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    .line 859
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 863
    goto :goto_0

    .line 865
    :cond_3
    if-nez v0, :cond_0

    .line 871
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 873
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 874
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 875
    if-nez v0, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 882
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 884
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .line 885
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .locals 16
    .parameter "accountName"
    .parameter "lookup"

    .prologue
    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 650
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 651
    .local v9, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    .line 652
    :cond_0
    const-string v12, "GalProvider"

    const-string v13, "getEntry(): Not connected"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v12, 0x0

    .line 691
    .end local p0
    :goto_0
    return-object v12

    .line 656
    .restart local p0
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 657
    .local v2, account:Landroid/accounts/Account;
    if-nez v2, :cond_2

    .line 658
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v12, 0x0

    goto :goto_0

    .line 662
    :cond_2
    new-instance v3, Lcom/google/android/syncadapters/contacts/AuthInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v12, v0

    const-string v13, "cp"

    invoke-direct {v3, v12, v2, v13}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 664
    .local v3, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    const/16 v12, 0x40

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 665
    .local v10, p:I
    if-gez v10, :cond_3

    .line 666
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid account name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v12, 0x0

    goto :goto_0

    .line 670
    :cond_3
    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 671
    .local v7, domain:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://www.google.com/m8/feeds/gal/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/full/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 672
    .local v11, url:Ljava/lang/String;
    const-string v12, "GalProvider"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 673
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getEntry("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): GData URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 677
    .local v4, callingId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v13, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getEntryClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v13

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v14

    const/4 v15, 0x0

    :try_start_4
    invoke-virtual {v12, v13, v11, v14, v15}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object p0

    .end local p0
    :try_start_5
    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_7

    .line 689
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v12, p0

    .line 677
    goto/16 :goto_0

    .line 682
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 683
    .local v8, e:Ljava/io/IOException;
    :try_start_6
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 689
    .end local v8           #e:Ljava/io/IOException;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 684
    :catch_1
    move-exception v12

    move-object v8, v12

    .line 685
    .local v8, e:Lcom/google/wireless/gdata2/GDataException;
    :try_start_7
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 689
    .end local v8           #e:Lcom/google/wireless/gdata2/GDataException;
    :catchall_0
    move-exception v12

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 686
    .restart local p0
    :catch_2
    move-exception v12

    goto :goto_1

    :catch_3
    move-exception v12

    goto :goto_1

    :catch_4
    move-exception v12

    goto :goto_1

    :catch_5
    move-exception v12

    goto :goto_1

    :catch_6
    move-exception v12

    goto :goto_1

    .end local p0
    :catch_7
    move-exception v12

    goto :goto_1
.end method

.method private getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 16
    .parameter "accountName"
    .parameter "query"
    .parameter "projection"

    .prologue
    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 596
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 597
    .local v9, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    .line 598
    :cond_0
    const-string v12, "GalProvider"

    const-string v13, "getFeed(): Not connected"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v12, 0x0

    .line 644
    :goto_0
    return-object v12

    .line 602
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 603
    .local v2, account:Landroid/accounts/Account;
    if-nez v2, :cond_2

    .line 604
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v12, 0x0

    goto :goto_0

    .line 608
    :cond_2
    new-instance v3, Lcom/google/android/syncadapters/contacts/AuthInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v12, v0

    const-string v13, "cp"

    invoke-direct {v3, v12, v2, v13}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 610
    .local v3, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    const/16 v12, 0x40

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 611
    .local v10, p:I
    if-gez v10, :cond_3

    .line 612
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid account name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v12, 0x0

    goto :goto_0

    .line 616
    :cond_3
    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 617
    .local v7, domain:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://www.google.com/m8/feeds/gal/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 618
    .local v11, url:Ljava/lang/String;
    const-string v12, "GalProvider"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 619
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFeed("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): GData URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 623
    .local v4, callingId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v13, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getEntryClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v13

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v14

    const/4 v15, 0x0

    :try_start_4
    invoke-virtual {v12, v13, v11, v14, v15}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v12

    .line 642
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 628
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 629
    .local v8, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :try_start_5
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ForbiddenException when getting feed. Probably a non Gmail consumer account."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/wireless/gdata2/client/ForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v12, 0x0

    goto :goto_1

    .line 633
    .end local v8           #e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :catch_1
    move-exception v12

    move-object v8, v12

    .line 634
    .local v8, e:Ljava/io/IOException;
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 642
    .end local v8           #e:Ljava/io/IOException;
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 635
    :catch_2
    move-exception v12

    move-object v8, v12

    .line 636
    .local v8, e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :try_start_6
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 642
    .end local v8           #e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :catchall_0
    move-exception v12

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 637
    :catch_3
    move-exception v12

    move-object v8, v12

    .line 638
    .local v8, e:Lcom/google/wireless/gdata2/GDataException;
    :try_start_7
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 639
    .end local v8           #e:Lcom/google/wireless/gdata2/GDataException;
    :catch_4
    move-exception v12

    goto :goto_2

    :catch_5
    move-exception v12

    goto :goto_2

    :catch_6
    move-exception v12

    goto :goto_2

    :catch_7
    move-exception v12

    goto :goto_2

    :catch_8
    move-exception v12

    goto :goto_2
.end method

.method private getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_2

    .line 910
    if-eqz p3, :cond_0

    .line 911
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.google.contacts.gal.provider"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    const-string v1, "GalProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    const-string v1, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding photo uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mThumbnailSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    return-object v0
.end method

.method private handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 25
    .parameter "projection"
    .parameter "accountName"
    .parameter "lookupKey"
    .parameter "contactId"

    .prologue
    .line 373
    const-string v22, "GalProvider"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 374
    const-string v22, "GalProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleContact("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    if-nez p2, :cond_1

    .line 378
    const-string v22, "GalProvider"

    const-string v23, "Account name cannot be null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v22, Landroid/database/MatrixCursor;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 548
    :goto_0
    return-object v22

    .line 381
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move-result-object v9

    .line 382
    .local v9, entry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    if-nez v9, :cond_2

    .line 383
    const-string v22, "GalProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t find entry: accountName: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " lookupKey: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v22, Landroid/database/MatrixCursor;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 390
    .local v6, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 391
    aget-object v22, p1, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 394
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 395
    .local v19, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 396
    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 400
    :cond_4
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getContent()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 401
    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 405
    :cond_5
    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 408
    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 411
    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 415
    .local v15, object:Ljava/lang/Object;
    check-cast v15, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .end local v15           #object:Ljava/lang/Object;
    invoke-static {v15}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2

    .line 420
    :cond_6
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 421
    .local v14, o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_3

    .line 426
    :cond_7
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 427
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_4

    .line 432
    :cond_8
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 433
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/Organization;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_5

    .line 437
    :cond_9
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 438
    .restart local v14       #o:Ljava/lang/Object;
    move-object v0, v14

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    move-object v11, v0

    .line 439
    .local v11, group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    invoke-virtual {v11}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v22

    if-nez v22, :cond_a

    .line 443
    invoke-static {v11}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_6

    .line 447
    .end local v11           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v14           #o:Ljava/lang/Object;
    :cond_b
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 448
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Ljava/lang/String;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_7

    .line 452
    :cond_c
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 453
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_8

    .line 457
    :cond_d
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 458
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/Language;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_9

    .line 463
    :cond_e
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 464
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_a

    .line 469
    :cond_f
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 470
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_b

    .line 474
    :cond_10
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 475
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/Jot;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_c

    .line 479
    :cond_11
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 480
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_d

    .line 485
    :cond_12
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 486
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_e

    .line 491
    :cond_13
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 492
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/Relation;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_f

    .line 497
    :cond_14
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 498
    .restart local v14       #o:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/Event;

    .end local v14           #o:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;

    move-result-object v22

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v22

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_10

    .line 502
    :cond_15
    invoke-virtual {v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 503
    .restart local v14       #o:Ljava/lang/Object;
    move-object v0, v14

    check-cast v0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    move-object/from16 v17, v0

    .line 504
    .local v17, property:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    const-string v22, "android"

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 505
    invoke-static/range {v17 .. v17}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    .line 506
    .local v21, v:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_11

    .line 512
    .end local v14           #o:Ljava/lang/Object;
    .end local v17           #property:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    .end local v21           #v:Landroid/content/ContentValues;
    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_1b

    .line 513
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 514
    .local v10, first:[Ljava/lang/Object;
    const-string v22, "contact_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/GalProvider;->getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;

    move-result-object v8

    .line 517
    .local v8, displayName:Ljava/lang/String;
    invoke-static {v9, v8}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, alternateDisplayName:Ljava/lang/String;
    const-string v22, "raw_contact_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v22, "display_name"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    const-string v22, "display_name_alt"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    const-string v22, "account_type"

    const-string v23, "com.google"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    const-string v22, "account_name"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    const-string v22, "raw_contact_is_read_only"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    const-string v22, "is_read_only"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v9

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v16

    .line 530
    .local v16, photoUrl:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 531
    const-string v22, "photo_uri"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    const-string v22, "photo_thumb_uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    :cond_18
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 538
    .local v7, cursor:Landroid/database/MatrixCursor;
    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, rowsSize:I
    :goto_12
    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    .line 539
    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    .line 540
    .local v18, row:[Ljava/lang/Object;
    if-nez v18, :cond_19

    .line 538
    :goto_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 543
    :cond_19
    const-string v22, "data_id"

    add-int/lit8 v23, v12, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .end local v18           #row:[Ljava/lang/Object;
    :cond_1a
    move-object/from16 v22, v7

    .line 546
    goto/16 :goto_0

    .line 548
    .end local v5           #alternateDisplayName:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/MatrixCursor;
    .end local v8           #displayName:Ljava/lang/String;
    .end local v10           #first:[Ljava/lang/Object;
    .end local v16           #photoUrl:Ljava/lang/String;
    .end local v20           #rowsSize:I
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method private handleDirectories([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter "projection"

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v14, v0

    const-string v15, "com.google"

    invoke-virtual {v14, v15}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 276
    .local v3, accounts:[Landroid/accounts/Account;
    new-instance v7, Landroid/database/MatrixCursor;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 277
    .local v7, cursor:Landroid/database/MatrixCursor;
    if-eqz v3, :cond_b

    .line 278
    move-object v4, v3

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_b

    aget-object v2, v4, v10

    .line 279
    .local v2, account:Landroid/accounts/Account;
    const-string v14, "GalProvider"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 280
    const-string v14, "GalProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleDirectories: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v12, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 284
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->mayHaveGalSupport(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 278
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 287
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    new-array v13, v14, [Ljava/lang/Object;

    .line 289
    .local v13, row:[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-ge v9, v14, :cond_a

    .line 290
    aget-object v6, p1, v9

    .line 291
    .local v6, column:Ljava/lang/String;
    const-string v14, "accountName"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 292
    aput-object v12, v13, v9

    .line 289
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 293
    :cond_3
    const-string v14, "accountType"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 294
    iget-object v14, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v14, v13, v9

    goto :goto_3

    .line 295
    :cond_4
    const-string v14, "typeResourceId"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 296
    const v14, 0x7f050001

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    goto :goto_3

    .line 297
    :cond_5
    const-string v14, "displayName"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 300
    const/16 v14, 0x40

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 301
    .local v5, atIndex:I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v5, v14, :cond_6

    .line 302
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    .line 304
    .local v8, firstLetter:C
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v5, 0x2

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    goto :goto_3

    .line 306
    .end local v8           #firstLetter:C
    :cond_6
    aput-object v12, v13, v9

    goto :goto_3

    .line 308
    .end local v5           #atIndex:I
    :cond_7
    const-string v14, "exportSupport"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 309
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    goto :goto_3

    .line 310
    :cond_8
    const-string v14, "shortcutSupport"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 311
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    goto/16 :goto_3

    .line 312
    :cond_9
    const-string v14, "photoSupport"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 313
    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    goto/16 :goto_3

    .line 316
    .end local v6           #column:Ljava/lang/String;
    :cond_a
    invoke-virtual {v7, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 319
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #row:[Ljava/lang/Object;
    :cond_b
    return-object v7
.end method

.method private handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;
    .locals 9
    .parameter "projection"
    .parameter "accountName"
    .parameter "filter"
    .parameter "maxResults"
    .parameter "emailFilter"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 328
    const-string v4, "GalProvider"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFilter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_2

    :cond_1
    move-object v4, v8

    .line 365
    :goto_0
    return-object v4

    .line 337
    :cond_2
    if-nez p2, :cond_3

    .line 338
    const-string v4, "GalProvider"

    const-string v5, "Account name cannot be null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 339
    goto :goto_0

    .line 343
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v3, query:Ljava/lang/StringBuilder;
    const-string v4, "?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v4, "&max-results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    if-eqz p5, :cond_4

    .line 348
    const-string v2, "/autocomplete/"

    .line 353
    .local v2, projectionPath:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v1

    .line 354
    .local v1, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    if-nez v1, :cond_5

    move-object v4, v8

    .line 355
    goto :goto_0

    .line 350
    .end local v1           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v2           #projectionPath:Ljava/lang/String;
    :cond_4
    const-string v2, "/autocompletepic/"

    .line 351
    .restart local v2       #projectionPath:Ljava/lang/String;
    const-string v4, "&group=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 359
    .restart local v1       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :cond_5
    :try_start_0
    invoke-direct {p0, p1, v1, p2, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 361
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "GalProvider"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 362
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFilter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_6
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    move-object v4, v0

    .line 365
    goto/16 :goto_0

    .line 367
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    throw v4
.end method

.method private mayHaveGalSupport(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 589
    const-string v0, "@gmail.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@googlemail.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "row"
    .parameter
    .parameter "columnName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    .local p2, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p4, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 583
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p4, p1, v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 249
    sget-object v1, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 250
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 254
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 252
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    .line 118
    new-instance v1, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    new-instance v2, Lcom/google/android/common/gdata2/AndroidGDataClient;

    const-string v3, "Android-GData-Contacts/1.3"

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/common/gdata2/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;

    new-instance v4, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v4}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mThumbnailSize:I

    .line 124
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 213
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode must be \"r\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, accountName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 219
    .local v10, photoUrl:Ljava/lang/String;
    const-string v0, "GalProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    invoke-direct {p0, v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    .line 223
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_2

    .line 224
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 244
    :goto_0
    return-object v0

    .line 228
    :cond_2
    new-instance v8, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "cp"

    invoke-direct {v8, v0, v6, v1}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 230
    .local v8, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 232
    .local v4, inputStream:Ljava/io/InputStream;
    new-instance v11, Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;

    invoke-direct {v5, v7, v10}, Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v11

    goto :goto_0

    .line 235
    .end local v4           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 236
    .local v9, e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :goto_1
    move-object v0, v12

    .line 244
    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 238
    .local v9, e:Ljava/io/IOException;
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 239
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v9, v0

    .line 240
    .local v9, e:Lcom/google/wireless/gdata2/GDataException;
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 241
    .end local v9           #e:Lcom/google/wireless/gdata2/GDataException;
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 130
    const-string v2, "GalProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "GalProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-object v2, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 135
    .local v15, match:I
    packed-switch v15, :pswitch_data_0

    .line 172
    const/4 v2, 0x0

    .end local p1
    :goto_0
    return-object v2

    .line 137
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleDirectories([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 142
    :pswitch_1
    const-string v2, "account_name"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, accountName:Ljava/lang/String;
    const-string v2, "limit"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, limit:Ljava/lang/String;
    if-eqz v14, :cond_1

    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v6, v2

    .line 151
    .local v6, maxResults:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, filter:Ljava/lang/String;
    const/4 v2, 0x4

    if-ne v15, v2, :cond_2

    const/4 v2, 0x1

    move v7, v2

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 146
    .end local v5           #filter:Ljava/lang/String;
    .end local v6           #maxResults:I
    :cond_1
    const/16 v2, 0x14

    move v6, v2

    goto :goto_1

    .line 147
    :catch_0
    move-exception v13

    .line 148
    .local v13, e:Ljava/lang/NumberFormatException;
    const-string v2, "GalProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query: invalid limit parameter: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/16 v6, 0x14

    .restart local v6       #maxResults:I
    goto :goto_1

    .line 153
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #filter:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move v7, v2

    goto :goto_2

    .line 158
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #filter:Ljava/lang/String;
    .end local v6           #maxResults:I
    .end local v14           #limit:Ljava/lang/String;
    :pswitch_2
    const-string v2, "account_name"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .restart local v4       #accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 161
    .local v10, lookupKey:Ljava/lang/String;
    const-wide/16 v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v9, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 164
    .end local v4           #accountName:Ljava/lang/String;
    .end local v10           #lookupKey:Ljava/lang/String;
    :pswitch_3
    const-string v2, "account_name"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .restart local v4       #accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 166
    .restart local v10       #lookupKey:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .local v11, contactId:J
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v9, v4

    .line 168
    invoke-direct/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
