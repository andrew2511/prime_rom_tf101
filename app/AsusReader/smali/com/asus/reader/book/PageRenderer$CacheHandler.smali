.class final Lcom/asus/reader/book/PageRenderer$CacheHandler;
.super Landroid/os/Handler;
.source "PageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/PageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/PageRenderer;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/PageRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    .line 1096
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1097
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1101
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1142
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1103
    .restart local p0
    :pswitch_0
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v8}, Lcom/asus/reader/book/PageRenderer;->access$200(Lcom/asus/reader/book/PageRenderer;)I

    move-result v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v10}, Lcom/asus/reader/book/PageRenderer;->access$300(Lcom/asus/reader/book/PageRenderer;)Z

    move-result v10

    invoke-virtual {v7, v8, v9, v10, p0}, Lcom/asus/reader/Cache;->StartCaching(ILjava/lang/Object;ZLandroid/os/Handler;)V

    goto :goto_0

    .line 1106
    :pswitch_1
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7, v9}, Lcom/asus/reader/book/PageRenderer;->access$402(Lcom/asus/reader/book/PageRenderer;Z)Z

    .line 1107
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1108
    .local v5, pageNo:I
    const-string v7, "PageRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACHING PageNo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v8}, Lcom/asus/reader/book/PageRenderer;->access$200(Lcom/asus/reader/book/PageRenderer;)I

    move-result v8

    iget-object v9, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v9}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v9

    iget v9, v9, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    iget-object v10, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v10}, Lcom/asus/reader/book/PageRenderer;->access$300(Lcom/asus/reader/book/PageRenderer;)Z

    move-result v10

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/asus/reader/Cache;->DoCache(IIIZ)V

    .line 1110
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7, v11}, Lcom/asus/reader/book/PageRenderer;->access$402(Lcom/asus/reader/book/PageRenderer;Z)Z

    goto :goto_0

    .line 1113
    .end local v5           #pageNo:I
    :pswitch_2
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7, v9}, Lcom/asus/reader/book/PageRenderer;->access$402(Lcom/asus/reader/book/PageRenderer;Z)Z

    .line 1114
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asus/reader/book/BookSurfaceView;->ScanDocumentNative()V

    .line 1115
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v7

    iget v7, v7, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    sput v7, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    .line 1116
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$100(Lcom/asus/reader/book/PageRenderer;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v7}, Lcom/asus/reader/book/BookViewActivity;->getPageSeekBar()Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v6

    .line 1117
    .local v6, seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    if-eqz v6, :cond_1

    .line 1118
    sget v7, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    invoke-virtual {v6, v7}, Lcom/asus/reader/ui/PageSeekBar2;->setMax(I)V

    .line 1119
    :cond_1
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7, v11}, Lcom/asus/reader/book/PageRenderer;->access$402(Lcom/asus/reader/book/PageRenderer;Z)Z

    goto/16 :goto_0

    .line 1122
    .end local v6           #seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    :pswitch_3
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$300(Lcom/asus/reader/book/PageRenderer;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "Landscape/"

    move-object v4, v7

    .line 1123
    .local v4, mode:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.asus.reader/cache/bookid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v8}, Lcom/asus/reader/book/PageRenderer;->access$200(Lcom/asus/reader/book/PageRenderer;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, dirname:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7, v9, v11}, Lcom/asus/reader/book/PageRenderer;->access$500(Lcom/asus/reader/book/PageRenderer;II)V

    .line 1126
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1128
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1129
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v8}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v8

    iget v8, v8, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 1135
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :goto_2
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v9}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v9

    iget v9, v9, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/asus/reader/book/BookSurfaceView;->SaveScanResultsNative(Ljava/lang/String;)V

    .line 1136
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$100(Lcom/asus/reader/book/PageRenderer;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/book/BookViewActivity;

    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity;->mSeekBarPanelHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1122
    .end local v1           #dirname:Ljava/lang/String;
    .end local v4           #mode:Ljava/lang/String;
    .restart local p0
    :cond_3
    const-string v7, "Portrait/"

    move-object v4, v7

    goto/16 :goto_1

    .line 1132
    .restart local v1       #dirname:Ljava/lang/String;
    .restart local v4       #mode:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1133
    .local v2, e:Ljava/lang/SecurityException;
    const-string v7, "PageRenderer"

    const-string v8, "cannot create bookid DIR"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1139
    .end local v1           #dirname:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/SecurityException;
    .end local v4           #mode:Ljava/lang/String;
    :pswitch_4
    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v7}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer$CacheHandler;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v8}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v8

    iget v8, v8, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-virtual {v7, v8}, Lcom/asus/reader/book/BookSurfaceView;->navigateToPageNative(I)V

    goto/16 :goto_0

    .line 1101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
