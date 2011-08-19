.class Lcom/asus/reader/VibeActivity$1;
.super Landroid/os/Handler;
.source "VibeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/VibeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 188
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 293
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local p0
    :sswitch_0
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$000(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$CategoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$CategoryAdapter;->notifyDataSetChanged()V

    .line 191
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$100(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$000(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$CategoryAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/CategoryListView;->setAdapter(Landroid/widget/BaseExpandableListAdapter;)V

    .line 192
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v6}, Lcom/asus/reader/VibeActivity;->access$200(Lcom/asus/reader/VibeActivity;I)V

    .line 197
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/ui/VibeFunctionBar;->reset()V

    .line 198
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$100(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 199
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/asus/reader/ui/VibeFunctionBar;->setMainPosition(I)Z

    .line 200
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/asus/reader/ui/VibeFunctionBar;->setSPPosition(I)Z

    .line 201
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/asus/reader/ui/VibeFunctionBar;->setLoadingPosition(I)Z

    .line 202
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$400(Lcom/asus/reader/VibeActivity;)V

    .line 203
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$500(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/DragFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    goto :goto_0

    .line 206
    :sswitch_1
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 207
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/VibeAgent;->checkUnpaidContent()V

    .line 211
    :goto_1
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    invoke-static {v2, p0}, Lcom/asus/reader/VibeActivity;->access$700(Lcom/asus/reader/VibeActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 209
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/ui/VibeFunctionBar;->getLoadingPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/VibeFunctionBar;->setSubPosition(I)Z

    goto :goto_1

    .line 214
    :sswitch_2
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 216
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/util/LinkedCursor;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/asus/reader/util/LinkedCursor;

    invoke-virtual {v2, v3}, Lcom/asus/reader/util/LinkedCursor;->concatToEnd(Lcom/asus/reader/util/LinkedCursor;)V

    .line 217
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->notifyDataSetChanged()V

    .line 218
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v4}, Lcom/asus/reader/VibeActivity;->access$902(Lcom/asus/reader/VibeActivity;I)I

    goto/16 :goto_0

    .line 221
    :sswitch_3
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 223
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/util/LinkedCursor;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/asus/reader/util/LinkedCursor;

    invoke-virtual {v2, v3}, Lcom/asus/reader/util/LinkedCursor;->concatToFirst(Lcom/asus/reader/util/LinkedCursor;)I

    move-result v1

    .line 224
    .local v1, reservedPosition:I
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v4}, Lcom/asus/reader/VibeActivity;->access$902(Lcom/asus/reader/VibeActivity;I)I

    .line 225
    if-eq v1, v4, :cond_0

    .line 226
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1000(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/asus/reader/ui/BookGrid;->setSelection(I)V

    goto/16 :goto_0

    .line 229
    .end local v1           #reservedPosition:I
    :sswitch_4
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v7, v7}, Lcom/asus/reader/VibeActivity;->access$1100(Lcom/asus/reader/VibeActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :sswitch_5
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1200(Lcom/asus/reader/VibeActivity;)V

    goto/16 :goto_0

    .line 235
    :sswitch_6
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v5}, Lcom/asus/reader/VibeActivity;->access$1300(Lcom/asus/reader/VibeActivity;Z)V

    goto/16 :goto_0

    .line 238
    :sswitch_7
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v5}, Lcom/asus/reader/VibeActivity;->access$1400(Lcom/asus/reader/VibeActivity;Z)V

    goto/16 :goto_0

    .line 241
    :sswitch_8
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1500(Lcom/asus/reader/VibeActivity;)V

    .line 242
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/asus/reader/VibeActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 245
    :sswitch_9
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1500(Lcom/asus/reader/VibeActivity;)V

    .line 246
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1600(Lcom/asus/reader/VibeActivity;)V

    goto/16 :goto_0

    .line 249
    :sswitch_a
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1500(Lcom/asus/reader/VibeActivity;)V

    .line 250
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1700(Lcom/asus/reader/VibeActivity;)V

    goto/16 :goto_0

    .line 253
    :sswitch_b
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/asus/reader/VibeActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 256
    :sswitch_c
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1800(Lcom/asus/reader/VibeActivity;)V

    goto/16 :goto_0

    .line 259
    :sswitch_d
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/VibeAgent;->logout()V

    .line 260
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1500(Lcom/asus/reader/VibeActivity;)V

    .line 261
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1600(Lcom/asus/reader/VibeActivity;)V

    .line 262
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$1900(Lcom/asus/reader/VibeActivity;)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 265
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v4}, Lcom/asus/reader/VibeActivity;->access$902(Lcom/asus/reader/VibeActivity;I)I

    .line 266
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/asus/reader/VibeActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 267
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$400(Lcom/asus/reader/VibeActivity;)V

    goto/16 :goto_0

    .line 272
    :sswitch_e
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/asus/reader/VibeActivity;->access$2002(Lcom/asus/reader/VibeActivity;I)I

    .line 273
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$2000(Lcom/asus/reader/VibeActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    .line 274
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/vibe2/VibeAgent;->getTempContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/asus/reader/VibeActivity;->access$200(Lcom/asus/reader/VibeActivity;I)V

    .line 279
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/reader/VibeActivity;->access$700(Lcom/asus/reader/VibeActivity;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 282
    :sswitch_f
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$2000(Lcom/asus/reader/VibeActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    .line 283
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/vibe2/VibeAgent;->getTempContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v0

    .line 285
    .local v0, actionContent:Lcom/asus/reader/vibe2/Content;
    if-eqz v0, :cond_0

    .line 287
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/asus/reader/VibeActivity;->access$200(Lcom/asus/reader/VibeActivity;I)V

    .line 288
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/reader/VibeActivity;->access$700(Lcom/asus/reader/VibeActivity;Landroid/database/Cursor;)V

    .line 289
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$1;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2, v0}, Lcom/asus/reader/VibeActivity;->access$2100(Lcom/asus/reader/VibeActivity;Lcom/asus/reader/vibe2/Content;)V

    goto/16 :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d7 -> :sswitch_1
        0x4df -> :sswitch_5
        0x4e6 -> :sswitch_0
        0x4e7 -> :sswitch_6
        0x4ee -> :sswitch_8
        0x4ef -> :sswitch_9
        0x4f0 -> :sswitch_b
        0x4f1 -> :sswitch_c
        0x4f3 -> :sswitch_d
        0x4f7 -> :sswitch_e
        0x4f8 -> :sswitch_7
        0x4f9 -> :sswitch_a
        0x4fa -> :sswitch_f
        0x4fe -> :sswitch_3
        0x4ff -> :sswitch_2
        0x500 -> :sswitch_4
    .end sparse-switch
.end method
