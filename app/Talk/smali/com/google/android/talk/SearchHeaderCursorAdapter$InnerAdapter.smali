.class Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchHeaderCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/SearchHeaderCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/SearchHeaderCursorAdapter;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    .line 216
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 217
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 225
    check-cast p1, Lcom/google/android/talk/SearchResultsItem;

    .end local p1
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-static {v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$000(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-static {v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$000(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-static {v2}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$100(Lcom/google/android/talk/SearchHeaderCursorAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/talk/SearchResultsItem;->bind(Landroid/content/Context;Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;Z)V

    .line 227
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-static {v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$200(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/talk/SearchResultsItem;

    return-object p0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-static {v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$000(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-static {v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$000(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->access$300(Lcom/google/android/talk/SearchHeaderCursorAdapter;Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;)V

    .line 239
    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 240
    return-void
.end method
