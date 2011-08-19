.class Lcom/asus/reader/book/BookViewActivity$19;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity$19;->val$text:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2116
    .local v6, note:Ljava/lang/String;
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save the annotation of text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_2

    .line 2118
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/BookmarkUtility;->setNewHighlight()[Ljava/lang/String;

    move-result-object v11

    .line 2119
    .local v11, location:[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 2120
    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2121
    .local v8, highlight_index:I
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    const v0, 0xffff00

    invoke-static {v8, v0}, Lcom/asus/reader/book/BookSurfaceView;->setHighlightColorNative(II)V

    .line 2122
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v4

    .line 2123
    .local v4, location_value:D
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->createPageInfo(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;

    move-result-object v1

    .line 2124
    .local v1, pageInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v2, 0x1

    aget-object v2, v11, v2

    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->insertAnnotation(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2126
    .end local v1           #pageInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2140
    .end local v4           #location_value:D
    .end local v8           #highlight_index:I
    .end local v11           #location:[Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 2141
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 2142
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 2143
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2144
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2145
    return-void

    .line 2129
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_HIGHLIGHT:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_1

    .line 2130
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity;->access$6700(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;I)I

    move-result v10

    .line 2131
    .local v10, index:I
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 2132
    .local v9, highlight_loc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "start"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2133
    .local v12, start:Ljava/lang/String;
    const-string v0, "end"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2134
    .local v7, end:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    const v1, 0xffff00

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookSurfaceView;->setHighlightColorNative(II)V

    .line 2135
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v1

    invoke-static {v0, v1, v12, v7, v6}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->updateHighLightToNote(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2137
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$3800(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2138
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$19;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    goto/16 :goto_0
.end method
