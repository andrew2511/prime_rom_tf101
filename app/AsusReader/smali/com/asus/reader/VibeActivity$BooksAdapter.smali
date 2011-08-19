.class public Lcom/asus/reader/VibeActivity$BooksAdapter;
.super Landroid/widget/CursorAdapter;
.source "VibeActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/VibeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BooksAdapter"
.end annotation


# instance fields
.field private blockNotify:Z

.field private mContext:Landroid/content/Context;

.field private mDX:I

.field private mDY:I

.field private mPosition:I

.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/VibeActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 1111
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    .line 1112
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1107
    iput v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mDX:I

    .line 1108
    iput v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mDY:I

    .line 1109
    iput-boolean v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->blockNotify:Z

    .line 1113
    iput-object p2, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mContext:Landroid/content/Context;

    .line 1114
    iput v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mPosition:I

    .line 1115
    return-void
.end method

.method private bindBookItem(Lcom/asus/reader/ui/BookItem;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "v"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v0}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1192
    :goto_0
    return-void

    .line 1185
    :sswitch_0
    invoke-virtual {p1, p2, p3}, Lcom/asus/reader/ui/BookItem;->bindVibeGrid(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 1188
    :sswitch_1
    invoke-virtual {p1, p2, p3}, Lcom/asus/reader/ui/BookItem;->bindVibeRecentActivities(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 1182
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private getVibeInfoView(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "convertview"

    .prologue
    const/4 v6, 0x0

    .line 1125
    instance-of v3, p1, Lcom/asus/reader/ui/VibeInfo;

    if-eqz v3, :cond_0

    .line 1126
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/ui/VibeInfo;

    move-object v2, v0

    .line 1138
    .local v2, vibeinfo:Lcom/asus/reader/ui/VibeInfo;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v4}, Lcom/asus/reader/VibeActivity;->access$2000(Lcom/asus/reader/VibeActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1139
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v5}, Lcom/asus/reader/VibeActivity;->access$2000(Lcom/asus/reader/VibeActivity;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/ui/VibeInfo;->bind(Landroid/database/Cursor;Lcom/asus/reader/vibe2/SubcategoryContents;I)V

    .line 1140
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/VibeInfo;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_1
    return-object v2

    .line 1128
    .end local v2           #vibeinfo:Lcom/asus/reader/ui/VibeInfo;
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v3, v3, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030039

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/VibeInfo;

    .line 1129
    .restart local v2       #vibeinfo:Lcom/asus/reader/ui/VibeInfo;
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$2200(Lcom/asus/reader/VibeActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1130
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x3c6

    const/16 v5, 0x26e

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/VibeInfo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1133
    :cond_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x320

    const/16 v5, 0x44e

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/VibeInfo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1141
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1142
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1143
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/asus/reader/VibeActivity;->access$2002(Lcom/asus/reader/VibeActivity;I)I

    .line 1144
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "v"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1196
    instance-of v0, p1, Lcom/asus/reader/ui/BookItem;

    if-eqz v0, :cond_0

    .line 1197
    check-cast p1, Lcom/asus/reader/ui/BookItem;

    .end local p1
    iget v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mPosition:I

    invoke-direct {p0, p1, p3, v0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->bindBookItem(Lcom/asus/reader/ui/BookItem;Landroid/database/Cursor;I)V

    .line 1198
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1225
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 1226
    .local v0, count:I
    iget-object v1, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v1}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 1227
    const/4 v1, 0x1

    .line 1232
    :goto_0
    return v1

    .line 1229
    :cond_0
    if-nez v0, :cond_1

    .line 1230
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1232
    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 0
    .parameter "position"

    .prologue
    .line 1220
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1152
    iput p1, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mPosition:I

    .line 1155
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1162
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iget v3, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1163
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1157
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getVibeInfoView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 1178
    :goto_0
    return-object v2

    .line 1168
    :cond_0
    instance-of v2, p2, Lcom/asus/reader/ui/BookItem;

    if-eqz v2, :cond_1

    .line 1169
    move-object v0, p2

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    move-object v1, v0

    .line 1170
    .local v1, i:Lcom/asus/reader/ui/BookItem;
    invoke-virtual {v1}, Lcom/asus/reader/ui/BookItem;->resetCover()V

    .line 1175
    :goto_1
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v2, v1

    .line 1178
    goto :goto_0

    .line 1173
    .end local v1           #i:Lcom/asus/reader/ui/BookItem;
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/BookItem;

    .restart local v1       #i:Lcom/asus/reader/ui/BookItem;
    goto :goto_1

    .line 1155
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 1204
    iget-object v1, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v1}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1213
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t newView at state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$600(Lcom/asus/reader/VibeActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1207
    :sswitch_0
    iget-object v1, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v1, v1, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030010

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    .line 1215
    .local v0, v:Lcom/asus/reader/ui/BookItem;
    :goto_0
    return-object v0

    .line 1210
    .end local v0           #v:Lcom/asus/reader/ui/BookItem;
    :sswitch_1
    iget-object v1, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v1, v1, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003a

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    .line 1211
    .restart local v0       #v:Lcom/asus/reader/ui/BookItem;
    goto :goto_0

    .line 1204
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity$BooksAdapter;->blockNotify:Z

    if-nez v0, :cond_0

    .line 1120
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 1121
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 1236
    instance-of v2, p1, Lcom/asus/reader/ui/BookItem;

    if-eqz v2, :cond_0

    .line 1237
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v1

    .line 1238
    .local v1, position:I
    const-string v2, "vibe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMovedToScrapHeap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    check-cast p1, Lcom/asus/reader/ui/BookItem;

    .end local p1
    invoke-virtual {p1}, Lcom/asus/reader/ui/BookItem;->cancelLoading()V

    .line 1241
    .end local v1           #position:I
    :cond_0
    return-void
.end method
