.class Lcom/android/calculator2/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/calculator2/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/widget/BaseAdapter;

.field mPos:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    .line 34
    invoke-virtual {p0}, Lcom/android/calculator2/History;->clear()V

    .line 35
    return-void
.end method

.method constructor <init>(ILjava/io/DataInput;)V
    .locals 5
    .parameter "version"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    .line 38
    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    .line 39
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 40
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/android/calculator2/HistoryEntry;

    invoke-direct {v3, p1, p2}, Lcom/android/calculator2/HistoryEntry;-><init>(ILjava/io/DataInput;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/calculator2/History;->mPos:I

    .line 47
    return-void

    .line 45
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private notifyChanged()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calculator2/History;->mObserver:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/calculator2/History;->mObserver:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 61
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/android/calculator2/HistoryEntry;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    .line 63
    invoke-direct {p0}, Lcom/android/calculator2/History;->notifyChanged()V

    .line 64
    return-void
.end method

.method current()Lcom/android/calculator2/HistoryEntry;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    iget v1, p0, Lcom/android/calculator2/History;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calculator2/HistoryEntry;

    return-object p0
.end method

.method enter(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryEntry;->clearEdited()V

    .line 96
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/HistoryEntry;

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/android/calculator2/HistoryEntry;

    invoke-direct {v1, p1}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    .line 104
    invoke-direct {p0}, Lcom/android/calculator2/History;->notifyChanged()V

    .line 105
    return-void
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method moveToNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    iget-object v1, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    move v0, v2

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveToPrevious()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    if-lez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    move v0, v1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setObserver(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/calculator2/History;->mObserver:Landroid/widget/BaseAdapter;

    .line 51
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calculator2/HistoryEntry;->setEdited(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 68
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/HistoryEntry;

    .line 69
    .local v0, entry:Lcom/android/calculator2/HistoryEntry;
    invoke-virtual {v0, p1}, Lcom/android/calculator2/HistoryEntry;->write(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 71
    .end local v0           #entry:Lcom/android/calculator2/HistoryEntry;
    :cond_0
    iget v2, p0, Lcom/android/calculator2/History;->mPos:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 72
    return-void
.end method
