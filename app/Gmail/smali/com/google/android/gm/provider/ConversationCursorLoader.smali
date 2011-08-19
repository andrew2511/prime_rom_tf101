.class public Lcom/google/android/gm/provider/ConversationCursorLoader;
.super Landroid/content/Loader;
.source "ConversationCursorLoader.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mQuery:Ljava/lang/String;

.field private final mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Gmail;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "gmail"
    .parameter "context"
    .parameter "account"
    .parameter "uri"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;-><init>(Lcom/google/android/gm/provider/ConversationCursorLoader;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    .line 38
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 40
    iput-object p1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 41
    iput-object p3, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mAccount:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mQuery:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->forceLoad()V

    .line 48
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorForCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->deliverResult(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/ConversationCursorLoader;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->reset()V

    .line 53
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->startLoading()V

    .line 58
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->stopLoading()V

    .line 63
    return-void
.end method

.method public resumeLoading()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->resumeLoading()V

    .line 71
    return-void
.end method

.method public suspendLoading()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->suspendLoading()V

    .line 67
    return-void
.end method
