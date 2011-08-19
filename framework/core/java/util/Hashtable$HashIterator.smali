.class abstract Ljava/util/Hashtable$HashIterator;
.super Ljava/lang/Object;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# instance fields
.field expectedModCount:I

.field lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .registers 6
    .parameter

    .prologue
    .line 717
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iput-object p1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iget-object v2, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v2}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v2

    iput v2, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    .line 718
    #getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v1

    .line 719
    .local v1, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 720
    .local v0, next:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-nez v0, :cond_22

    iget v2, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 721
    iget v2, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    aget-object v0, v1, v2

    goto :goto_12

    .line 723
    :cond_22
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    .line 724
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 727
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method nextEntry()Ljava/util/Hashtable$HashtableEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v3}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v3

    iget v4, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    if-eq v3, v4, :cond_10

    .line 732
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 733
    :cond_10
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    if-nez v3, :cond_1a

    .line 734
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 736
    :cond_1a
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    .line 737
    .local v0, entryToReturn:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v3}, Ljava/util/Hashtable;->access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v2

    .line 738
    .local v2, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 739
    .local v1, next:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_24
    if-nez v1, :cond_34

    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    array-length v4, v2

    if-ge v3, v4, :cond_34

    .line 740
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    aget-object v1, v2, v3

    goto :goto_24

    .line 742
    :cond_34
    iput-object v1, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    .line 743
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method nextEntryNotFailFast()Ljava/util/Hashtable$HashtableEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 747
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    if-nez v3, :cond_a

    .line 748
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 750
    :cond_a
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    .line 751
    .local v0, entryToReturn:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v3}, Ljava/util/Hashtable;->access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v2

    .line 752
    .local v2, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 753
    .local v1, next:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_14
    if-nez v1, :cond_24

    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    array-length v4, v2

    if-ge v3, v4, :cond_24

    .line 754
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    aget-object v1, v2, v3

    goto :goto_14

    .line 756
    :cond_24
    iput-object v1, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    .line 757
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 761
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    if-nez v0, :cond_a

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 763
    :cond_a
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1a

    .line 764
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 765
    :cond_1a
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    iget-object v1, v1, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    .line 767
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v0

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    .line 768
    return-void
.end method
