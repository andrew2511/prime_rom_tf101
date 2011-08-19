.class public Lcom/google/android/gm/ConversationHeaderCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationHeaderCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationHeaderCursorAdapter$1;,
        Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private mCurrentlyDisplayedLabel:Ljava/lang/String;

.field private mError:Lcom/google/android/gm/provider/Gmail$CursorError;

.field private final mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

.field mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

.field private final mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

.field private mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field private mViewTypeFooter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/IProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Landroid/animation/Animator$AnimatorListener;Lcom/google/android/gm/FadingListView;)V
    .locals 10
    .parameter "context"
    .parameter "progressMonitor"
    .parameter "currentlyDisplayedLabel"
    .parameter "account"
    .parameter "selectedConversations"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "viewMode"
    .parameter "onCompleteCallback"
    .parameter "listView"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    .line 60
    sget-object v4, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    iput-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 61
    sget-object v4, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 62
    iput-object p3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 65
    new-instance v3, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;-><init>(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;)V

    .line 67
    .local v3, inner:Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;
    new-instance v4, Lcom/google/android/gm/GmailAnimatedAdapter;

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/GmailAnimatedAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    .line 68
    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gm/GmailAnimatedAdapter;->animateChanges(Z)V

    .line 69
    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v4}, Lcom/google/android/gm/GmailAnimatedAdapter;->getViewTypeCount()I

    move-result v4

    iput v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mViewTypeFooter:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/ConversationSelectionSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    return-void
.end method

.method private cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V
    .locals 3
    .parameter "newStatus"
    .parameter "newError"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq p1, v0, :cond_0

    .line 116
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConversationHeaderCursorAdapter.cursorStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 119
    iput-object p2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 120
    sget-object v0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    invoke-interface {v0}, Lcom/google/android/gm/IProgressMonitor;->done()V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/IProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    invoke-interface {v0}, Lcom/google/android/gm/IProgressMonitor;->done()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final changeAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetInvalidated()V

    .line 112
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 158
    :goto_0
    return v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v1, v2, :cond_2

    :cond_1
    move v0, v4

    .line 158
    .local v0, shouldShowFooter:Z
    :goto_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getCount()I

    move-result v1

    if-eqz v0, :cond_3

    move v2, v4

    :goto_2
    add-int/2addr v1, v2

    goto :goto_0

    .end local v0           #shouldShowFooter:Z
    :cond_2
    move v0, v3

    .line 155
    goto :goto_1

    .restart local v0       #shouldShowFooter:Z
    :cond_3
    move v2, v3

    .line 158
    goto :goto_2
.end method

.method public final getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getItemId(I)J

    move-result-wide v0

    .line 173
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 199
    .local v0, wantsFooterView:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 200
    iget v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mViewTypeFooter:I

    .line 202
    :goto_1
    return v1

    .line 198
    .end local v0           #wantsFooterView:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 202
    .restart local v0       #wantsFooterView:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 206
    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v4}, Lcom/google/android/gm/GmailAnimatedAdapter;->getCount()I

    move-result v4

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .line 207
    .local v3, wantsFooterView:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 209
    if-eqz p2, :cond_0

    instance-of v4, p2, Lcom/google/android/gm/ConversationListFooterView;

    if-nez v4, :cond_2

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 212
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04000e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationListFooterView;

    .line 217
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .local v1, footerView:Lcom/google/android/gm/ConversationListFooterView;
    :goto_1
    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    iget-object v5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    iget-object v6, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gm/ConversationListFooterView;->bind(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    move-object v4, v1

    .line 220
    .end local v1           #footerView:Lcom/google/android/gm/ConversationListFooterView;
    :goto_2
    return-object v4

    .line 206
    .end local v3           #wantsFooterView:Z
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 215
    .restart local v3       #wantsFooterView:Z
    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/google/android/gm/ConversationListFooterView;

    move-object v1, v0

    .restart local v1       #footerView:Lcom/google/android/gm/ConversationListFooterView;
    goto :goto_1

    .line 220
    .end local v1           #footerView:Lcom/google/android/gm/ConversationListFooterView;
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v4, p1, p2, p3}, Lcom/google/android/gm/GmailAnimatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->notifyDataSetChanged()V

    .line 227
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->notifyDataSetInvalidated()V

    .line 232
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 286
    :cond_1
    return-void
.end method

.method public final swapCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->swapMailCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 93
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 102
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    :cond_0
    return-void
.end method
