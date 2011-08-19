.class public Lcom/google/android/talk/RosterListItem;
.super Lcom/google/android/talk/DividerDrawingListItem;
.source "RosterListItem.java"

# interfaces
.implements Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/RosterListItem$BindHandler;
    }
.end annotation


# static fields
.field private static sAnimatorsFast:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnimatorsSlow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mAvatarHashColumn:I

.field private mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

.field private mCapabilitiesColumn:I

.field private mClientTypeColumn:I

.field private mComputedColumns:Z

.field private mContactTypeColumn:I

.field private mContainerView:Landroid/view/ViewGroup;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mCurrentAnimatorIsFast:Z

.field private mCurrentAnimatorUsername:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorPos:I

.field private mCustomStatusColumn:I

.field private mLastUnreadMessageColumn:I

.field private mLine1:Landroid/widget/TextView;

.field private mLine2:Landroid/widget/TextView;

.field private mLine2Buffer:Landroid/database/CharArrayBuffer;

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mNarrow:Z

.field private mNicknameColumn:I

.field private mNoQuickBadge:Landroid/view/View;

.field private mOfflineTextColors:Landroid/content/res/ColorStateList;

.field private mOnlineTextColors:Landroid/content/res/ColorStateList;

.field private mPresenceClickedHandler:Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

.field private mPresenceStatusColumn:I

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQuickBadge:Landroid/view/View;

.field private mQuickContactColumn:I

.field private mShoveDistance:I

.field private mShover:Landroid/view/View;

.field private mSubscriptionStatusColumn:I

.field private mSubscriptionTypeColumn:I

.field private mTextWrapper:Landroid/view/View;

.field private mTypeIndicator:Landroid/widget/ImageView;

.field private mUsername:Ljava/lang/String;

.field private mUsernameColumn:I

.field private mVideoPresenceBackgroundNormal:Landroid/graphics/drawable/Drawable;

