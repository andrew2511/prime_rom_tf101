.class Lcom/google/android/talk/ChatView$ChatAdapter;
.super Landroid/widget/CursorAdapter;
.source "ChatView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatAdapter"
.end annotation


# instance fields
.field public mScrollState:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    .line 1625
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1626
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1630
    check-cast p1, Lcom/google/android/talk/ChatView$MessageItem;

    .end local p1
    invoke-virtual {p1, p3}, Lcom/google/android/talk/ChatView$MessageItem;->bind(Landroid/database/Cursor;)V

    .line 1631
    return-void
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x2

    .line 1664
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$ChatAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1665
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1666
    iget-object v2, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2100(Lcom/google/android/talk/ChatView;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1667
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 1676
    .end local v1           #type:I
    :goto_0
    return v2

    .line 1669
    .restart local v1       #type:I
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1671
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #type:I
    :cond_0
    move v2, v3

    .line 1676
    goto :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x3

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1635
    new-instance v0, Lcom/google/android/talk/ChatView$MessageItem;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/talk/ChatView$ChatAdapter;->getItemViewType(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView$MessageItem;-><init>(Lcom/google/android/talk/ChatView;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "first"
    .parameter "visible"
    .parameter "total"

    .prologue
    .line 1641
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1645
    iput p2, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mScrollState:I

    .line 1646
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$5200(Lcom/google/android/talk/ChatView;)V

    .line 1647
    return-void
.end method
