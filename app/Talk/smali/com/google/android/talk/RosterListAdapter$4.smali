.class Lcom/google/android/talk/RosterListAdapter$4;
.super Lcom/google/android/talk/RosterListAdapter$Bind;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter;->makeSelfMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 12
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    .line 399
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/RosterListItem;

    .line 400
    .local v0, rosterItem:Lcom/google/android/talk/RosterListItem;
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$2100(Lcom/google/android/talk/RosterListAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$300(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$600(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v11, v1

    .line 402
    .local v11, focus:Z
    :goto_0
    invoke-virtual {v0, v11}, Lcom/google/android/talk/RosterListItem;->setActivated(Z)V

    .line 403
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$2100(Lcom/google/android/talk/RosterListAdapter;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v4}, Lcom/google/android/talk/RosterListAdapter;->access$700(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-virtual {v5}, Lcom/google/android/talk/RosterListAdapter;->isScrolling()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v6}, Lcom/google/android/talk/RosterListAdapter;->access$800(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/util/Markup;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v8}, Lcom/google/android/talk/RosterListAdapter;->access$900(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v8

    iget-object v9, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-static {v9}, Lcom/google/android/talk/RosterListAdapter;->access$1000(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/talk/RosterListItem;->bind(Landroid/database/Cursor;JZZLcom/google/android/talk/util/Markup;ZZZLcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 414
    .end local v11           #focus:Z
    :cond_0
    return-void

    :cond_1
    move v11, v7

    .line 401
    goto :goto_0
.end method

.method public onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 397
    return-void
.end method
