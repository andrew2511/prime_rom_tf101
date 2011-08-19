.class Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;
.super Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;
.source "ConversationHeaderCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationHeaderCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAdapter"
.end annotation


# instance fields
.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private final mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

.field private final mViewMode:Lcom/google/android/gm/ViewMode;

.field final synthetic this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "viewMode"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Z)V

    .line 243
    iput-object p4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 244
    iput-object p5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    .line 245
    iput-object p6, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 246
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 250
    instance-of v1, p1, Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v1, :cond_0

    .line 251
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    iget-object v5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v5}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$100(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v6}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$200(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v7}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$300(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gm/CanvasConversationHeaderView;->bind(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/ViewMode;)V

    .line 259
    :cond_0
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 263
    new-instance v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    invoke-direct {v0, p1}, Lcom/google/android/gm/CanvasConversationHeaderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$400(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    .line 273
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->notifyDataSetChanged()V

    .line 274
    return-void
.end method
