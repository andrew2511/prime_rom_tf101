.class final Lcom/google/android/talk/ChatView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    .line 712
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 713
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 717
    sparse-switch p1, :sswitch_data_0

    .line 754
    :goto_0
    return-void

    .line 719
    :sswitch_0
    new-instance v0, Lcom/google/android/talk/ChatView$DeltaCursor;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {v0, v1, p3}, Lcom/google/android/talk/ChatView$DeltaCursor;-><init>(Lcom/google/android/talk/ChatView;Landroid/database/Cursor;)V

    .line 721
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "chat history onQueryComplete"

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "nickname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$1802(Lcom/google/android/talk/ChatView;I)I

    .line 724
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$1902(Lcom/google/android/talk/ChatView;I)I

    .line 725
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2002(Lcom/google/android/talk/ChatView;I)I

    .line 726
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2102(Lcom/google/android/talk/ChatView;I)I

    .line 727
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "show_ts"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2202(Lcom/google/android/talk/ChatView;I)I

    .line 728
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "err_code"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2302(Lcom/google/android/talk/ChatView;I)I

    .line 729
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "delta"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2402(Lcom/google/android/talk/ChatView;I)I

    .line 731
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$ChatAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 732
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$MessageBar;->update()V

    goto :goto_0

    .line 737
    .end local v0           #cursor:Landroid/database/Cursor;
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/ChatView;->access$1202(Lcom/google/android/talk/ChatView;J)J

    .line 742
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->cacheContactId(Ljava/lang/String;J)V

    .line 743
    if-eqz p3, :cond_0

    .line 744
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 750
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2800(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/ChatView;->access$1202(Lcom/google/android/talk/ChatView;J)J

    goto :goto_1

    .line 717
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
