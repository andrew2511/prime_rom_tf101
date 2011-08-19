.class public Lcom/asus/filemanager2/sort/SortAbsolutePath;
.super Ljava/lang/Object;
.source "SortAbsolutePath.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/asus/filemanager/main/VFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/asus/filemanager/main/VFile;Lcom/asus/filemanager/main/VFile;)I
    .locals 4
    .parameter "file1"
    .parameter "file2"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, result:I
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, s1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, s2:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    const/4 v0, -0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    check-cast p1, Lcom/asus/filemanager/main/VFile;

    .end local p1
    check-cast p2, Lcom/asus/filemanager/main/VFile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/asus/filemanager2/sort/SortAbsolutePath;->compare(Lcom/asus/filemanager/main/VFile;Lcom/asus/filemanager/main/VFile;)I

    move-result v0

    return v0
.end method
