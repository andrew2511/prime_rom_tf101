.class final Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByTitleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)I
    .locals 3
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 731
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 732
    .local v0, result:I
    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    .line 733
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    check-cast p2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;->compare(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)I

    move-result v0

    return v0
.end method