.field private mVideoPresenceBackgroundWhite:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/RosterListItem;->sAnimatorsFast:Ljava/util/HashMap;

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/RosterListItem;->sAnimatorsSlow:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "set"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/DividerDrawingListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 556
    new-instance v0, Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/RosterListItem$BindHandler;-><init>(Lcom/google/android/talk/RosterListItem;Lcom/google/android/talk/RosterListItem$1;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    .line 112
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-static {p1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;

    .line 115
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/talk/RosterListItem;->setDescendantFocusability(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;Landroid/content/Context;)V
    .locals 1
    .parameter "p"
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/talk/RosterListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mPresenceClickedHandler:Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceClickedHandler:Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/talk/RosterListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mLastUnreadMessageColumn:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mCustomStatusColumn:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoPresenceBackgroundWhite:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoPresenceBackgroundNormal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mUsernameColumn:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mShoveDistance:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mClientTypeColumn:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mTypeIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/RosterListItem;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem;->clearColorFilter(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mOnlineTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mOfflineTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mAvatarHashColumn:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mContactTypeColumn:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$500(Landroid/database/Cursor;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/android/talk/RosterListItem;->internalGetItemViewType(Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mNicknameColumn:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mCapabilitiesColumn:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceStatusColumn:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method private clearColorFilter(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageView"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 711
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 716
    :cond_0
    return-void
.end method

.method private getAnimator(ZLjava/lang/String;Lcom/google/android/talk/RosterListItem;)Landroid/animation/Animator;
    .locals 3
    .parameter "fastmode"
    .parameter "username"
    .parameter "item"

    .prologue
    .line 546
    if-eqz p1, :cond_1

    sget-object v2, Lcom/google/android/talk/RosterListItem;->sAnimatorsFast:Ljava/util/HashMap;

    move-object v1, v2

    .line 547
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/animation/Animator;>;"
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 548
    .local v0, a:Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 549
    invoke-static {p1, p3}, Lcom/google/android/talk/RosterListItem;->makeAnimator(ZLcom/google/android/talk/RosterListItem;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 550
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_0
    return-object v0

    .line 546
    .end local v0           #a:Landroid/animation/Animator;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/animation/Animator;>;"
    :cond_1
    sget-object v2, Lcom/google/android/talk/RosterListItem;->sAnimatorsSlow:Ljava/util/HashMap;

    move-object v1, v2

    goto :goto_0
.end method

.method public static getItemViewType(Lcom/google/android/talk/TalkApp;Landroid/database/Cursor;)I
    .locals 5
    .parameter "app"
    .parameter "c"

    .prologue
    .line 192
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 193
    .local v1, contactType:I
    const-string v4, "username"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, contact:Ljava/lang/String;
    const/4 v3, 0x0

    .line 197
    .local v3, isGroupChatInvitation:Z
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 199
    .local v2, invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .line 202
    .end local v2           #invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    :cond_0
    :goto_0
    invoke-static {p1, v3}, Lcom/google/android/talk/RosterListItem;->internalGetItemViewType(Landroid/database/Cursor;Z)I

    move-result v4

    return v4

    .line 199
    .restart local v2       #invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0
.end method

.method private handleAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 631
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/talk/RosterListAdapter$CallState;->appliesToContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v4

    .line 636
    .local v0, animate:Z
    :goto_0
    const/4 v1, 0x0

    .line 637
    .local v1, animator:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 638
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v2, v2, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p0}, Lcom/google/android/talk/RosterListItem;->getAnimator(ZLjava/lang/String;Lcom/google/android/talk/RosterListItem;)Landroid/animation/Animator;

    move-result-object v1

    .line 642
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eq v2, v1, :cond_1

    .line 643
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 644
    iget-boolean v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorIsFast:Z

    if-eqz v2, :cond_5

    .line 645
    sget-object v2, Lcom/google/android/talk/RosterListItem;->sAnimatorsFast:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    .line 652
    if-eqz v0, :cond_2

    .line 653
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v2, v2, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    iput-boolean v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorIsFast:Z

    .line 654
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorUsername:Ljava/lang/String;

    .line 657
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 658
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 660
    :cond_3
    return-void

    .line 631
    .end local v0           #animate:Z
    .end local v1           #animator:Landroid/animation/Animator;
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 647
    .restart local v0       #animate:Z
    .restart local v1       #animator:Landroid/animation/Animator;
    :cond_5
    sget-object v2, Lcom/google/android/talk/RosterListItem;->sAnimatorsSlow:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private handleDebug(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 628
    return-void
.end method

.method private handleLayout(Z)V
    .locals 5
    .parameter "alternate"

    .prologue
    const v3, 0x7f0200c7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/android/talk/RosterListItem;->setPadding(IIII)V

    .line 576
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 577
    const v0, 0x7f0200b0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/RosterListItem;->setBackgroundResource(I)V

    .line 578
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 595
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v0, v1, :cond_1

    .line 580
    invoke-virtual {p0, v2}, Lcom/google/android/talk/RosterListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 583
    invoke-virtual {p0, v2}, Lcom/google/android/talk/RosterListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/talk/RosterListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private handleNarrow(Z)V
    .locals 3
    .parameter "narrow"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 559
    if-eqz p1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mTypeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mTypeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 565
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 174
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mUsernameColumn:I

    .line 175
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mNicknameColumn:I

    .line 176
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mContactTypeColumn:I

    .line 177
    const-string v0, "subscriptionStatus"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mSubscriptionStatusColumn:I

    .line 178
    const-string v0, "subscriptionType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mSubscriptionTypeColumn:I

    .line 179
    const-string v0, "mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceStatusColumn:I

    .line 180
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mCustomStatusColumn:I

    .line 181
    const-string v0, "client_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mClientTypeColumn:I

    .line 182
    const-string v0, "last_unread_message"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mLastUnreadMessageColumn:I

    .line 183
    const-string v0, "qc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mQuickContactColumn:I

    .line 184
    const-string v0, "avatars_hash"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mAvatarHashColumn:I

    .line 185
    const-string v0, "cap"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mCapabilitiesColumn:I

    .line 188
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;

    .line 189
    return-void
.end method

.method private static internalGetItemViewType(Landroid/database/Cursor;Z)I
    .locals 7
    .parameter "c"
    .parameter "isGroupChatInvitation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    if-eqz p1, :cond_0

    move v3, v5

    .line 229
    :goto_0
    return v3

    .line 211
    :cond_0
    const-string v3, "subscriptionType"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v1, v3

    .line 212
    .local v1, subscriptionType:J
    const-wide/16 v3, 0x5

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    move v3, v5

    .line 213
    goto :goto_0

    .line 214
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 216
    const/4 v3, 0x3

    goto :goto_0

    .line 223
    :cond_2
    const-string v3, "last_message_date"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v6

    .line 225
    .local v0, showChat:Z
    :goto_1
    if-eqz v0, :cond_4

    move v3, v6

    .line 226
    goto :goto_0

    .end local v0           #showChat:Z
    :cond_3
    move v0, v5

    .line 223
    goto :goto_1

    .line 229
    .restart local v0       #showChat:Z
    :cond_4
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private static makeAnimator(ZLcom/google/android/talk/RosterListItem;)Landroid/animation/AnimatorSet;
    .locals 11
    .parameter "fast"
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 506
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 508
    .local v0, a:Landroid/animation/AnimatorSet;
    const/16 v3, 0x32

    .line 509
    .local v3, x:I
    const/16 v4, 0xff

    .line 511
    .local v4, y:I
    if-eqz p0, :cond_0

    const/16 v5, 0xfa

    move v1, v5

    .line 512
    .local v1, dur:I
    :goto_0
    if-eqz p0, :cond_1

    const/16 v5, 0x3e8

    move v2, v5

    .line 514
    .local v2, dur2:I
    :goto_1
    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    const-string v6, "VideoPresenceAlpha"

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "VideoPresenceAlpha"

    new-array v7, v10, [I

    fill-array-data v7, :array_2

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [I

    fill-array-data v8, :array_3

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [I

    fill-array-data v8, :array_4

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 521
    new-instance v5, Lcom/google/android/talk/RosterListItem$2;

    invoke-direct {v5, v0}, Lcom/google/android/talk/RosterListItem$2;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    return-object v0

    .line 511
    .end local v1           #dur:I
    .end local v2           #dur2:I
    :cond_0
    const/16 v5, 0x5dc

    move v1, v5

    goto :goto_0

    .restart local v1       #dur:I
    :cond_1
    move v2, v9

    .line 512
    goto :goto_1

    .line 514
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static onStop()V
    .locals 4

    .prologue
    .line 477
    sget-object v3, Lcom/google/android/talk/RosterListItem;->sAnimatorsFast:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    .local v2, s:Ljava/lang/String;
    sget-object v3, Lcom/google/android/talk/RosterListItem;->sAnimatorsFast:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 479
    .local v0, a:Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 481
    .end local v0           #a:Landroid/animation/Animator;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/android/talk/RosterListItem;->sAnimatorsFast:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 483
    sget-object v3, Lcom/google/android/talk/RosterListItem;->sAnimatorsSlow:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 484
    .restart local v2       #s:Ljava/lang/String;
    sget-object v3, Lcom/google/android/talk/RosterListItem;->sAnimatorsSlow:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 485
    .restart local v0       #a:Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 487
    .end local v0           #a:Landroid/animation/Animator;
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/google/android/talk/RosterListItem;->sAnimatorsSlow:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 488
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;JZZLcom/google/android/talk/util/Markup;ZZZLcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 15
    .parameter "c"
    .parameter "accountId"
    .parameter "isOnline"
    .parameter "scrolling"
    .parameter "markup"
    .parameter "fastTrack"
    .parameter "narrow"
    .parameter "suppressIndent"
    .parameter "callState"

    .prologue
    .line 667
    iget-boolean v5, p0, Lcom/google/android/talk/RosterListItem;->mComputedColumns:Z

    if-nez v5, :cond_0

    .line 668
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/talk/RosterListItem;->mComputedColumns:Z

    .line 669
    invoke-direct/range {p0 .. p1}, Lcom/google/android/talk/RosterListItem;->init(Landroid/database/Cursor;)V

    .line 672
    :cond_0
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/talk/RosterListItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 673
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    .line 674
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    iput v5, p0, Lcom/google/android/talk/RosterListItem;->mCursorPos:I

    .line 675
    move/from16 v0, p8

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/RosterListItem;->mNarrow:Z

    .line 677
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    if-nez v5, :cond_1

    .line 700
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 683
    .local v14, r:Landroid/content/res/Resources;
    iget-object v13, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    .line 684
    .local v13, oldUsername:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/RosterListItem$BindHandler;->compute(Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;Z)V

    .line 685
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    invoke-static {v5, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->jumpDrawablesToCurrentState()V

    .line 689
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/talk/RosterListItem;->handleDebug(Landroid/database/Cursor;)V

    .line 691
    invoke-direct {p0}, Lcom/google/android/talk/RosterListItem;->handleAnimation()V

    .line 693
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v6, 0x0

    move-object v0, v5

    move-object v1, v14

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3000(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/content/res/Resources;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V

    .line 694
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v6, v6, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3100(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 695
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3200(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V

    .line 696
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3300(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V

    .line 697
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p4

    invoke-static/range {v5 .. v12}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3400(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;JZZZZ)V

    .line 698
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/talk/RosterListItem;->handleLayout(Z)V

    .line 699
    move-object v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/talk/RosterListItem;->handleNarrow(Z)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x0

    .line 768
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    goto :goto_0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    if-nez v0, :cond_0

    .line 759
    const/4 v0, 0x0

    .line 761
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 7

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/android/talk/DividerDrawingListItem;->onFinishInflate()V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/talk/RosterListItem;->mShoveDistance:I

    .line 124
    const v4, 0x7f10002c

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    .line 125
    const v4, 0x7f100075

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    .line 126
    const v4, 0x7f100076

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    .line 127
    const v4, 0x7f100073

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;

    .line 128
    const v4, 0x7f10000b

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 129
    const v4, 0x7f100077

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mTypeIndicator:Landroid/widget/ImageView;

    .line 130
    const v4, 0x7f100074

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    .line 131
    const v4, 0x7f100015

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;

    .line 132
    const v4, 0x7f100016

    invoke-virtual {p0, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 136
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x7f090005

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 137
    .local v2, onlineTextColor:I
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mOnlineTextColors:Landroid/content/res/ColorStateList;

    .line 138
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 139
    .local v1, offlineTextColor:I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mOfflineTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v4, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    new-instance v5, Lcom/google/android/talk/RosterListItem$1;

    invoke-direct {v5, p0}, Lcom/google/android/talk/RosterListItem$1;-><init>(Lcom/google/android/talk/RosterListItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v4, 0x7f0200c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mVideoPresenceBackgroundWhite:Landroid/graphics/drawable/Drawable;

    .line 153
    const v4, 0x7f0200c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/RosterListItem;->mVideoPresenceBackgroundNormal:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v4, p0, Lcom/google/android/talk/RosterListItem;->mVideoPresenceBackgroundWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v4, p0, Lcom/google/android/talk/RosterListItem;->mVideoPresenceBackgroundNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 157
    return-void

    .line 140
    .end local v1           #offlineTextColor:I
    .end local v2           #onlineTextColor:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 141
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init view failed, caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public rebindAlternate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 744
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/RosterListItem;->mCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    invoke-static {v0, v4}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3200(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V

    .line 748
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3000(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/content/res/Resources;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V

    .line 749
    invoke-direct {p0, v4}, Lcom/google/android/talk/RosterListItem;->handleLayout(Z)V

    .line 750
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem;->mNarrow:Z

    invoke-direct {p0, v0}, Lcom/google/android/talk/RosterListItem;->handleNarrow(Z)V

    .line 751
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/RosterListItem;->setActivated(Z)V

    .line 755
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 162
    return-void
.end method

.method public setVideoPresenceAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 494
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 498
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected shoverEnabled()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
