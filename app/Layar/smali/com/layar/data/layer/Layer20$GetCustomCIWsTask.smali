.class public Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;
.super Landroid/os/AsyncTask;
.source "Layer20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/Layer20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCustomCIWsTask"
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
.field final synthetic this$0:Lcom/layar/data/layer/Layer20;


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x4

    .line 353
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    .line 354
    iget-object v5, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v4, v4, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    array-length v4, v4

    filled-new-array {v4, v8}, [I

    move-result-object v4

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Landroid/graphics/Bitmap;

    invoke-static {v5, v4}, Lcom/layar/data/layer/Layer20;->access$1(Lcom/layar/data/layer/Layer20;[[Landroid/graphics/Bitmap;)V

    .line 358
    :cond_0
    const/4 v2, 0x0

    .line 359
    .local v2, state:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, t:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v4, v4, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 392
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 360
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v8, :cond_2

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_2
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v4, v4, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    aget-object v4, v4, v3

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_5

    .line 362
    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_3
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v5, v5, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Lcom/layar/data/ImageCache;->readCiwImage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 378
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    if-nez v4, :cond_3

    .line 379
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v5, v5, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Lcom/layar/data/ImageCache;->downloadCiwImage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 382
    :cond_3
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    if-nez v4, :cond_4

    .line 383
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v5, v5, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x1

    invoke-static {v5, v6, v2, v7}, Lcom/layar/data/ImageCache;->readCiwImage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 384
    :cond_4
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    if-nez v4, :cond_5

    .line 385
    iget-object v4, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    invoke-static {v4}, Lcom/layar/data/layer/Layer20;->access$0(Lcom/layar/data/layer/Layer20;)[[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/layar/data/layer/Layer20$GetCustomCIWsTask;->this$0:Lcom/layar/data/layer/Layer20;

    iget-object v5, v5, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x1

    invoke-static {v5, v6, v2, v7}, Lcom/layar/data/ImageCache;->downloadCiwImage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 360
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 364
    :pswitch_0
    const-string v2, "inner"

    .line 365
    goto :goto_3

    .line 367
    :pswitch_1
    const-string v2, "middle"

    .line 368
    goto/16 :goto_3

    .line 370
    :pswitch_2
    const-string v2, "outer"

    .line 371
    goto/16 :goto_3

    .line 373
    :pswitch_3
    const-string v2, "focus"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 388
    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 389
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "layar.Layer20"

    const-string v5, "Exception caught during loading of custom CIWs"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
