.class public Lcom/google/android/gm/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"


# instance fields
.field public mAccount:Ljava/lang/String;

.field public mConversations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDescription:Ljava/lang/String;

.field public final mOperations:Lcom/google/android/gm/LabelOperations;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter
    .parameter "operations"
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/UndoOperation;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;Z)V
    .locals 1
    .parameter "account"
    .parameter
    .parameter "operations"
    .parameter "description"
    .parameter "undoAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gm/UndoOperation;->mAccount:Ljava/lang/String;

    .line 44
    if-eqz p5, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gm/LabelOperations;->undoOperation()Lcom/google/android/gm/LabelOperations;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/UndoOperation;->mOperations:Lcom/google/android/gm/LabelOperations;

    .line 45
    iput-object p2, p0, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    .line 46
    iput-object p4, p0, Lcom/google/android/gm/UndoOperation;->mDescription:Ljava/lang/String;

    .line 47
    return-void

    :cond_0
    move-object v0, p3

    .line 44
    goto :goto_0
.end method

.method private static decodeConversations(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 7
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const-string v6, "undo-conversations"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 157
    .local v4, parcelled:[Landroid/os/Parcelable;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationInfo;>;"
    move-object v0, v4

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 159
    .local v3, parcel:Landroid/os/Parcelable;
    check-cast v3, Lcom/google/android/gm/ConversationInfo;

    .end local v3           #parcel:Landroid/os/Parcelable;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v5
.end method

.method public static getActionDescription(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v11

    .line 66
    .local v11, isTrash:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v10

    .line 67
    .local v10, isSpam:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v9

    .line 68
    .local v9, isMute:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyArchive()Z

    move-result v5

    .line 69
    .local v5, isArchive:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasMarkImportant()Z

    move-result v6

    .line 70
    .local v6, isMarkImportant:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasMarkNotImportant()Z

    move-result v7

    .line 71
    .local v7, isMarkNotImportant:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyRead()Z

    move-result v3

    .line 72
    .local v3, isApplyRead:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyUnread()Z

    move-result v4

    .line 73
    .local v4, isApplyUnread:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasMoveToInbox()Z

    move-result v8

    .line 75
    .local v8, isMoveToInbox:Z
    const/4 v2, -0x1

    .line 76
    .local v2, id:I
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result p3

    .line 77
    .local p3, count:I
    const/4 v12, 0x1

    move/from16 v0, p3

    move v1, v12

    if-le v0, v1, :cond_c

    .line 78
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v12, uniqueIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .end local p2           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gm/ConversationInfo;

    .line 80
    .local p2, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2           #conversationInfo:Lcom/google/android/gm/ConversationInfo;
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result p2

    .line 85
    .end local v12           #uniqueIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local p3           #i$:Ljava/util/Iterator;
    .local p2, count:I
    :goto_1
    if-eqz v11, :cond_1

    .line 86
    const p1, 0x7f0f0012

    .line 109
    .end local v2           #id:I
    .end local v5           #isArchive:Z
    .local p1, id:I
    :goto_2
    const/16 p3, -0x1

    move/from16 v0, p1

    move/from16 v1, p3

    if-eq v0, v1, :cond_a

    .line 110
    invoke-static/range {p0 .. p2}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    .line 113
    .end local p0
    :goto_3
    return-object p0

    .line 87
    .restart local v2       #id:I
    .restart local v5       #isArchive:Z
    .restart local p0
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_1
    if-eqz v10, :cond_2

    .line 88
    const p1, 0x7f0f000f

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 89
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_2
    if-eqz v9, :cond_3

    .line 90
    const p1, 0x7f0f000e

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 91
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result p3

    const/4 v5, 0x1

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 94
    .end local v5           #isArchive:Z
    const p1, 0x7f0f0010

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 95
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_4
    if-eqz v6, :cond_5

    .line 96
    const p1, 0x7f0f0014

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 97
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_5
    if-eqz v7, :cond_6

    .line 98
    const p1, 0x7f0f0015

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 99
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_6
    if-eqz v3, :cond_7

    .line 100
    const p1, 0x7f0f0016

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 101
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_7
    if-eqz v4, :cond_8

    .line 102
    const p1, 0x7f0f0017

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 103
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_8
    if-eqz v8, :cond_9

    .line 104
    const p1, 0x7f0f0011

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 105
    .restart local v2       #id:I
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result p1

    .end local p1           #operations:Lcom/google/android/gm/LabelOperations;
    if-lez p1, :cond_b

    .line 106
    const p1, 0x7f0f0018

    .end local v2           #id:I
    .local p1, id:I
    goto :goto_2

    .line 113
    :cond_a
    const/4 p0, 0x0

    goto :goto_3

    .end local p1           #id:I
    .restart local v2       #id:I
    :cond_b
    move/from16 p1, v2

    .end local v2           #id:I
    .restart local p1       #id:I
    goto :goto_2

    .restart local v2       #id:I
    .restart local v5       #isArchive:Z
    .local p1, operations:Lcom/google/android/gm/LabelOperations;
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p3, count:I
    :cond_c
    move/from16 p2, p3

    .end local p3           #count:I
    .local p2, count:I
    goto :goto_1
.end method

.method public static restoreFromExtras(Landroid/os/Bundle;)Lcom/google/android/gm/UndoOperation;
    .locals 7
    .parameter "extras"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, result:Lcom/google/android/gm/UndoOperation;
    if-eqz p0, :cond_0

    .line 140
    const-string v2, "undo-account"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, account:Ljava/lang/String;
    const-string v2, "undo-operations"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, labelOperations:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Lcom/google/android/gm/UndoOperation;

    .end local v0           #result:Lcom/google/android/gm/UndoOperation;
    invoke-static {p0}, Lcom/google/android/gm/UndoOperation;->decodeConversations(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v6}, Lcom/google/android/gm/LabelOperations;->deserialize(Ljava/lang/String;)Lcom/google/android/gm/LabelOperations;

    move-result-object v3

    const-string v4, "undo-description"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/UndoOperation;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;Z)V

    .line 149
    .end local v1           #account:Ljava/lang/String;
    .end local v6           #labelOperations:Ljava/lang/String;
    .restart local v0       #result:Lcom/google/android/gm/UndoOperation;
    :cond_0
    return-object v0
.end method

.method public static shouldResetUndoState(Lcom/google/android/gm/LabelOperations;)Z
    .locals 2
    .parameter "operations"

    .prologue
    const/4 v1, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyUnread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public saveToExtras(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 53
    const-string v0, "undo-account"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "undo-operations"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mOperations:Lcom/google/android/gm/LabelOperations;

    invoke-static {v1}, Lcom/google/android/gm/LabelOperations;->serialize(Lcom/google/android/gm/LabelOperations;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "undo-description"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "undo-conversations"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 58
    return-void
.end method
