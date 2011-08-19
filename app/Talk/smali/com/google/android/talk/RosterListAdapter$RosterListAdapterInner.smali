.class public Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;
.super Landroid/widget/CursorAdapter;
.source "RosterListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RosterListAdapterInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;
    }
.end annotation


# instance fields
.field private mForceLoadRunnable:Ljava/lang/Runnable;

.field private mNeedForceLoad:Z

.field private mScrollState:I

.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/RosterListAdapter;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 92
    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$200(Lcom/google/android/talk/RosterListAdapter;)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, contact:Ljava/lang/String;
    const/4 v14, 0x0

    .line 94
    .local v14, focus:Z
    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$300(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$400(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v4}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$600(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v14, v2

    .line 97
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 101
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/talk/RosterListItem;

    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$700(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->isScrolling()Z

    move-result v7

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$800(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/util/Markup;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$900(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v10

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$1000(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v11

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$1100(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v12

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/talk/RosterListItem;->bind(Landroid/database/Cursor;JZZLcom/google/android/talk/util/Markup;ZZZLcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 111
    return-void

    .line 95
    :cond_1
    const/4 v2, 0x0

    move v14, v2

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 76
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 116
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, -0x1

    .line 121
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1200(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/talk/RosterListItem;->getItemViewType(Lcom/google/android/talk/TalkApp;Landroid/database/Cursor;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x4

    return v0
.end method

.method public hasActiveChats()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 174
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move v2, v3

    .line 185
    :goto_0
    return v2

    .line 178
    :cond_0
    const-string v2, "last_message_date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, lastDateColumn:I
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 180
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 185
    goto :goto_0
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mForceLoadRunnable:Ljava/lang/Runnable;

    .line 80
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v0}, Lcom/google/android/talk/RosterListAdapter;->access$100(Lcom/google/android/talk/RosterListAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;-><init>(Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;Lcom/google/android/talk/RosterListAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 81
    return-void
.end method

.method public final isScrolling()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$100(Lcom/google/android/talk/RosterListAdapter;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/RosterListItem;

    .line 87
    .local v0, view:Lcom/google/android/talk/RosterListItem;
    return-object v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "first"
    .parameter "visible"
    .parameter "total"

    .prologue
    .line 149
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mScrollState:I

    .line 158
    .local v0, oldState:I
    iput p2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mScrollState:I

    .line 162
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    iget-boolean v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mNeedForceLoad:Z

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mNeedForceLoad:Z

    .line 165
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setNeedForceLoad(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mNeedForceLoad:Z

    .line 145
    return-void
.end method
