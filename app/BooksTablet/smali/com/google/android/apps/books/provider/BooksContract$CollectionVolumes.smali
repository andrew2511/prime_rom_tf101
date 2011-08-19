.class public final Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumeColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionVolumes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes$DirtyState;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.google.android.apps.books.account.collection.volume"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final PATH_LIBRARY:Ljava/lang/String; = "library"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2442
    const-string v0, "content://com.google.android.apps.books/accounts/collections/volumes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    return-void
.end method

.method public static dirUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "collectionId"

    .prologue
    .line 2471
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->itemUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 2529
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionId(Landroid/net/Uri;)J
    .locals 2
    .parameter "uri"

    .prologue
    .line 2536
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getCollectionId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVolumeId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x5

    .line 2543
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2545
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Not enough segments"

    invoke-static {v3, v1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 2546
    const-string v1, "accounts"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v2, "Not an accounts path"

    invoke-static {v1, p0, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2547
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "Missing account name"

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2548
    const-string v1, "collections"

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "Not a collections path"

    invoke-static {v1, p0, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2550
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "Missing collection_id"

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2551
    const-string v1, "volumes"

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "Not an collections/volumes path"

    invoke-static {v1, p0, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2552
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "Missing volume_id"

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2554
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"

    .prologue
    .line 2521
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static libraryDirUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2512
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->dirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "library"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 2496
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static myEBooksDirUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "account"

    .prologue
    .line 2492
    const-wide/16 v0, 0x7

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static searchUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accountName"
    .parameter "query"

    .prologue
    .line 2480
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    const-string v1, "Valid query required"

    invoke-static {p1, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2482
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->libraryDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2483
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2484
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
