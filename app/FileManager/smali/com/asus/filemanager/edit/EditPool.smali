.class public Lcom/asus/filemanager/edit/EditPool;
.super Ljava/lang/Object;
.source "EditPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5fe7df04669e4c9bL


# instance fields
.field private mExtraBoolean:Z

.field private mPool:[Lcom/asus/filemanager/main/VFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/filemanager/edit/EditPool;->mExtraBoolean:Z

    .line 16
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    .line 58
    return-void
.end method

.method public GetExtraBoolean()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/asus/filemanager/edit/EditPool;->mExtraBoolean:Z

    return v0
.end method

.method public GetFiles()[Lcom/asus/filemanager/main/VFile;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    return-object v0
.end method

.method public GetSize()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    array-length v0, v0

    goto :goto_0
.end method

.method public SetExtraBoolean(Z)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/asus/filemanager/edit/EditPool;->mExtraBoolean:Z

    .line 66
    return-void
.end method

.method public SetFiles([Lcom/asus/filemanager/main/VFile;Z)I
    .locals 4
    .parameter "source"
    .parameter "isNeedCheck"

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/filemanager/main/VFile;>;"
    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 53
    :goto_0
    return v2

    .line 46
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 47
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/asus/filemanager/main/VFile;->GetChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    :cond_1
    new-instance v2, Lcom/asus/filemanager/main/VFile;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/asus/filemanager/main/VFile;

    iput-object v2, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    .line 51
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 52
    iget-object v3, p0, Lcom/asus/filemanager/edit/EditPool;->mPool:[Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/filemanager/main/VFile;

    aput-object v2, v3, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method
