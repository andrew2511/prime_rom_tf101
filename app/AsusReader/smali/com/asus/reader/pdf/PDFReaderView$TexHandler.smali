.class public final Lcom/asus/reader/pdf/PDFReaderView$TexHandler;
.super Landroid/os/Handler;
.source "PDFReaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/pdf/PDFReaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "TexHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFReaderView;


# direct methods
.method public constructor <init>(Lcom/asus/reader/pdf/PDFReaderView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    .line 1039
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1040
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 1043
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1153
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1045
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFReaderView;->isQuit:Z

    goto :goto_0

    .line 1049
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    move-object v0, v4

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move/from16 v19, v0

    .line 1050
    .local v19, loadPage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    move-object v0, v4

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    move/from16 v20, v0

    .line 1051
    .local v20, pageID:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    const/16 v4, 0x9

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    aget v4, v4, v16

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_1

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/asus/reader/pdf/PDFPage;->getIDs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    aget v5, v5, v16

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFRenderer;->mReloadPage:Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Lcom/asus/reader/pdf/PDFRenderer;->mReloadPageNumber:I

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$400(Lcom/asus/reader/pdf/PDFReaderView;)V

    goto/16 :goto_0

    .line 1051
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1061
    :cond_2
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aget v4, v4, v19

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 1064
    const/16 v16, 0x0

    :goto_2
    const/4 v4, 0x4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 1065
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v4, v4, v16

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    move/from16 v0, v20

    move-object v1, v4

    iput v0, v1, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v4, v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFCache;->cachePage:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v4, v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v5, v5, v16

    iput v5, v4, Lcom/asus/reader/pdf/PDFPage;->bPage:I

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFRenderer;->mLoadBitmap:Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$400(Lcom/asus/reader/pdf/PDFReaderView;)V

    goto/16 :goto_0

    .line 1064
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1075
    .end local v16           #i:I
    .end local v19           #loadPage:I
    .end local v20           #pageID:I
    :cond_4
    :pswitch_3
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v4, v4, v5

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v4, :cond_5

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v0, v4

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move/from16 v21, v0

    .line 1077
    .local v21, pageNo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v7, v5, v21

    double-to-float v5, v7

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v7, v6, v21

    double-to-float v6, v7

    move-object v0, v4

    move/from16 v1, v21

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/asus/reader/pdf/PDFPage;->mLowPagePath:Ljava/lang/String;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFRenderer;->mChangeWhitePage:Z

    .line 1081
    .end local v21           #pageNo:I
    :cond_5
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v4, v4, v5

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v4, :cond_6

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v0, v4

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move/from16 v21, v0

    .line 1083
    .restart local v21       #pageNo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v7, v5, v21

    double-to-float v5, v7

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v7, v6, v21

    double-to-float v6, v7

    move-object v0, v4

    move/from16 v1, v21

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/asus/reader/pdf/PDFPage;->mLowPagePath:Ljava/lang/String;

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFRenderer;->mChangeWhitePage:Z

    .line 1087
    .end local v21           #pageNo:I
    :cond_6
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v4, v4, v5

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v4, :cond_7

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    move-object v0, v4

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move/from16 v21, v0

    .line 1089
    .restart local v21       #pageNo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v7, v5, v21

    double-to-float v5, v7

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v7, v6, v21

    double-to-float v6, v7

    move-object v0, v4

    move/from16 v1, v21

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/asus/reader/pdf/PDFPage;->mLowPagePath:Ljava/lang/String;

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/asus/reader/pdf/PDFRenderer;->mChangeWhitePage:Z

    .line 1093
    .end local v21           #pageNo:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$400(Lcom/asus/reader/pdf/PDFReaderView;)V

    goto/16 :goto_0

    .line 1096
    :pswitch_4
    const/16 v17, -0x1

    .line 1097
    .local v17, index:I
    const/4 v4, 0x4

    new-array v12, v4, [I

    .line 1098
    .local v12, Location:[I
    const/4 v4, 0x4

    new-array v13, v4, [I

    .line 1099
    .local v13, PageNo:[I
    const/4 v4, 0x4

    new-array v14, v4, [I

    .line 1100
    .local v14, Scale:[I
    const/4 v4, 0x4

    new-array v15, v4, [I

    .line 1103
    .local v15, cacheValue:[I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    const/4 v4, 0x4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_8

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v16

    iget v4, v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    aput v4, v12, v16

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v16

    iget v4, v4, Lcom/asus/reader/pdf/PDFHPage;->mPageNo:I

    aput v4, v13, v16

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v16

    iget-wide v7, v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageScale:D

    double-to-int v4, v7

    aput v4, v14, v16

    .line 1107
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    aget v5, v13, v16

    aget v6, v12, v16

    aget v7, v14, v16

    invoke-virtual {v4, v5, v6, v7}, Lcom/asus/reader/pdf/PDFCache;->partialPageCacheLoc(III)I

    move-result v4

    aput v4, v15, v16

    .line 1103
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1110
    :cond_8
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    const/16 v4, 0x54

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_11

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-nez v4, :cond_0

    .line 1114
    :cond_9
    const/16 v16, 0x0

    :goto_5
    const/4 v4, 0x4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_a

    .line 1115
    aget v4, v15, v16

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v5, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v5, v5, v18

    if-ne v4, v5, :cond_e

    .line 1116
    aget v4, v15, v16

    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    aget-boolean v4, v4, v16

    if-nez v4, :cond_a

    aget v4, v12, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v16

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-ne v4, v5, :cond_a

    aget v4, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v5, v0

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-ne v4, v5, :cond_a

    aget v4, v14, v16

    int-to-double v7, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    iget-wide v9, v4, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    cmpl-double v4, v7, v9

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/asus/reader/pdf/PDFReaderView;->isQuit:Z

    if-eqz v4, :cond_b

    .line 1110
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1119
    :cond_b
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aget v4, v4, v18

    aget v5, v15, v16

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v16

    iget-boolean v4, v4, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-nez v4, :cond_e

    .line 1120
    move/from16 v17, v16

    .line 1121
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    double-to-float v4, v7

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    double-to-float v5, v7

    div-float v5, v4, v5

    .line 1122
    .local v5, width:F
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    double-to-float v4, v7

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    double-to-float v6, v7

    div-float v6, v4, v6

    .line 1123
    .local v6, height:F
    aget v4, v12, v17

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    rem-int/2addr v4, v7

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v7, v9

    double-to-int v7, v7

    if-ne v4, v7, :cond_c

    .line 1124
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->mModWidth:D

    double-to-float v4, v7

    mul-float/2addr v5, v4

    .line 1126
    :cond_c
    aget v4, v12, v17

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    div-int/2addr v4, v7

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v7, v9

    double-to-int v7, v7

    if-ne v4, v7, :cond_d

    .line 1127
    sget-object v4, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->mModHeight:D

    double-to-float v4, v7

    mul-float/2addr v6, v4

    .line 1130
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.asus.reader/cache/hpage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v4, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_10

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v7, v0

    invoke-static {v7}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v7

    iget-object v7, v7, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v7, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v8, v0

    invoke-static {v8}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v8

    iget-object v8, v8, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v8, v8, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v9, v0

    invoke-static {v9}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v9

    iget-object v9, v9, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    sget-object v10, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v10, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v11, v0

    invoke-static {v11}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v11

    iget-object v11, v11, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v11, v11, Lcom/asus/reader/pdf/PDFPage;->scale:F

    invoke-virtual/range {v4 .. v11}, Lcom/asus/reader/pdf/PDFHPage;->changeSize(FFFFFFF)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    aget v5, v13, v17

    .end local v5           #width:F
    iput v5, v4, Lcom/asus/reader/pdf/PDFHPage;->bmPageNo:I

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    aget v5, v12, v17

    iput v5, v4, Lcom/asus/reader/pdf/PDFHPage;->bmPageLoc:I

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    aget v5, v14, v17

    iput v5, v4, Lcom/asus/reader/pdf/PDFHPage;->bmPageScale:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v5, v13, v17

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v17

    iget v4, v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    aget v5, v12, v17

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v16

    iget-wide v7, v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageScale:D

    aget v4, v14, v17

    int-to-double v9, v4

    cmpl-double v4, v7, v9

    if-nez v4, :cond_f

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v17

    .line 1114
    .end local v6           #height:F
    :cond_e
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 1139
    .restart local v6       #height:F
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    goto :goto_6

    .line 1142
    .restart local v5       #width:F
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    goto :goto_6

    .line 1149
    .end local v5           #width:F
    .end local v6           #height:F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$400(Lcom/asus/reader/pdf/PDFReaderView;)V

    .line 1150
    const-string v4, "PDFReaderView"

    const-string v5, "***************LOAD_BITMAP****************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
