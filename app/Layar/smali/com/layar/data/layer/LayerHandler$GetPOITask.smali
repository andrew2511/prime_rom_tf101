.class Lcom/layar/data/layer/LayerHandler$GetPOITask;
.super Landroid/os/AsyncTask;
.source "LayerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPOITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/layar/data/layer/LayerManager$POIResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private curLoc:Landroid/location/Location;

.field mDownloadListener:Lcom/layar/data/DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/POI;",
            ">;"
        }
    .end annotation
.end field

.field private queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layar/data/layer/LayerHandler;


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/DownloadListener;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p2, downloadListener:Lcom/layar/data/DownloadListener;,"Lcom/layar/data/DownloadListener<Lcom/layar/data/POI;>;"
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    .line 597
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 598
    iput-object p2, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->mDownloadListener:Lcom/layar/data/DownloadListener;

    return-void
.end method

.method static synthetic access$3(Lcom/layar/data/layer/LayerHandler$GetPOITask;)Lcom/layar/data/layer/LayerHandler;
    .locals 1
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    return-object v0
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->doInBackground([Ljava/lang/Void;)[Lcom/layar/data/layer/LayerManager$POIResponse;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/layar/data/layer/LayerManager$POIResponse;
    .locals 20
    .parameter "params"

    .prologue
    .line 639
    const/4 v8, 0x0

    .line 640
    .local v8, count:I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    .local v4, tempPOIList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/POI;>;"
    new-instance v11, Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    .local v11, filteredPOIList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/POI;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v2}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/data/layer/LayerHandler$GetPOITask;->curLoc:Landroid/location/Location;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->curLoc:Landroid/location/Location;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 645
    const/4 v2, 0x0

    .line 772
    .end local p0
    .end local p1
    :goto_0
    return-object v2

    .line 646
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v10, errorResponses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/LayerManager$POIResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v3

    .line 649
    .local v3, layer:Lcom/layar/data/layer/Layer20;
    const/4 v13, 0x0

    .line 651
    .local v13, page:I
    const/16 v12, 0x5a

    .line 652
    .local v12, max:I
    new-instance v15, Lcom/layar/data/layer/LayerManager$POIResponse;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lcom/layar/data/layer/LayerManager$POIResponse;-><init>(I)V

    .line 654
    .end local p1
    .local v15, poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 655
    iget-object v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->pageKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->curLoc:Landroid/location/Location;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->queryParams:Ljava/util/Map;

    move-object v7, v0

    .line 654
    invoke-virtual/range {v2 .. v7}, Lcom/layar/data/layer/LayerManager;->fetchPOI(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;Ljava/lang/String;Landroid/location/Location;Ljava/util/Map;)Lcom/layar/data/layer/LayerManager$POIResponse;

    move-result-object v15

    .line 656
    if-nez v15, :cond_2

    .line 657
    const/4 v2, 0x0

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {v15}, Lcom/layar/data/layer/LayerManager$POIResponse;->getResponseCode()I

    move-result v17

    .line 659
    .local v17, resonseCode:I
    if-nez v13, :cond_4

    .line 660
    if-eqz v17, :cond_4

    .line 661
    const/16 v2, 0x1e

    move/from16 v0, v17

    move v1, v2

    if-eq v0, v1, :cond_3

    .line 662
    const/16 v2, 0x14

    move/from16 v0, v17

    move v1, v2

    if-lt v0, v1, :cond_4

    .line 663
    const/16 v2, 0x1d

    move/from16 v0, v17

    move v1, v2

    if-gt v0, v1, :cond_4

    .line 666
    :cond_3
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-virtual {v15}, Lcom/layar/data/layer/LayerManager$POIResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    .line 668
    .local v9, errorMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v2, v9}, Lcom/layar/util/StatusHelper;->setError(Ljava/lang/CharSequence;)V

    .line 670
    .end local v9           #errorMessage:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    invoke-static {v2}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v2

    iget-object v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->refresh:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v2, v5}, Lcom/layar/data/layer/LayerRefresher;->set(Lcom/layar/data/layer/LayerRefresher;)V

    .line 671
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    .line 701
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 702
    move-object/from16 v18, v4

    .line 703
    .local v18, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/POI;>;"
    move-object v4, v11

    .line 704
    move-object/from16 v11, v18

    .line 706
    add-int/lit8 v13, v13, 0x1

    .line 709
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 710
    .local v16, pois:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 712
    .local v19, toDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_3
    if-lt v6, v5, :cond_11

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/layar/data/POI;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/layar/data/POI;

    move-object/from16 v0, p1

    move-object v1, v2

    iput-object v0, v1, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v5, v0

    invoke-static {v5}, Lcom/layar/data/layer/LayerHandler;->access$6(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/BasePOI$PoiComparator;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 735
    iget-boolean v2, v3, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    if-eqz v2, :cond_7

    .line 736
    iget v2, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->radius:I

    if-lez v2, :cond_13

    .line 737
    iget v2, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->radius:I

    iput v2, v3, Lcom/layar/data/layer/Layer20;->scope:I

    .line 749
    .end local v16           #pois:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/layar/data/POI;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/layar/data/POI;

    move-object/from16 v0, p1

    move-object v1, v2

    iput-object v0, v1, Lcom/layar/data/layer/LayerHandler;->poisToDelete:[Lcom/layar/data/POI;

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 752
    iget-object v2, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->actions:Ljava/util/ArrayList;

    iget-object v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 756
    :cond_8
    iget-object v2, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    if-eqz v2, :cond_9

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->dialog:Lcom/layar/data/ActionsDialogData;

    iput-object v5, v2, Lcom/layar/data/layer/LayerHandler;->dialogData:Lcom/layar/data/DialogData;

    .line 760
    :cond_9
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->publishProgress([Ljava/lang/Object;)V

    .line 762
    iget-object v2, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 766
    new-instance v2, Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v5, v0

    iget-object v6, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->message:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;-><init>(Lcom/layar/data/layer/LayerHandler;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 768
    :cond_a
    if-ge v8, v12, :cond_b

    iget-object v2, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->pageKey:Ljava/lang/String;

    if-eqz v2, :cond_b

    const/16 v2, 0xa

    if-lt v13, v2, :cond_1

    .line 770
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 771
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/layar/data/layer/LayerManager$POIResponse;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/layar/data/layer/LayerManager$POIResponse;

    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 671
    .end local v18           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/POI;>;"
    .end local v19           #toDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    .restart local p0
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/layar/data/POI;

    .line 673
    .local v14, poi:Lcom/layar/data/POI;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v12, :cond_6

    .line 677
    if-eqz v14, :cond_5

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->curLoc:Landroid/location/Location;

    move-object v5, v0

    invoke-virtual {v14, v5}, Lcom/layar/data/POI;->calcutePosition(Landroid/location/Location;)V

    .line 684
    iget-boolean v5, v3, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    if-eqz v5, :cond_e

    .line 685
    iget v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->radius:I

    if-lez v5, :cond_d

    .line 686
    iget v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->radius:I

    invoke-virtual {v14, v5}, Lcom/layar/data/POI;->getDisplayPart(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 687
    :cond_d
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 690
    :cond_e
    iget v5, v3, Lcom/layar/data/layer/Layer20;->scope:I

    invoke-virtual {v14, v5}, Lcom/layar/data/POI;->getDisplayPart(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 691
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 712
    .end local v14           #poi:Lcom/layar/data/POI;
    .restart local v16       #pois:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    .restart local v18       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/POI;>;"
    .restart local v19       #toDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/layar/data/POI;

    .line 713
    .restart local v14       #poi:Lcom/layar/data/POI;
    iget-object v5, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->delete:Ljava/util/HashSet;

    iget-object v6, v14, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 714
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 716
    :cond_10
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 723
    .end local v14           #poi:Lcom/layar/data/POI;
    :cond_11
    aget-object v14, v2, v6

    .line 724
    .restart local v14       #poi:Lcom/layar/data/POI;
    iget-object v7, v15, Lcom/layar/data/layer/LayerManager$POIResponse;->delete:Ljava/util/HashSet;

    iget-object v9, v14, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 725
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 739
    .end local v14           #poi:Lcom/layar/data/POI;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v2, v2, v5

    iget v2, v2, Lcom/layar/data/POI;->geodistance:I

    int-to-double v5, v2

    const-wide v16, 0x3ff0cccccccccccdL

    mul-double v5, v5, v16

    double-to-int v2, v5

    iput v2, v3, Lcom/layar/data/layer/Layer20;->scope:I

    .line 741
    .end local v16           #pois:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/layar/data/POI;>;"
    iget v2, v3, Lcom/layar/data/layer/Layer20;->scope:I

    const/16 v5, 0x1e

    if-ge v2, v5, :cond_7

    .line 742
    const/16 v2, 0x1e

    iput v2, v3, Lcom/layar/data/layer/Layer20;->scope:I

    goto/16 :goto_4

    .line 772
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    const-string v1, "POI"

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->finishProgress(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/layar/data/layer/LayerManager$POIResponse;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->onPostExecute([Lcom/layar/data/layer/LayerManager$POIResponse;)V

    return-void
.end method

.method protected onPostExecute([Lcom/layar/data/layer/LayerManager$POIResponse;)V
    .locals 11
    .parameter "responses"

    .prologue
    const/4 v10, 0x1

    .line 793
    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v5, v5, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    const-string v6, "POI"

    invoke-virtual {v5, v6}, Lcom/layar/util/StatusHelper;->finishProgress(Ljava/lang/String;)V

    .line 794
    if-eqz p1, :cond_0

    .line 795
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 838
    :cond_0
    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v5}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v5

    iget-object v6, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->curLoc:Landroid/location/Location;

    invoke-virtual {v5, v6}, Lcom/layar/data/layer/LayerRefresher;->resetLocation(Landroid/location/Location;)V

    .line 839
    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v5}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layar/data/layer/LayerRefresher;->resetTime()V

    .line 841
    new-instance v5, Lcom/layar/data/layer/LayerHandler$GetPOITask$1;

    invoke-direct {v5, p0}, Lcom/layar/data/layer/LayerHandler$GetPOITask$1;-><init>(Lcom/layar/data/layer/LayerHandler$GetPOITask;)V

    invoke-static {v5}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 847
    :goto_1
    return-void

    .line 795
    :cond_1
    aget-object v3, p1, v6

    .line 796
    .local v3, response:Lcom/layar/data/layer/LayerManager$POIResponse;
    invoke-virtual {v3}, Lcom/layar/data/layer/LayerManager$POIResponse;->getResponseCode()I

    move-result v2

    .line 797
    .local v2, respCode:I
    if-eqz v2, :cond_2

    .line 798
    const/16 v7, 0x1e

    if-ne v2, v7, :cond_4

    .line 799
    iget-object v7, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v7}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 800
    .local v1, layer:Lcom/layar/data/layer/Layer20;
    iget-boolean v7, v1, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    if-eqz v7, :cond_3

    .line 804
    iget-object v7, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v7, v7, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v8, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v8, v8, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    .line 805
    const v9, 0x7f0900f9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 804
    invoke-virtual {v7, v8}, Lcom/layar/util/StatusHelper;->setStatus(Ljava/lang/CharSequence;)V

    .line 795
    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 810
    .restart local v1       #layer:Lcom/layar/data/layer/Layer20;
    :cond_3
    iput-boolean v10, v1, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    .line 812
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v5

    .line 813
    iget-object v6, v1, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    iget-object v7, v1, Lcom/layar/data/layer/Layer20;->authParams:Ljava/lang/String;

    .line 812
    invoke-virtual {v5, v6, v7}, Lcom/layar/util/UriHelper;->appendActionParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v5, v5, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    const-class v6, Lcom/layar/DetailsViewActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v0, i:Landroid/content/Intent;
    const-string v5, "UrlToOpen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v5, "Title"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    const-string v7, " - Home"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 819
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 826
    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v5, v5, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 829
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    .end local v4           #url:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->mDownloadListener:Lcom/layar/data/DownloadListener;

    if-eqz v7, :cond_5

    .line 830
    iget-object v7, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->mDownloadListener:Lcom/layar/data/DownloadListener;

    invoke-interface {v7, v2}, Lcom/layar/data/DownloadListener;->onDownloadingError(I)V

    goto :goto_2

    .line 832
    :cond_5
    iget-object v7, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v7, v7, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v10}, Lcom/layar/ActivityHelper;->downloadErrorHandling(Landroid/content/Context;IZ)Z

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 622
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v4}, Lcom/layar/util/StatusHelper;->setError(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    const-string v1, "POI"

    .line 624
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v2, v2, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0900fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 623
    invoke-virtual {v0, v1, v2}, Lcom/layar/util/StatusHelper;->addProgress(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v0}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerRefresher;->doFullRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/layar/data/POI;

    iput-object v1, v0, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    .line 627
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v0, v4}, Lcom/layar/data/layer/LayerHandler;->access$5(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/BasePOI;)V

    .line 628
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->clearFocusLock()V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->notifyDataUpdateStarted()V

    .line 632
    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v1, v1, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 786
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%num%"

    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, v3, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setStatus(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->notifyDataChanged()V

    .line 789
    return-void
.end method

.method public setQueryParams(Ljava/lang/String;)V
    .locals 9
    .parameter "queryString"

    .prologue
    const/4 v8, 0x0

    .line 602
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->queryParams:Ljava/util/Map;

    .line 604
    if-eqz p1, :cond_0

    .line 605
    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, params:[Ljava/lang/String;
    array-length v3, v2

    move v4, v8

    :goto_0
    if-lt v4, v3, :cond_1

    .line 616
    .end local v2           #params:[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->queryParams:Ljava/util/Map;

    const-string v4, "action"

    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v5}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layar/data/layer/LayerRefresher;->doFullRefresh()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "refresh"

    :goto_1
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    return-void

    .line 606
    .restart local v2       #params:[Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v4

    .line 607
    .local v1, param:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, keyValue:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 612
    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask;->queryParams:Ljava/util/Map;

    aget-object v6, v0, v8

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    .end local v0           #keyValue:[Ljava/lang/String;
    .end local v1           #param:Ljava/lang/String;
    .end local v2           #params:[Ljava/lang/String;
    :cond_3
    const-string v5, "update"

    goto :goto_1
.end method
