.class Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;
.super Landroid/content/CursorLoader;
.source "ConversationCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/ConversationCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuspendableCursorLoader"
.end annotation


# instance fields
.field private mLoadPending:Z

.field private mLoaderSuspended:Z

.field final synthetic this$0:Lcom/google/android/gm/provider/ConversationCursorLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/ConversationCursorLoader;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->this$0:Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 101
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->mLoaderSuspended:Z

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0}, Landroid/content/CursorLoader;->onForceLoad()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->mLoadPending:Z

    goto :goto_0
.end method

.method public resumeLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->mLoaderSuspended:Z

    .line 128
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->mLoadPending:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->forceLoad()V

    .line 130
    iput-boolean v1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->mLoadPending:Z

    .line 132
    :cond_0
    return-void
.end method

.method public suspendLoading()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$SuspendableCursorLoader;->mLoaderSuspended:Z

    .line 120
    return-void
.end method
