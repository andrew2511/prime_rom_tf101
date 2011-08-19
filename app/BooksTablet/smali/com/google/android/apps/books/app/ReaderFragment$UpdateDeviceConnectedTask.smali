.class Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;
.super Landroid/os/AsyncTask;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDeviceConnectedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mPage:Ljava/lang/Double;

.field private mResource:Ljava/lang/Double;

.field private mSection:Ljava/lang/Double;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2419
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method

.method private getDownloadedFraction(I)D
    .locals 3
    .parameter "mode"

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mSection:Ljava/lang/Double;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mResource:Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mPage:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method private isModeAvailable(IZZ)Z
    .locals 1
    .parameter "mode"
    .parameter "textAvailable"
    .parameter "imageAvailable"

    .prologue
    .line 2449
    packed-switch p1, :pswitch_data_0

    .line 2455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    move v0, p3

    .line 2453
    :goto_0
    return v0

    :pswitch_1
    move v0, p2

    goto :goto_0

    .line 2449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2419
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 2426
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 2428
    .local v7, volumeId:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2429
    .local v1, volumeUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/books/app/ReaderFragment$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2432
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2433
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mSection:Ljava/lang/Double;

    .line 2434
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mResource:Ljava/lang/Double;

    .line 2435
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->mPage:Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2438
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2441
    return-object v3

    .line 2438
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2419
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 13
    .parameter "result"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2461
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2462
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2465
    :cond_1
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v8

    if-nez v8, :cond_2

    move v7, v10

    .line 2466
    .local v7, validMetadata:Z
    :goto_1
    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v4

    .line 2467
    .local v4, deviceConnected:Z
    if-nez v4, :cond_0

    if-eqz v7, :cond_0

    .line 2469
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    if-eqz v8, :cond_3

    invoke-direct {p0, v10}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->getDownloadedFraction(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v10

    .line 2471
    .local v5, imageAvailable:Z
    :goto_2
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    if-eqz v8, :cond_4

    invoke-direct {p0, v12}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->getDownloadedFraction(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v10

    .line 2474
    .local v6, textAvailable:Z
    :goto_3
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2900(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)I

    move-result v1

    .line 2475
    .local v1, currentMode:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    move v3, v1

    .line 2476
    .local v3, desiredMode:I
    :goto_4
    invoke-direct {p0, v3, v6, v5}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->isModeAvailable(IZZ)Z

    move-result v2

    .line 2479
    .local v2, desiredAvailable:Z
    if-eqz v2, :cond_6

    .line 2481
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8, v3, v6, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4500(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V

    goto :goto_0

    .end local v1           #currentMode:I
    .end local v2           #desiredAvailable:Z
    .end local v3           #desiredMode:I
    .end local v4           #deviceConnected:Z
    .end local v5           #imageAvailable:Z
    .end local v6           #textAvailable:Z
    .end local v7           #validMetadata:Z
    :cond_2
    move v7, v11

    .line 2465
    goto :goto_1

    .restart local v4       #deviceConnected:Z
    .restart local v7       #validMetadata:Z
    :cond_3
    move v5, v11

    .line 2469
    goto :goto_2

    .restart local v5       #imageAvailable:Z
    :cond_4
    move v6, v11

    .line 2471
    goto :goto_3

    .line 2475
    .restart local v1       #currentMode:I
    .restart local v6       #textAvailable:Z
    :cond_5
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/books/model/VolumeMetadata;->getMode()I

    move-result v8

    move v3, v8

    goto :goto_4

    .line 2482
    .restart local v2       #desiredAvailable:Z
    .restart local v3       #desiredMode:I
    :cond_6
    if-eqz v6, :cond_7

    .line 2484
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8, v12, v6, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4500(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V

    goto :goto_0

    .line 2485
    :cond_7
    if-eqz v5, :cond_8

    .line 2487
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8, v10, v6, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4500(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V

    goto/16 :goto_0

    .line 2491
    :cond_8
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    new-instance v9, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    const-string v10, "unable to find available offline reading mode"

    invoke-direct {v9, v10}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
