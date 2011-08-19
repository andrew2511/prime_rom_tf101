.class Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "downloadList"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 280
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 29
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 306
    const/4 v4, 0x1

    .line 359
    :goto_0
    return v4

    .line 308
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 359
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 310
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 311
    .local v21, downloadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/providers/downloads/ui/DownloadList;->access$1300(Lcom/android/providers/downloads/ui/DownloadList;J)V

    goto :goto_2

    .line 314
    .end local v21           #downloadId:Ljava/lang/Long;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v24

    .line 315
    .local v24, lv:Landroid/widget/ListView;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v16

    .line 316
    .local v16, checkedPositionList:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    .line 317
    .local v18, checkedPositionListSize:I
    const/16 v26, 0x0

    .line 318
    .local v26, sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 319
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 320
    .local v6, position:I
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v6

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move v1, v6

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 322
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 318
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 325
    .end local v6           #position:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 327
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_1

    .line 330
    .end local v16           #checkedPositionList:Landroid/util/SparseBooleanArray;
    .end local v18           #checkedPositionListSize:I
    .end local v22           #i:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #lv:Landroid/widget/ListView;
    .end local v26           #sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/downloads/ui/DownloadList;->shareDownloadedFiles()Z

    goto/16 :goto_1

    .line 333
    :pswitch_2
    invoke-static {}, Lcom/android/providers/downloads/ui/DownloadList;->access$1400()Lcom/android/providers/downloads/ui/DownloadAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getCount()I

    move-result v20

    .line 335
    .local v20, count:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 336
    invoke-static {}, Lcom/android/providers/downloads/ui/DownloadList;->access$1400()Lcom/android/providers/downloads/ui/DownloadAdapter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move/from16 v1, v22

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 337
    .local v27, v:Landroid/view/View;
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/providers/downloads/ui/DownloadItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    .line 338
    check-cast v27, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local v27           #v:Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 335
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 344
    .end local v20           #count:I
    .end local v22           #i:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v25

    .line 345
    .local v25, lv2:Landroid/widget/ListView;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v17

    .line 346
    .local v17, checkedPositionList2:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseBooleanArray;->size()I

    move-result v19

    .line 347
    .local v19, checkedPositionListSize2:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 348
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 349
    .local v9, position2:I
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 350
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 351
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 347
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 354
    .end local v9           #position2:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 356
    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x7f090012
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 296
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v1, p1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1102(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 299
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1102(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 285
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->isCurrentViewExpandableListView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 368
    .local v0, ev:Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 369
    .local v1, pos:J
    if-eqz p5, :cond_0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_0

    .line 372
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    .line 377
    .end local v0           #ev:Landroid/widget/ExpandableListView;
    .end local v1           #pos:J
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3, p1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method
