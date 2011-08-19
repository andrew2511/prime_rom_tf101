.class public Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyIterator"
.end annotation


# instance fields
.field private currentKey:I

.field private higherKeyEnumerator:Ljava/util/Enumeration;

.field private oneAheadIndex:I

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    .line 37
    const/high16 v0, -0x8000

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 44
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_9

    move v1, v3

    .line 66
    :goto_8
    return v1

    .line 47
    :cond_9
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$000(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)I

    move-result v2

    if-gt v1, v2, :cond_3a

    .line 48
    :goto_13
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$000(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)I

    move-result v2

    if-gt v1, v2, :cond_3a

    .line 49
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$100(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_33

    .line 51
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    move v1, v3

    .line 52
    goto :goto_8

    .line 48
    :cond_33
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    goto :goto_13

    .line 56
    :cond_3a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$200(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 57
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    if-nez v1, :cond_52

    .line 58
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$200(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    .line 60
    :cond_52
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 61
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    .local v0, key:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    move v1, v3

    .line 63
    goto :goto_8

    .line 66
    .end local v0           #key:Ljava/lang/Integer;
    :cond_6a
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public next()I
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 75
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 77
    :cond_c
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    .line 78
    .local v0, key:I
    const/high16 v1, -0x8000

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    .line 79
    return v0
.end method
