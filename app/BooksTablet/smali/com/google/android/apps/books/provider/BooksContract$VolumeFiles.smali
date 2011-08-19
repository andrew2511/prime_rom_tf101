.class public final Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VolumeFiles"
.end annotation


# static fields
.field public static final FILES_URI:Landroid/net/Uri; = null

.field public static final PATH_FILES:Ljava/lang/String; = "files"

.field public static final PATH_PAGES:Ljava/lang/String; = "pages"

.field public static final PATH_RES:Ljava/lang/String; = "res"

.field public static final PATH_SECTIONS:Ljava/lang/String; = "sections"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2655
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->FILES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClearContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 2664
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->FILES_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "files"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
