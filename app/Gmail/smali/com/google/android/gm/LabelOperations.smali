.class public Lcom/google/android/gm/LabelOperations;
.super Ljava/lang/Object;
.source "LabelOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelOperations$1;,
        Lcom/google/android/gm/LabelOperations$Operation;
    }
.end annotation


# static fields
.field private static final OPERATION_LABEL_ADD_SEPERATOR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\\^\\*\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/LabelOperations;->OPERATION_LABEL_ADD_SEPERATOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/Label;Z)V
    .locals 0
    .parameter "label"
    .parameter "add"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 42
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/google/android/gm/LabelOperations;
    .locals 8
    .parameter "encodedLabelOperations"

    .prologue
    .line 261
    new-instance v4, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v4}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 263
    .local v4, result:Lcom/google/android/gm/LabelOperations;
    if-eqz p0, :cond_1

    .line 264
    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, operations:[Ljava/lang/String;
    array-length v1, v3

    .line 266
    .local v1, numOperations:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 267
    aget-object v5, v3, v0

    .line 268
    .local v5, serializedOperation:Ljava/lang/String;
    sget-object v6, Lcom/google/android/gm/LabelOperations;->OPERATION_LABEL_ADD_SEPERATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, operation:[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 271
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v2           #operation:[Ljava/lang/String;
    .end local v3           #operations:[Ljava/lang/String;
    .end local v5           #serializedOperation:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static serialize(Lcom/google/android/gm/LabelOperations;)Ljava/lang/String;
    .locals 6
    .parameter "operations"

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const/4 v4, 0x0

    .line 252
    .end local p0
    :goto_0
    return-object v4

    .line 245
    .restart local p0
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v3, operatons:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 247
    .local v2, operationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, operation:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/LabelOperations$Operation;

    iget-object v5, p0, Lcom/google/android/gm/LabelOperations$Operation;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Label;->serialize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^**^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/LabelOperations$Operation;

    iget-boolean v5, p0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 252
    .end local v1           #operation:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/android/gm/provider/Label;Z)V
    .locals 3
    .parameter "label"
    .parameter "add"

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/gm/LabelOperations$Operation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gm/LabelOperations$Operation;-><init>(Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/provider/Label;ZLcom/google/android/gm/LabelOperations$1;)V

    .line 53
    .local v0, operation:Lcom/google/android/gm/LabelOperations$Operation;
    iget-object v1, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOperationList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/LabelOperations$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 230
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/LabelOperations$Operation;>;"
    iget-object v4, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 231
    .local v2, operationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, operationItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .end local v1           #operationItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;"
    :cond_0
    return-object v3
.end method

.method public hasApplyArchive()Z
    .locals 1

    .prologue
    .line 145
    const-string v0, "^i"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplyMute()Z
    .locals 1

    .prologue
    .line 131
    const-string v0, "^g"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplyOperation(Ljava/lang/String;)Z
    .locals 2
    .parameter "canonicalName"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelOperations;->hasOperation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelOperations$Operation;

    .line 93
    .local v0, operation:Lcom/google/android/gm/LabelOperations$Operation;
    iget-boolean v1, v0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    .line 95
    .end local v0           #operation:Lcom/google/android/gm/LabelOperations$Operation;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasApplyRead()Z
    .locals 1

    .prologue
    .line 159
    const-string v0, "^u"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplySpam()Z
    .locals 1

    .prologue
    .line 138
    const-string v0, "^s"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplyStar()Z
    .locals 1

    .prologue
    .line 173
    const-string v0, "^t"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplyTrash()Z
    .locals 1

    .prologue
    .line 124
    const-string v0, "^k"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplyUnread()Z
    .locals 1

    .prologue
    .line 166
    const-string v0, "^u"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMarkImportant()Z
    .locals 1

    .prologue
    .line 183
    const-string v0, "^^important"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^^unimportant"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMarkNotImportant()Z
    .locals 1

    .prologue
    .line 194
    const-string v0, "^^unimportant"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^^important"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoveToInbox()Z
    .locals 1

    .prologue
    .line 152
    const-string v0, "^i"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasOperation(Ljava/lang/String;)Z
    .locals 1
    .parameter "canonicalName"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRemoveOperation(Ljava/lang/String;)Z
    .locals 3
    .parameter "canonicalName"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelOperations;->hasOperation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelOperations$Operation;

    .line 115
    .local v0, operation:Lcom/google/android/gm/LabelOperations$Operation;
    iget-boolean v1, v0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 117
    .end local v0           #operation:Lcom/google/android/gm/LabelOperations$Operation;
    :goto_0
    return v1

    .restart local v0       #operation:Lcom/google/android/gm/LabelOperations$Operation;
    :cond_0
    move v1, v2

    .line 115
    goto :goto_0

    .end local v0           #operation:Lcom/google/android/gm/LabelOperations$Operation;
    :cond_1
    move v1, v2

    .line 117
    goto :goto_0
.end method

.method public undoOperation()Lcom/google/android/gm/LabelOperations;
    .locals 7

    .prologue
    .line 215
    new-instance v4, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v4}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 216
    .local v4, undoOperations:Lcom/google/android/gm/LabelOperations;
    iget-object v5, p0, Lcom/google/android/gm/LabelOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 217
    .local v2, operationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 218
    .local v1, operationItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/LabelOperations$Operation;

    .line 219
    .local v3, operationToUndo:Lcom/google/android/gm/LabelOperations$Operation;
    iget-object v5, v3, Lcom/google/android/gm/LabelOperations$Operation;->mLabel:Lcom/google/android/gm/provider/Label;

    iget-boolean v6, v3, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 221
    .end local v1           #operationItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/LabelOperations$Operation;>;"
    .end local v3           #operationToUndo:Lcom/google/android/gm/LabelOperations$Operation;
    :cond_1
    return-object v4
.end method
