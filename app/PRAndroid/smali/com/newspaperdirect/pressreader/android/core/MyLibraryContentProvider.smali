.class public Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;
.super Landroid/content/ContentProvider;
.source "MyLibraryContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;
    }
.end annotation


# static fields
.field private static final ACTIVATIONS:I = 0x4

.field public static final ACTIVATIONS_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.activations"

.field private static final AUTHORITY:Ljava/lang/String; = "com.newspaperdirect.pressreader.android.mylibraryprovider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final ISSUES:I = 0x0

.field public static final ISSUES_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.issues"

.field public static final ISSUES_URI:Landroid/net/Uri; = null

.field private static final ISSUE_ID:I = 0x1

.field public static final ISSUE_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.newspaperdirect.issues"

.field private static final ISSUE_THUMBNAIL:I = 0x3

.field public static final ISSUE_THUMBNAIL_URI:Landroid/net/Uri; = null

.field private static final PURCHASE_ADVICES:I = 0x2

.field public static final PURCHASE_ADVICES_URI:Landroid/net/Uri;

.field public static final SERVICES_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://com.newspaperdirect.pressreader.android.mylibraryprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://com.newspaperdirect.pressreader.android.mylibraryprovider/issues"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.newspaperdirect.pressreader.android.mylibraryprovider/purchaseadvices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->PURCHASE_ADVICES_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.newspaperdirect.pressreader.android.mylibraryprovider/issues/thumbnails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUE_THUMBNAIL_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://com.newspaperdirect.pressreader.android.mylibraryprovider/activations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->SERVICES_URI:Landroid/net/Uri;

    .line 77
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 85
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.newspaperdirect.pressreader.android.mylibraryprovider"

    const-string v2, "issues"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    const-string v1, "com.newspaperdirect.pressreader.android.mylibraryprovider"

    const-string v2, "issues/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    const-string v1, "com.newspaperdirect.pressreader.android.mylibraryprovider"

    const-string v2, "purchaseadvices"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    const-string v1, "com.newspaperdirect.pressreader.android.mylibraryprovider"

    const-string v2, "issues/thumbnails/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    const-string v1, "com.newspaperdirect.pressreader.android.mylibraryprovider"

    const-string v2, "activations"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-object v0
.end method

.method private checkDeviceAuthorization()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServicesCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized deleteIssue(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->delete()V

    .line 328
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized deleteIssues()I
    .locals 8

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v2

    .line 317
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 318
    .local v0, count:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 319
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 323
    monitor-exit p0

    return v0

    .line 319
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 320
    .local v1, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->delete()V

    .line 321
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    .end local v0           #count:I
    .end local v1           #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getActivations()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_ID"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "USER_NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "SERVICE_NAME"

    aput-object v5, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 242
    .local v0, result:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServices()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 249
    monitor-exit p0

    return-object v0

    .line 242
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 243
    .local v2, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    .end local v0           #result:Landroid/database/MatrixCursor;
    .end local v1           #row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getIssue([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 2
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 214
    if-nez p1, :cond_0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->access$0()[Ljava/lang/String;

    move-result-object p1

    .line 215
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 216
    .local v0, result:Landroid/database/MatrixCursor;
    invoke-static {p2, p3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getIssueRow([Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 217
    return-object v0
.end method

.method private getIssueRow([Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/List;
    .locals 7
    .parameter "projection"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    array-length v2, p1

    const/4 v3, 0x0

    .end local p0
    :goto_0
    if-lt v3, v2, :cond_0

    .line 237
    return-object v1

    .line 222
    :cond_0
    aget-object v0, p1, v3

    .line 223
    .local v0, column:Ljava/lang/String;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->access$1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 222
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :sswitch_0
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :sswitch_1
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :sswitch_2
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :sswitch_3
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :sswitch_4
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getParentName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :sswitch_5
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :sswitch_6
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :sswitch_7
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :sswitch_8
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrentPageNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :sswitch_9
    sget-object v4, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUE_THUMBNAIL_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :sswitch_a
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDateString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
    .end sparse-switch
.end method

.method private getIssues([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "projection"

    .prologue
    .line 205
    if-nez p1, :cond_0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->access$0()[Ljava/lang/String;

    move-result-object p1

    .line 206
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 208
    .local v2, result:Landroid/database/MatrixCursor;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    return-object v2

    .line 208
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 209
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-direct {p0, p1, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getIssueRow([Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, count:I
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 137
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 148
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :pswitch_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->deleteIssues()I

    move-result v0

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.newspaperdirect.pressreader.android.MY_LIBRARY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    return v0

    .line 142
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid uri format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->deleteIssue(J)V

    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 157
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.newspaperdirect.issues"

    .line 161
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.newspaperdirect.issues"

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 100
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v2, v4

    .line 195
    :goto_0
    return-object v2

    .line 193
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    .line 194
    .local v1, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasThumbnail()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getThumbnailFile()Ljava/io/File;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->checkDeviceAuthorization()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 127
    :goto_0
    return-object v3

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, id:Ljava/lang/String;
    const/4 v1, 0x0

    .line 114
    .local v1, result:Landroid/database/Cursor;
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 115
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 129
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getIssues([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    move-object v3, v1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    if-nez v0, :cond_2

    .line 122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid uri format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getIssue([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    move-object v3, v4

    .line 125
    goto :goto_0

    .line 127
    :pswitch_4
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getActivations()Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x0

    .line 177
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    .line 186
    :goto_0
    return v3

    .line 179
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->syncItemsList(Ljava/util/List;Ljava/util/List;)Z

    .line 182
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.newspaperdirect.pressreader.android.MY_LIBRARY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 184
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;->ISSUES_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method
