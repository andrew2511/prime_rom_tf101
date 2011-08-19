.class public Lcom/asus/filemanager/sort/SortExtName;
.super Ljava/lang/Object;
.source "SortExtName.java"

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
    iput-boolean p1, p0, Lcom/asus/filemanager/sort/SortExtName;->mAscending:Z

    .line 12
    return-void
.end method


# virtual methods
.method public GetExtName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "f"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, p:I
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 36
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 38
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, r:I
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, s1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, s2:Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/asus/filemanager/sort/SortExtName;->GetExtName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p0, v2, p2}, Lcom/asus/filemanager/sort/SortExtName;->GetExtName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 23
    iget-boolean v3, p0, Lcom/asus/filemanager/sort/SortExtName;->mAscending:Z

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

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
    invoke-virtual {p0, p1, p2}, Lcom/asus/filemanager/sort/SortExtName;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
