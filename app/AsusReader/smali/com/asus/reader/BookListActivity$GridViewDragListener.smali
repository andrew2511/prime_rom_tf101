.class public Lcom/asus/reader/BookListActivity$GridViewDragListener;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewDragListener"
.end annotation


# instance fields
.field mCountDownTimer:Landroid/os/CountDownTimer;

.field positionON:I

.field final synthetic this$0:Lcom/asus/reader/BookListActivity;

.field touchX:I

.field touchY:I


# direct methods
.method public constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2906
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveBookCategory(I)Z
    .locals 14
    .parameter "newposition"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 2995
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2996
    const/4 v0, 0x0

    .line 3026
    :goto_0
    return v0

    .line 2998
    :cond_0
    const/4 v9, 0x0

    .line 2999
    .local v9, count:I
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v10

    .line 3000
    .local v10, targetId:J
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2700(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$BooksAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v8

    .line 3001
    .local v8, c:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3004
    .local v6, bookid:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    .line 3005
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    .line 3009
    .local v3, where:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3014
    if-eqz v8, :cond_1

    .line 3015
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 3016
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3019
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 3020
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "category_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3021
    const-string v0, "local_order"

    add-int/lit8 v1, v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3023
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3024
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3025
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3102(Lcom/asus/reader/BookListActivity;I)I

    move v0, v13

    .line 3026
    goto/16 :goto_0

    .line 3007
    .end local v3           #where:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #where:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 2988
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    .line 2989
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/reader/BookListActivity;->mDrag:Z

    .line 2990
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2991
    return-void
.end method

.method public onDragStart(Lcom/asus/reader/ui/DragSource;I)V
    .locals 6
    .parameter "source"
    .parameter "dragAction"

    .prologue
    const/4 v0, -0x1

    .line 2913
    iput v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    .line 2914
    iput v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    .line 2915
    iput v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    .line 2916
    new-instance v0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;-><init>(Lcom/asus/reader/BookListActivity$GridViewDragListener;JJ)V

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 2985
    return-void
.end method

.method public onRecordTouchPoint(II)V
    .locals 0
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 3031
    iput p1, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    .line 3032
    iput p2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    .line 3033
    return-void
.end method
