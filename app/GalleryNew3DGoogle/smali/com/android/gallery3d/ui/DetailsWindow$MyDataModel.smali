.class Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;
.super Ljava/lang/Object;
.source "DetailsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModel"
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/Texture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 5
    .parameter
    .parameter "details"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$300(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, context:Landroid/content/Context;
    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$402(Lcom/android/gallery3d/ui/DetailsWindow;I)I

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaDetails;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    .line 245
    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$500(Lcom/android/gallery3d/ui/DetailsWindow;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$600(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->setTitle(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->setDetails(Landroid/content/Context;Lcom/android/gallery3d/data/MediaDetails;)V

    .line 248
    return-void
.end method

.method private getLocationText([D)Ljava/lang/String;
    .locals 7
    .parameter "latlng"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 318
    const-string v1, "(%f, %f)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aget-wide v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    aget-wide v3, p1, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/DetailsWindow;->access$300(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-direct {v3, v4, p1}, Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;-><init>(Lcom/android/gallery3d/ui/DetailsWindow;[D)V

    new-instance v4, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel$1;-><init>(Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/DetailsWindow;->access$902(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 330
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/DetailsWindow;->access$402(Lcom/android/gallery3d/ui/DetailsWindow;I)I

    .line 331
    return-object v0
.end method

.method private setDetails(Landroid/content/Context;Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 21
    .parameter "context"
    .parameter "details"

    .prologue
    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 253
    .local v3, detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 297
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 299
    .local v12, valueObj:Ljava/lang/Object;
    if-eqz v12, :cond_4

    const/4 v13, 0x1

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'s value is NULL"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/gallery3d/util/Utils;->Assert(ZLjava/lang/String;)V

    .line 301
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 304
    .end local v12           #valueObj:Ljava/lang/Object;
    .local v11, value:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 305
    .local v7, key:I
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->hasUnit(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 306
    const-string v13, "%s : %s %s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->getUnit(I)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 311
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/gallery3d/ui/DetailsWindow;->access$800(Lcom/android/gallery3d/ui/DetailsWindow;)I

    move-result v13

    const/high16 v14, 0x4190

    const/4 v15, -0x1

    invoke-static {v11, v13, v14, v15}, Lcom/android/gallery3d/ui/MultiLineTexture;->newInstance(Ljava/lang/String;IFI)Lcom/android/gallery3d/ui/MultiLineTexture;

    move-result-object v8

    .line 313
    .local v8, label:Lcom/android/gallery3d/ui/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 255
    .end local v7           #key:I
    .end local v8           #label:Lcom/android/gallery3d/ui/Texture;
    .end local v11           #value:Ljava/lang/String;
    .restart local v3       #detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :sswitch_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    check-cast v4, [D

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->getLocationText([D)Ljava/lang/String;

    move-result-object v11

    .line 256
    .restart local v11       #value:Ljava/lang/String;
    goto :goto_2

    .line 259
    .end local v11           #value:Ljava/lang/String;
    :sswitch_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p1

    move-wide v1, v13

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 261
    .restart local v11       #value:Ljava/lang/String;
    goto :goto_2

    .line 264
    .end local v11           #value:Ljava/lang/String;
    :sswitch_2
    const-string v13, "1"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const v13, 0x7f080052

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 267
    .restart local v11       #value:Ljava/lang/String;
    :goto_4
    goto/16 :goto_2

    .line 264
    .end local v11           #value:Ljava/lang/String;
    :cond_1
    const v13, 0x7f080053

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    goto :goto_4

    .line 270
    :sswitch_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    .line 274
    .local v4, flash:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 275
    const v13, 0x7f080054

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #value:Ljava/lang/String;
    goto/16 :goto_2

    .line 277
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    const v13, 0x7f080055

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 279
    .restart local v11       #value:Ljava/lang/String;
    goto/16 :goto_2

    .line 282
    .end local v4           #flash:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    .end local v11           #value:Ljava/lang/String;
    :sswitch_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 283
    .restart local v11       #value:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 284
    .local v9, time:D
    const-wide/high16 v13, 0x3ff0

    cmpg-double v13, v9, v13

    if-gez v13, :cond_3

    .line 285
    const-string v13, "1/%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-wide/high16 v16, 0x3fe0

    const-wide/high16 v18, 0x3ff0

    div-double v18, v18, v9

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 287
    :cond_3
    double-to-int v6, v9

    .line 288
    .local v6, integer:I
    int-to-double v13, v6

    sub-double/2addr v9, v13

    .line 289
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 290
    const-wide v13, 0x3f1a36e2eb1c432dL

    cmpl-double v13, v9, v13

    if-lez v13, :cond_0

    .line 291
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " 1/%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/high16 v17, 0x3fe0

    const-wide/high16 v19, 0x3ff0

    div-double v19, v19, v9

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 299
    .end local v6           #integer:I
    .end local v9           #time:D
    .end local v11           #value:Ljava/lang/String;
    .restart local v12       #valueObj:Ljava/lang/Object;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 309
    .end local v3           #detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v12           #valueObj:Ljava/lang/Object;
    .restart local v7       #key:I
    .restart local v11       #value:Ljava/lang/String;
    :cond_5
    const-string v13, "%s : %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 315
    .end local v7           #key:I
    .end local v11           #value:Ljava/lang/String;
    :cond_6
    return-void

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x66 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public getView(I)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "index"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/Texture;

    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateLocation(Landroid/location/Address;)V
    .locals 12
    .parameter "address"

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 335
    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->access$400(Lcom/android/gallery3d/ui/DetailsWindow;)I

    move-result v3

    .line 336
    .local v3, index:I
    if-eqz p1, :cond_4

    if-ltz v3, :cond_4

    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 337
    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/DetailsWindow;->access$300(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 338
    .local v1, context:Landroid/content/Context;
    const/16 v6, 0x9

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x5

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x7

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x8

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 350
    .local v4, parts:[Ljava/lang/String;
    const-string v0, ""

    .line 351
    .local v0, addressText:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 352
    aget-object v6, v4, v2

    if-eqz v6, :cond_0

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 358
    :cond_3
    const-string v6, "%s : %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v11}, Lcom/android/gallery3d/ui/DetailsWindow;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, text:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;->this$0:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-static {v7}, Lcom/android/gallery3d/ui/DetailsWindow;->access$800(Lcom/android/gallery3d/ui/DetailsWindow;)I

    move-result v7

    const/high16 v8, 0x4190

    const/4 v9, -0x1

    invoke-static {v5, v7, v8, v9}, Lcom/android/gallery3d/ui/MultiLineTexture;->newInstance(Ljava/lang/String;IFI)Lcom/android/gallery3d/ui/MultiLineTexture;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v0           #addressText:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #i:I
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_4
    return-void
.end method
