.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;
.super Ljava/lang/Object;
.source "MyLibraryContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Columns"
.end annotation


# static fields
.field private static final COUNTRY:I = 0x20

.field private static final CURRENT_PAGE_NUMBER:I = 0x100

.field private static final ENABLE_SMART:I = 0x8

.field private static final ID:I = 0x1

.field private static final ISSUE_DATE:I = 0x400

.field private static final LANGUAGE:I = 0x40

.field private static final PAGES_COUNT:I = 0x4

.field private static final PARENT_NAME:I = 0x10

.field private static final STATE:I = 0x80

.field private static final THUMBNAIL:I = 0x200

.field private static final TITLE:I = 0x2

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "_ID"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "TITLE"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "PAGES_COUNT"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "ENABLE_SMART"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "PARENT_NAME"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "COUNTRY"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "LANGUAGE"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "STATE"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "CURRENT_PAGE_NUMBER"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "THUMBNAIL"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    const-string v1, "ISSUE_DATE"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->getFullProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    return-object v0
.end method

.method private static getFullProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryContentProvider$Columns;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
