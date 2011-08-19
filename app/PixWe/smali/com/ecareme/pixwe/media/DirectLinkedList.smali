.class public final Lcom/ecareme/pixwe/media/DirectLinkedList;
.super Ljava/lang/Object;
.source "DirectLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mTail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    .local p1, entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mTail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 49
    .local v0, tail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<TE;>;"
    if-eqz v0, :cond_0

    .line 50
    iput-object p1, v0, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 51
    iput-object v0, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->previous:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 55
    :goto_0
    iput-object p1, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mTail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->inserted:Z

    .line 57
    iget v1, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    .line 58
    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mHead:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mHead:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 93
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mTail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    .line 95
    return-void
.end method

.method public getHead()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mHead:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    return-object v0
.end method

.method public getTail()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mTail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;)",
            "Lcom/ecareme/pixwe/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    .local p1, entry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<TE;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 62
    iget-object v1, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->previous:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 63
    .local v1, previous:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<TE;>;"
    iget-object v0, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 64
    .local v0, next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<TE;>;"
    if-eqz v0, :cond_1

    .line 65
    iput-object v1, v0, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->previous:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 66
    iput-object v2, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 70
    :goto_0
    if-eqz v1, :cond_2

    .line 71
    iput-object v0, v1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 72
    iput-object v2, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->previous:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    .line 76
    :goto_1
    iput-boolean v4, p1, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->inserted:Z

    .line 77
    iget v2, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    .line 78
    iget v2, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    if-gez v2, :cond_0

    .line 79
    iput v4, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    .line 80
    :cond_0
    return-object v0

    .line 68
    :cond_1
    iput-object v1, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mTail:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    goto :goto_0

    .line 74
    :cond_2
    iput-object v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mHead:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lcom/ecareme/pixwe/media/DirectLinkedList;,"Lcom/ecareme/pixwe/media/DirectLinkedList<TE;>;"
    iget v0, p0, Lcom/ecareme/pixwe/media/DirectLinkedList;->mSize:I

    return v0
.end method
