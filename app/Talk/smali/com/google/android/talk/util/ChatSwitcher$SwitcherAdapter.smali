.class public Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;
.super Landroid/widget/CursorAdapter;
.source "ChatSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/util/ChatSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitcherAdapter"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/google/android/talk/util/ChatSwitcher;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/util/ChatSwitcher;Landroid/database/Cursor;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "c"
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 137
    iput-object p1, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p3, v1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 126
    new-instance v0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter$1;-><init>(Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->mContentObserver:Landroid/database/ContentObserver;

    .line 141
    invoke-static {p1, p3}, Lcom/google/android/talk/util/ChatSwitcher;->access$102(Lcom/google/android/talk/util/ChatSwitcher;Landroid/app/Activity;)Landroid/app/Activity;

    .line 142
    invoke-virtual {p0, p2}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 143
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 181
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 153
    .local v1, oldCursor:Landroid/database/Cursor;
    if-ne v1, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 159
    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 161
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-static {v2}, Lcom/google/android/talk/util/ChatSwitcher;->access$100(Lcom/google/android/talk/util/ChatSwitcher;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 163
    :cond_3
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 165
    iget-object v2, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-static {v2}, Lcom/google/android/talk/util/ChatSwitcher;->access$100(Lcom/google/android/talk/util/ChatSwitcher;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .restart local v0       #cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method
