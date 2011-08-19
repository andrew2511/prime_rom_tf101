.class public final Lcom/google/android/apps/books/provider/BooksContract$Configuration;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$ConfigurationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# static fields
.field public static final BASE_PATH_KEY:Ljava/lang/String; = "base_path"

.field public static final CONFIGURATION_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.google.android.apps.books.configuration"

.field public static final DELETE_FILES_IF_BASE_PATH_UNCHANGED:Ljava/lang/String; = "deleteFilesIfBasePathUnchanged"

.field public static final RESET_BASE_PATH_VALUE:Ljava/lang/String; = "RESET"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2715
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
