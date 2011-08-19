.class public Lcom/asus/filemanager/sort/SortSize;
.super Ljava/lang/Object;
.source "SortSize.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mAscending:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "asc"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/asus/filemanager/sort/SortSize;->mAscending:Z

    .line 12
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, r:I
    iget-boolean v1, p0, Lcom/asus/filemanager/sort/SortSize;->mAscending:Z

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 20
    :goto_0
    return v0

    .line 19
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/asus/filemanager/sort/SortSize;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
