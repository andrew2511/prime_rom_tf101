.class Lcom/google/android/gm/TwoPaneActivity$6;
.super Ljava/lang/Object;
.source "TwoPaneActivity.java"

# interfaces
.implements Lcom/google/android/gm/LabelItemView$DropHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLong(Landroid/content/ClipData;I)J
    .locals 2
    .parameter "data"
    .parameter "item"

    .prologue
    .line 1061
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getString(Landroid/content/ClipData;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "item"

    .prologue
    .line 1057
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V
    .locals 25
    .parameter "event"
    .parameter "label"

    .prologue
    .line 998
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/TwoPaneActivity$6;->supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1001
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v20

    .line 1002
    .local v20, data:Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v21

    .line 1004
    .local v21, displayedLabel:Lcom/google/android/gm/provider/Label;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 1005
    .local v12, conversations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationInfo;>;"
    const/16 v22, 0x1

    .local v22, i:I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 1006
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/TwoPaneActivity$6;->getLong(Landroid/content/ClipData;I)J

    move-result-wide v4

    .line 1007
    .local v4, conversationId:J
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/TwoPaneActivity$6;->getLong(Landroid/content/ClipData;I)J

    move-result-wide v6

    .line 1008
    .local v6, maxMessageId:J
    add-int/lit8 v3, v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/TwoPaneActivity$6;->getString(Landroid/content/ClipData;I)Ljava/lang/String;

    move-result-object v24

    .line 1009
    .local v24, rawLabels:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 1010
    .local v8, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    new-instance v3, Lcom/google/android/gm/ConversationInfo;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    add-int/lit8 v22, v22, 0x3

    goto :goto_1

    .line 1013
    .end local v4           #conversationId:J
    .end local v6           #maxMessageId:J
    .end local v8           #labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .end local v24           #rawLabels:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v23

    .line 1014
    .local v23, name:Ljava/lang/String;
    const-string v3, "^i"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v9, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x0

    const v14, 0x7f0e00a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/TwoPaneActivity;->access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;

    move-result-object v15

    move-object/from16 v10, p2

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0

    .line 1020
    :cond_2
    const-string v3, "^t"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v3, v12}, Lcom/google/android/gm/MenuHandler;->applyStar(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1024
    :cond_3
    const-string v3, "^iim"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/gm/TwoPaneActivity;->access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lcom/google/android/gm/MenuHandler;->moveToMagicInbox(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0

    .line 1027
    :cond_4
    const-string v3, "^io_im"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gm/TwoPaneActivity;->mAccount:Ljava/lang/String;

    const-string v5, "^^important"

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v10

    .line 1031
    .local v10, markImportantLabel:Lcom/google/android/gm/provider/Label;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v9, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x0

    const v14, 0x7f0e00c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/TwoPaneActivity;->access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;

    move-result-object v15

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0

    .line 1036
    .end local v10           #markImportantLabel:Lcom/google/android/gm/provider/Label;
    :cond_5
    const-string v3, "^k"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/gm/TwoPaneActivity;->access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0

    .line 1040
    :cond_6
    const-string v3, "^s"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/TwoPaneActivity;->access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;

    move-result-object v5

    invoke-virtual {v3, v12, v4, v5}, Lcom/google/android/gm/MenuHandler;->reportSpam(Ljava/util/Collection;ZLcom/google/android/gm/CommandListener;)Z

    goto/16 :goto_0

    .line 1047
    :cond_7
    new-instance v14, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v14}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 1048
    .local v14, labelOps:Lcom/google/android/gm/LabelOperations;
    const/4 v3, 0x0

    move-object v0, v14

    move-object/from16 v1, v21

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 1049
    const/4 v3, 0x1

    move-object v0, v14

    move-object/from16 v1, p2

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    iget-object v13, v3, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const v18, 0x7f0e00a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gm/TwoPaneActivity;->access$1200(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/CommandListener;

    move-result-object v19

    move-object v15, v12

    invoke-virtual/range {v13 .. v19}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z
    .locals 2
    .parameter "event"
    .parameter "label"

    .prologue
    .line 985
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "com.google.android.gm/conversations"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$6;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
