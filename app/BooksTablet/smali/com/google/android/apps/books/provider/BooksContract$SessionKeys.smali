.class public final Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$BaseVolumeColumns;
.implements Lcom/google/android/apps/books/provider/BooksContract$SessionKeyJoinColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionKeys"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.google.android.apps.books.session_key"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.google.android.apps.books.session_key"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_ORDER_BY:Ljava/lang/String; = "session_key_version DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2624
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "session_keys"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2630
    return-void
.end method

.method public static buildSessionKeyUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 2633
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionKeyId(Landroid/net/Uri;)J
    .locals 2
    .parameter "uri"

    .prologue
    .line 2637
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
