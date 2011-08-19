.class Lcom/google/android/gm/GmailAnimatedAdapter;
.super Lcom/google/android/gm/AnimatedAdapter;
.source "GmailAnimatedAdapter.java"


# instance fields
.field private mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .parameter "a"
    .parameter "animationListener"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/AnimatedAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    check-cast p1, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    .line 24
    return-void
.end method

.method private diff(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/16 v7, 0x32

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gm/GmailAnimatedAdapter;->shouldDiff()Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gm/GmailAnimatedAdapter;->getFirstNearbyPosition()I

    move-result v1

    .line 48
    .local v1, firstPos:I
    new-array v4, v7, [J

    .line 49
    .local v4, newNearbyIds:[J
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    .line 50
    .local v0, cursorCount:I
    if-ltz v1, :cond_3

    .line 51
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 52
    add-int v3, v1, v2

    .line 53
    .local v3, index:I
    if-ge v3, v0, :cond_2

    .line 54
    invoke-virtual {p1, v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 51
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_2
    const-wide/16 v5, -0x1

    aput-wide v5, v4, v2

    goto :goto_2

    .line 61
    .end local v2           #i:I
    .end local v3           #index:I
    :cond_3
    invoke-super {p0, v4}, Lcom/google/android/gm/AnimatedAdapter;->diff([J)V

    goto :goto_0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swapMailCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->diff(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gm/GmailAnimatedAdapter;->mAdapter:Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->swapMailCursor(Lcom/google/android/gm/provider/Gmail$MailCursor;)V

    .line 39
    return-void
.end method
