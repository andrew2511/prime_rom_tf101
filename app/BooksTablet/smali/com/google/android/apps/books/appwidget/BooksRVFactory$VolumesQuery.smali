.class interface abstract Lcom/google/android/apps/books/appwidget/BooksRVFactory$VolumesQuery;
.super Ljava/lang/Object;
.source "BooksAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/appwidget/BooksRVFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VolumesQuery"
.end annotation


# static fields
.field public static final BUY_URL:I = 0x3

.field public static final COVER_CONTENT_STATUS:I = 0x0

.field public static final OPEN_ACCESS:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final VIEWABILITY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cover_content_status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "viewability"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "open_access"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
