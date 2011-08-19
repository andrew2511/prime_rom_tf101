.class Lcom/google/android/talk/util/ChatSwitcher$2;
.super Landroid/content/AsyncQueryHandler;
.source "ChatSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/util/ChatSwitcher;-><init>(Landroid/app/Activity;JLandroid/view/View;Landroid/os/Handler;Lcom/google/android/talk/TalkApp;Landroid/view/LayoutInflater;Ljava/lang/Runnable;Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/util/ChatSwitcher;

.field final synthetic val$onQueryCompleteCallback:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/ChatSwitcher;Landroid/content/ContentResolver;Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    iput-object p3, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->val$onQueryCompleteCallback:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 209
    const-string v2, "talk"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "AsyncQueryHandler.onQueryComplete"

    invoke-static {v2, v3}, Lcom/google/android/talk/util/ChatSwitcher;->access$000(Lcom/google/android/talk/util/ChatSwitcher;Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-static {v2}, Lcom/google/android/talk/util/ChatSwitcher;->access$200(Lcom/google/android/talk/util/ChatSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    if-eqz p3, :cond_3

    .line 221
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "account"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mAccountIdColumn:I

    .line 222
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "username"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mUsernameColumn:I

    .line 223
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "nickname"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mNicknameColumn:I

    .line 224
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "mode"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mPresenceStatusColumn:I

    .line 225
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "last_unread_message"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mLastUnreadMessageColumn:I

    .line 226
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "avatars_hash"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mAvatarHashColumn:I

    .line 227
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "avatars_data"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mAvatarDataColumn:I

    .line 228
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "shortcut"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mShortcutColumn:I

    .line 229
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "last_message_date"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mLastChatColumn:I

    .line 230
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "groupchat"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mGroupChatColumn:I

    .line 231
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v3, "cap"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/talk/util/ChatSwitcher;->mCapabilitiesColumn:I

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-static {v2}, Lcom/google/android/talk/util/ChatSwitcher;->access$300(Lcom/google/android/talk/util/ChatSwitcher;)V

    .line 236
    move-object v0, p2

    check-cast v0, Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

    move-object v1, v0

    .line 237
    .local v1, r:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;
    if-eqz v1, :cond_4

    .line 238
    invoke-interface {v1, p3}, Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;->onComplete(Landroid/database/Cursor;)V

    .line 241
    :cond_4
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->val$onQueryCompleteCallback:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$2;->val$onQueryCompleteCallback:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

    invoke-interface {v2, p3}, Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;->onComplete(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 249
    return-void
.end method
