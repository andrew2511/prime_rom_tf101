.class public Lcom/android/email/activity/AccountFolderListItem;
.super Landroid/widget/LinearLayout;
.source "AccountFolderListItem.java"


# instance fields
.field public mAccountId:J

.field private mAdapter:Lcom/android/email/activity/AccountsAdapter;

.field private mCachedViewPositions:Z

.field private mDownEvent:Z

.field private mFolderLeft:I

.field private mHasFolderButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V
    .locals 1
    .parameter "adapter"
    .parameter "hasFolderButton"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    .line 60
    iput-boolean p2, p0, Lcom/android/email/activity/AccountFolderListItem;->mHasFolderButton:Z

    .line 61
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 69
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    iget-wide v5, p0, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/AccountsAdapter;->isOnDeletingAccountView(J)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    .line 116
    :goto_0
    return v4

    .line 74
    :cond_0
    iget-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mHasFolderButton:Z

    if-nez v4, :cond_1

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    .line 79
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 81
    .local v3, touchX:I
    iget-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    if-nez v4, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v2, paddingScale:F
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v2

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 84
    .local v0, folderPadding:I
    const v4, 0x7f0f000a

    invoke-virtual {p0, v4}, Lcom/android/email/activity/AccountFolderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    .line 85
    iput-boolean v8, p0, Lcom/android/email/activity/AccountFolderListItem;->mCachedViewPositions:Z

    .line 88
    .end local v0           #folderPadding:I
    .end local v2           #paddingScale:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 110
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderListItem;->postInvalidate()V

    :goto_2
    move v4, v1

    .line 116
    goto :goto_0

    .line 90
    :pswitch_1
    iput-boolean v8, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    .line 91
    iget v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    if-le v3, v4, :cond_3

    .line 92
    const/4 v1, 0x1

    goto :goto_1

    .line 97
    :pswitch_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    goto :goto_1

    .line 101
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mDownEvent:Z

    if-eqz v4, :cond_3

    .line 102
    iget v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mFolderLeft:I

    if-le v3, v4, :cond_3

    .line 103
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderListItem;->mAdapter:Lcom/android/email/activity/AccountsAdapter;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/AccountsAdapter;->onClickFolder(Lcom/android/email/activity/AccountFolderListItem;)V

    .line 104
    const/4 v1, 0x1

    goto :goto_1

    .line 113
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
