.class interface abstract Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeQuery;
.super Ljava/lang/Object;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SearchWithinVolumeQuery"
.end annotation


# static fields
.field public static final PAGE_ID:I = 0x1

.field public static final PAGE_NUMBER:I = 0x2

.field public static final PAGE_URL:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SNIPPET_TEXT:I = 0x3

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2602
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "page_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "snippet_text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "page_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
