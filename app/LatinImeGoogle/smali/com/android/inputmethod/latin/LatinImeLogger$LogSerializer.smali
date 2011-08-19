.class Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinImeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSerializer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendLogEntry(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "sb"
    .parameter "time"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 862
    array-length v4, p3

    if-lez v4, :cond_0

    .line 863
    array-length v4, p3

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;->appendWithLength(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 864
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;->appendWithLength(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 865
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;->appendWithLength(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 866
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 867
    .local v3, s:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;->appendWithLength(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static appendWithLength(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "data"

    .prologue
    const/16 v1, 0x3b

    .line 854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 855
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 856
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 857
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 858
    return-void
.end method

.method public static createStringFromEntries(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 873
    .local p0, logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 874
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    .line 875
    .local v1, log:Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;
    iget-wide v3, v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mTag:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;->appendLogEntry(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 877
    .end local v1           #log:Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
