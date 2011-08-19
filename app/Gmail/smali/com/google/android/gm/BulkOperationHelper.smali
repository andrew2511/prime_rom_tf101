.class public Lcom/google/android/gm/BulkOperationHelper;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    }
.end annotation


# static fields
.field private static sBulkOperationHandler:Landroid/os/Handler;


# instance fields
.field private mActivityAttached:Z

.field private final mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mInfo:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelOperations:Lcom/google/android/gm/LabelOperations;

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

.field private volatile mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/provider/Gmail;)V
    .locals 1
    .parameter "menuHandler"
    .parameter "gmail"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->IDLE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 65
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 66
    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gm/BulkOperationHelper;->performYButtonActionInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/BulkOperationHelper$ThreadState;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/BulkOperationHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z

    return v0
.end method

.method private addOrRemoveLabelInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLjava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 33
    .parameter "context"
    .parameter "account"
    .parameter "labelOperations"
    .parameter
    .parameter "done"
    .parameter "displayedLabel"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const-string v5, "BOH_addOrRemoveLabel"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 100
    .local v16, conversationInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v25

    .line 102
    .local v25, messageInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/LabelOperations;->getOperationList()Ljava/util/List;

    move-result-object v28

    .line 105
    .local v28, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/LabelOperations$Operation;>;"
    if-eqz p7, :cond_0

    .line 106
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gm/LabelOperations;->getOperationList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local p7
    .local v18, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/ConversationInfo;

    .line 109
    .local v13, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->getLocalMessageId()J

    move-result-wide v22

    .line 110
    .local v22, localMessageId:J
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->getServerMessageId()J

    move-result-wide v30

    .line 111
    .local v30, serverMessageId:J
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v14

    .line 113
    .local v14, conversationId:J
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v26

    .line 114
    .local v26, numOperations:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 115
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/gm/LabelOperations$Operation;

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/google/android/gm/LabelOperations$Operation;->mLabel:Lcom/google/android/gm/provider/Label;

    move-object/from16 v20, v0

    .line 117
    .local v20, label:Lcom/google/android/gm/provider/Label;
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/gm/LabelOperations$Operation;

    move-object/from16 v0, p7

    iget-boolean v0, v0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    move v5, v0

    move-object v0, v13

    move-object/from16 v1, p6

    move-object/from16 v2, v20

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->getRawOperations(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Z)Ljava/util/Map;

    move-result-object v29

    .line 119
    .local v29, rawOperations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->size()I

    move-result v27

    .line 120
    .local v27, numRawOperations:I
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .line 121
    .local v21, labelList:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 122
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v24, map:Landroid/content/ContentValues;
    aget-object v12, v21, v19

    .line 125
    .local v12, canonicalName:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 127
    .local v11, add:Z
    const-wide/16 v5, 0x0

    cmp-long v5, v22, v5

    if-eqz v5, :cond_2

    .line 128
    const-string v5, "canonicalName"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v5, "messageId"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v5, "conversation"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v5, "add_label_action"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 135
    :cond_2
    const-string v5, "_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v5, "canonicalName"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v5, "maxMessageId"

    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v5, "add_label_action"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 139
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    .end local v11           #add:Z
    .end local v12           #canonicalName:Ljava/lang/String;
    .end local v24           #map:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v5, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/gm/LabelOperations$Operation;

    move-object/from16 v0, p7

    iget-boolean v0, v0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    move v6, v0

    move-object v0, v5

    move-wide v1, v14

    move v3, v6

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/MenuHandler;->sendLabelChangedMessage(JZLcom/google/android/gm/provider/Label;)V

    .line 152
    :cond_4
    const-string v5, "^^out"

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "^k"

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/gm/LabelOperations$Operation;

    move-object/from16 v0, p7

    iget-boolean v0, v0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    move v5, v0

    if-eqz v5, :cond_5

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    move-wide v2, v14

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 114
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 162
    .end local v13           #ci:Lcom/google/android/gm/ConversationInfo;
    .end local v14           #conversationId:J
    .end local v17           #i:I
    .end local v19           #j:I
    .end local v20           #label:Lcom/google/android/gm/provider/Label;
    .end local v21           #labelList:[Ljava/lang/String;
    .end local v22           #localMessageId:J
    .end local v26           #numOperations:I
    .end local v27           #numRawOperations:I
    .end local v29           #rawOperations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v30           #serverMessageId:J
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    move-object v5, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Landroid/content/ContentValues;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->addOrRemoveLabelOnConversationBulk(Ljava/lang/String;[Landroid/content/ContentValues;)V

    .line 166
    :cond_7
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    move-object v5, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Landroid/content/ContentValues;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->addOrRemoveLabelOnMessageBulk(Ljava/lang/String;[Landroid/content/ContentValues;)V

    .line 172
    :cond_8
    if-eqz p5, :cond_a

    .line 174
    if-eqz p9, :cond_9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 175
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gm/BulkOperationHelper;->setUndoOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Lcom/google/android/gm/UndoOperation;

    move-result-object v32

    .line 177
    .local v32, undoOp:Lcom/google/android/gm/UndoOperation;
    move-object/from16 v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V

    .line 179
    .end local v32           #undoOp:Lcom/google/android/gm/UndoOperation;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v5, v0

    if-eqz v5, :cond_a

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V

    .line 183
    :cond_a
    const-string v5, "BOH_addOrRemoveLabel"

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method static declared-synchronized getBulkOperationHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 561
    const-class v1, Lcom/google/android/gm/BulkOperationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 563
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "BulkOperationHelper"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, handlerThread:Landroid/os/HandlerThread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 567
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 568
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;

    .line 570
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    sget-object v2, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 561
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private getLabelOperationMessage(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "labelOperations"
    .parameter "count"

    .prologue
    .line 638
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v7

    .line 639
    .local v7, isTrash:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v5

    .line 640
    .local v5, isSpam:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v4

    .line 641
    .local v4, isMute:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyArchive()Z

    move-result v1

    .line 642
    .local v1, isArchive:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyRead()Z

    move-result v2

    .line 643
    .local v2, isMarkingRead:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyUnread()Z

    move-result v3

    .line 644
    .local v3, isMarkingUnread:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyStar()Z

    move-result v6

    .line 647
    .local v6, isStarring:Z
    if-eqz v7, :cond_0

    .line 648
    const v0, 0x7f0f0008

    .line 668
    .local v0, id:I
    :goto_0
    invoke-static {p1, v0, p3}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 649
    .end local v0           #id:I
    :cond_0
    if-eqz v5, :cond_1

    .line 650
    const v0, 0x7f0f0006

    .restart local v0       #id:I
    goto :goto_0

    .line 651
    .end local v0           #id:I
    :cond_1
    if-eqz v1, :cond_2

    .line 652
    const v0, 0x7f0f0007

    .restart local v0       #id:I
    goto :goto_0

    .line 653
    .end local v0           #id:I
    :cond_2
    if-eqz v4, :cond_3

    .line 654
    const v0, 0x7f0f0005

    .restart local v0       #id:I
    goto :goto_0

    .line 655
    .end local v0           #id:I
    :cond_3
    if-eqz v2, :cond_4

    .line 656
    const v0, 0x7f0f0009

    .restart local v0       #id:I
    goto :goto_0

    .line 657
    .end local v0           #id:I
    :cond_4
    if-eqz v3, :cond_5

    .line 658
    const v0, 0x7f0f000a

    .restart local v0       #id:I
    goto :goto_0

    .line 659
    .end local v0           #id:I
    :cond_5
    if-eqz v6, :cond_6

    .line 660
    const v0, 0x7f0f000b

    .restart local v0       #id:I
    goto :goto_0

    .line 661
    .end local v0           #id:I
    :cond_6
    if-eqz v6, :cond_7

    .line 662
    const v0, 0x7f0f000c

    .restart local v0       #id:I
    goto :goto_0

    .line 666
    .end local v0           #id:I
    :cond_7
    const v0, 0x7f0f000d

    .restart local v0       #id:I
    goto :goto_0
.end method

.method private static getRawOperations(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Z)Ljava/util/Map;
    .locals 10
    .parameter "ci"
    .parameter "displayedLabel"
    .parameter "label"
    .parameter "add"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 198
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 199
    .local v4, rawOperations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, canonicalName:Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v6, "^k"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "^g"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    :cond_0
    if-nez p3, :cond_a

    move v5, v9

    .line 210
    .local v5, removeConversation:Z
    :goto_0
    const-string v6, "^i"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v5           #removeConversation:Z
    :cond_1
    const-string v6, "^k"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "^s"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "^i"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 216
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_3
    const-string v6, "^^important"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez p3, :cond_5

    :cond_4
    const-string v6, "^^unimportant"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez p3, :cond_b

    :cond_5
    move v2, v9

    .line 223
    .local v2, markImportantAction:Z
    :goto_1
    const-string v6, "^^unimportant"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez p3, :cond_7

    :cond_6
    const-string v6, "^^important"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez p3, :cond_c

    :cond_7
    move v3, v9

    .line 227
    .local v3, markNotImportantAction:Z
    :goto_2
    if-eqz v2, :cond_d

    .line 228
    const-string v6, "^im"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v6, "^io_im"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v6, "^imi"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v6, "^imn"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v6, "^io_ns"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v6

    const-string v7, "^i"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 239
    const-string v6, "^iim"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_8
    :goto_3
    const-string v6, "^i"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationInfo;->isImportant()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 253
    const-string v6, "^i"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 254
    .local v1, inboxAction:Z
    const-string v6, "^iim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v1           #inboxAction:Z
    :cond_9
    return-object v4

    .end local v2           #markImportantAction:Z
    .end local v3           #markNotImportantAction:Z
    .restart local p0
    :cond_a
    move v5, v8

    .line 206
    goto/16 :goto_0

    :cond_b
    move v2, v8

    .line 220
    goto :goto_1

    .restart local v2       #markImportantAction:Z
    :cond_c
    move v3, v8

    .line 223
    goto :goto_2

    .line 241
    .restart local v3       #markNotImportantAction:Z
    :cond_d
    if-eqz v3, :cond_8

    .line 242
    const-string v6, "^imn"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v6, "^im"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v6, "^io_im"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v6, "^iim"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v6, "^imi"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v6, "^io_ns"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "labelOperation"
    .parameter
    .parameter "operation"
    .parameter "displayedLabel"
    .parameter "showProgressDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v1, v2, :cond_0

    .line 499
    const-string v1, "ConversationListActivity"

    const-string v2, "startOperation() called when last operation hasn\'t finished"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void

    .line 506
    :cond_0
    if-eqz p7, :cond_1

    .line 507
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/BulkOperationHelper;->showProgressDialog(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1}, Lcom/google/android/gm/MenuHandler;->onStartBulkOperation()V

    .line 512
    sget-object v1, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    iput-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 516
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 518
    .local v6, clonedConversations:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v0, Lcom/google/android/gm/BulkOperationHelper$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/BulkOperationHelper$6;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Set;)V

    .line 544
    .local v0, task:Ljava/lang/Runnable;
    invoke-static {}, Lcom/google/android/gm/BulkOperationHelper;->getBulkOperationHandler()Landroid/os/Handler;

    move-result-object v7

    .line 546
    .local v7, handler:Landroid/os/Handler;
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 549
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 553
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private performYButtonActionInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 20
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, canonicalName:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v10}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    :cond_0
    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 276
    .local v19, yActionCanonicalName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v7

    .line 278
    .local v7, yActionLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v7, :cond_1

    .line 279
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 306
    .end local v7           #yActionLabel:Lcom/google/android/gm/provider/Label;
    .end local v19           #yActionCanonicalName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    const-string v4, "^r"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    invoke-static/range {p4 .. p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    .line 286
    .local v17, conversationsCopy:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gm/ConversationInfo;

    .line 287
    .local v14, ci:Lcom/google/android/gm/ConversationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    move-object v4, v0

    invoke-virtual {v14}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v5

    move-object v0, v4

    move-object/from16 v1, p2

    move-wide v2, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getComposableMessageId(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;J)J

    move-result-wide v15

    .line 289
    .local v15, composableMessageId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v15, v4

    if-eqz v4, :cond_3

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    goto :goto_1

    .line 295
    .end local v14           #ci:Lcom/google/android/gm/ConversationInfo;
    .end local v15           #composableMessageId:J
    :cond_4
    if-eqz p7, :cond_5

    .line 296
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p7

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V

    .line 301
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v4, v0

    new-instance v5, Lcom/google/android/gm/LabelOperations;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p3

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    invoke-virtual {v4, v5}, Lcom/google/android/gm/MenuHandler;->sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V

    goto :goto_0
.end method

.method private postCommandAccepted(ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter "opId"
    .parameter "commandListener"

    .prologue
    .line 336
    if-eqz p2, :cond_0

    .line 337
    invoke-interface {p2, p1}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 339
    :cond_0
    return-void
.end method

.method private postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V
    .locals 2
    .parameter "opId"
    .parameter "commandListener"
    .parameter "undo"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    new-instance v1, Lcom/google/android/gm/BulkOperationHelper$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gm/BulkOperationHelper$1;-><init>(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/CommandListener;ILcom/google/android/gm/UndoOperation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private setUndoOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Lcom/google/android/gm/UndoOperation;
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "labelOperations"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gm/UndoOperation;"
        }
    .end annotation

    .prologue
    .line 581
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-static {p1, p3, p4, p5}, Lcom/google/android/gm/UndoOperation;->getActionDescription(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, description:Ljava/lang/String;
    const/4 v1, 0x0

    .line 585
    .local v1, result:Lcom/google/android/gm/UndoOperation;
    if-eqz v0, :cond_1

    .line 590
    new-instance v1, Lcom/google/android/gm/UndoOperation;

    .end local v1           #result:Lcom/google/android/gm/UndoOperation;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p2, v2, p3, v0}, Lcom/google/android/gm/UndoOperation;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)V

    .line 592
    .restart local v1       #result:Lcom/google/android/gm/UndoOperation;
    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 597
    :cond_0
    :goto_0
    return-object v1

    .line 593
    :cond_1
    invoke-static {p3}, Lcom/google/android/gm/UndoOperation;->shouldResetUndoState(Lcom/google/android/gm/LabelOperations;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V
    .locals 6
    .parameter "context"
    .parameter "labelOperations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 610
    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    .line 611
    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper;->mInfo:Ljava/util/Collection;

    .line 613
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "ConversationListActivity"

    const-string v4, "Progress dialog was still active!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/gm/MinTimeProgressDialog;->dismiss(Z)V

    .line 619
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/BulkOperationHelper;->getLabelOperationMessage(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;I)Ljava/lang/String;

    move-result-object v2

    .local v2, message:Ljava/lang/String;
    move-object v0, p1

    move v4, v3

    move-object v5, v1

    .line 620
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/MinTimeProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gm/MinTimeProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    .line 621
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 622
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 623
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MinTimeProgressDialog;->setMax(I)V

    .line 624
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/MinTimeProgressDialog;->setProgress(I)V

    .line 625
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/MinTimeProgressDialog;->setIndeterminate(Z)V

    .line 626
    return-void
.end method


# virtual methods
.method public addOrRemoveLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 13
    .parameter "context"
    .parameter "account"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .parameter "showProgressDialog"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    move-object v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/BulkOperationHelper;->postCommandAccepted(ILcom/google/android/gm/CommandListener;)V

    .line 405
    new-instance v3, Lcom/google/android/gm/BulkOperationHelper$2;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/BulkOperationHelper$2;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v3

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 412
    return-void
.end method

.method public clearState()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v1, v2, :cond_0

    .line 705
    const-string v1, "ConversationListActivity"

    const-string v2, "Thread still active!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    monitor-exit v0

    .line 713
    return-void

    .line 707
    :cond_0
    sget-object v1, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->IDLE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    iput-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    goto :goto_0

    .line 712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public hideProgressDialog(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/MinTimeProgressDialog;->dismiss(Z)V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    goto :goto_0
.end method

.method public onActivityAttached()V
    .locals 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    monitor-enter v0

    .line 685
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z

    .line 686
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->FINISHED:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v1, v2, :cond_1

    .line 688
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/MenuHandler;->sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V

    .line 695
    :cond_0
    :goto_0
    monitor-exit v0

    .line 696
    return-void

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v1, v2, :cond_0

    .line 691
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mInfo:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1}, Lcom/google/android/gm/MenuHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    iget-object v3, p0, Lcom/google/android/gm/BulkOperationHelper;->mInfo:Ljava/util/Collection;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->showProgressDialog(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityDetached()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    monitor-enter v0

    .line 720
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z

    .line 721
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BulkOperationHelper;->hideProgressDialog(Z)V

    .line 722
    monitor-exit v0

    .line 723
    return-void

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter "add"
    .parameter
    .parameter "displayedLabel"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    .local p5, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v7, Lcom/google/android/gm/LabelOperations;

    move-object v0, v7

    move-object v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 472
    .local v7, operation:Lcom/google/android/gm/LabelOperations;
    move-object v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/BulkOperationHelper;->postCommandAccepted(ILcom/google/android/gm/CommandListener;)V

    .line 473
    new-instance v3, Lcom/google/android/gm/BulkOperationHelper$5;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/BulkOperationHelper$5;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    const/4 v11, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p5

    move-object v9, v3

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 480
    return-void
.end method

.method performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 385
    .local v4, actionableConversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/BulkOperationHelper;->addOrRemoveLabelInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLjava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 388
    return-void
.end method

.method performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter "add"
    .parameter
    .parameter "displayedLabel"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    .local p5, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v3, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v3, p3, p4}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .local v3, operation:Lcom/google/android/gm/LabelOperations;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 355
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 357
    return-void
.end method

.method performUndoOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 364
    return-void
.end method

.method public performYButtonAction(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .parameter "uncommittedConversationState"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 425
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v9, Lcom/google/android/gm/LabelOperations;

    const/4 v0, 0x0

    invoke-direct {v9, p3, v0}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 426
    .local v9, operation:Lcom/google/android/gm/LabelOperations;
    new-instance v0, Lcom/google/android/gm/BulkOperationHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/BulkOperationHelper$3;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V

    invoke-virtual {p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    move-object v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method public toggleLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 18
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .parameter
    .parameter "displayedLabel"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v8, v3

    .line 447
    .local v8, add:Z
    :goto_0
    new-instance v17, Lcom/google/android/gm/LabelOperations;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 449
    .local v17, operation:Lcom/google/android/gm/LabelOperations;
    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/BulkOperationHelper;->postCommandAccepted(ILcom/google/android/gm/CommandListener;)V

    .line 450
    new-instance v3, Lcom/google/android/gm/BulkOperationHelper$4;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/BulkOperationHelper$4;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    const/16 v16, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, v17

    move-object/from16 v13, p4

    move-object v14, v3

    move-object/from16 v15, p6

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 456
    return-void

    .line 446
    .end local v8           #add:Z
    .end local v17           #operation:Lcom/google/android/gm/LabelOperations;
    :cond_0
    const/4 v3, 0x0

    move v8, v3

    goto :goto_0
.end method
