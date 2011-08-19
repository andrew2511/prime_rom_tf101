.class public Lcom/google/android/talk/ChatView;
.super Landroid/widget/LinearLayout;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/ChatView$19;,
        Lcom/google/android/talk/ChatView$AvatarCache;,
        Lcom/google/android/talk/ChatView$MessageBar;,
        Lcom/google/android/talk/ChatView$ChatListener;,
        Lcom/google/android/talk/ChatView$DeltaCursor;,
        Lcom/google/android/talk/ChatView$ConnectionStateListener;,
        Lcom/google/android/talk/ChatView$ChatAdapter;,
        Lcom/google/android/talk/ChatView$MessageItem;,
        Lcom/google/android/talk/ChatView$RequeryCallback;,
        Lcom/google/android/talk/ChatView$GroupChatInvitationListener;,
        Lcom/google/android/talk/ChatView$QueryHandler;,
        Lcom/google/android/talk/ChatView$VideoChatState;
    }
.end annotation


# static fields
.field private static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static SORT_ORDER:Ljava/lang/String;

.field private static sReceiveBackgroundColor:I


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mBodyColumn:I

.field private mCachingStarted:Z

.field private mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

.field private mCapabilities:I

.field private mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

.field private mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

.field private mChatSession:Lcom/google/android/gtalkservice/IChatSession;

.field private mChatsTableContactId:J

.field private mClientType:I

.field mCloseListener:Landroid/view/View$OnClickListener;

.field private mColorMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

.field private mContact:Ljava/lang/String;

.field private mContactId:J

.field private mContactInfoLoaded:Z

.field private mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

.field private mDateColumn:I

.field private mDeltaColumn:I

.field private mDismissNotificationWhenGainedFocus:Z

.field private mDisplaySentTimeColumn:I

.field mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

.field private mErrorCodeColumn:I

.field private mFocused:Z

.field private mGroupChat:Z

.field private mGroupChatApprovalRequested:Z

.field private mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

.field private mGroupChatColors:[I

.field private final mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHistoryView:Landroid/widget/ListView;

.field private mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialized:Z

.field private mInvitationListenerRegistered:Z

.field private mIsOnline:Z

.field private mJid:Ljava/lang/String;

.field private mListState:Landroid/os/Parcelable;

.field private mMayHaveUnreadChat:Z

.field private mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

.field mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMucInviter:Ljava/lang/String;

.field private mMucPassword:Ljava/lang/String;

.field private mMucRoomAddress:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mNicknameColumn:I

.field private mPaused:Z

.field private mPictureCache:Lcom/google/android/talk/PictureCache;

.field private mPresenceStatus:I

.field private mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

.field private mQueryUri:Landroid/net/Uri;

.field private mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

.field private mResources:Landroid/content/res/Resources;

.field private mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResumeVideoChat:Landroid/view/View$OnClickListener;

.field private mSelfAvatar:Landroid/graphics/drawable/Drawable;

.field private mSelfUsername:Ljava/lang/String;

.field private mSessionInited:Z

.field private mSingleAvatar:Landroid/graphics/drawable/Drawable;

.field mStartVideoChat:Landroid/view/View$OnClickListener;

.field mStartVoiceChat:Landroid/view/View$OnClickListener;

.field private mStartVoiceChatOnFirstDisplay:Z

.field private mStatusWarningView:Landroid/view/View;

.field mToggleBluetooth:Landroid/view/View$OnClickListener;

.field mToggleMute:Landroid/view/View$OnClickListener;

.field mToggleOtr:Landroid/view/View$OnClickListener;

.field private mTypeColumn:I

.field private mVideoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

.field private mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

.field private mWarningIcon:Landroid/widget/ImageView;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "err_code"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "err_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "show_ts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/ChatView;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 219
    const-string v0, "date ASC"

    sput-object v0, Lcom/google/android/talk/ChatView;->SORT_ORDER:Ljava/lang/String;

    .line 231
    sput v3, Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I

    .line 234
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/talk/ChatView;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup$LayoutParams;Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V
    .locals 3
    .parameter "activity"
    .parameter "lp"
    .parameter "intent"
    .parameter "cursor"
    .parameter "savedState"
    .parameter "host"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 376
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 176
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 192
    new-instance v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$ConnectionStateListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .line 198
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 230
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 269
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    .line 835
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 2599
    new-instance v0, Lcom/google/android/talk/ChatView$6;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$6;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 2618
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 2642
    new-instance v0, Lcom/google/android/talk/ChatView$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$10;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 2666
    new-instance v0, Lcom/google/android/talk/ChatView$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$12;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 2707
    new-instance v0, Lcom/google/android/talk/ChatView$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$13;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 2727
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 2734
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 2764
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3159
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 377
    invoke-virtual {p0, p2, p6}, Lcom/google/android/talk/ChatView;->setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 378
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p3, p4, p5, v0}, Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 391
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 176
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 192
    new-instance v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$ConnectionStateListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .line 198
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 230
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 269
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    .line 835
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 2599
    new-instance v0, Lcom/google/android/talk/ChatView$6;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$6;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 2618
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 2642
    new-instance v0, Lcom/google/android/talk/ChatView$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$10;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 2666
    new-instance v0, Lcom/google/android/talk/ChatView$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$12;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 2707
    new-instance v0, Lcom/google/android/talk/ChatView$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$13;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 2727
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 2734
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 2764
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3159
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 192
    new-instance v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$ConnectionStateListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .line 198
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 230
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 269
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    .line 835
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 2599
    new-instance v0, Lcom/google/android/talk/ChatView$6;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$6;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 2618
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 2642
    new-instance v0, Lcom/google/android/talk/ChatView$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$10;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 2666
    new-instance v0, Lcom/google/android/talk/ChatView$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$12;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 2707
    new-instance v0, Lcom/google/android/talk/ChatView$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$13;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 2727
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 2734
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 2764
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3159
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 388
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 192
    new-instance v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$ConnectionStateListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .line 198
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 230
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    .line 269
    new-instance v0, Lcom/google/android/talk/ChatView$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$1;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    .line 835
    iput-object v2, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 2599
    new-instance v0, Lcom/google/android/talk/ChatView$6;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$6;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/google/android/talk/ChatView$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$7;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 2618
    new-instance v0, Lcom/google/android/talk/ChatView$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$8;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    .line 2642
    new-instance v0, Lcom/google/android/talk/ChatView$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$10;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    .line 2666
    new-instance v0, Lcom/google/android/talk/ChatView$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$12;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    .line 2707
    new-instance v0, Lcom/google/android/talk/ChatView$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$13;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    .line 2727
    new-instance v0, Lcom/google/android/talk/ChatView$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$14;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mToggleOtr:Landroid/view/View$OnClickListener;

    .line 2734
    new-instance v0, Lcom/google/android/talk/ChatView$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$15;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    .line 2764
    new-instance v0, Lcom/google/android/talk/ChatView$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$17;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    .line 3159
    new-instance v0, Lcom/google/android/talk/ChatView$AvatarCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$AvatarCache;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/ChatView;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->pictureLoaded(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->initializeMessageBarState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/ChatView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/google/android/talk/ChatView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/google/android/talk/ChatView;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/talk/ChatView;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mNicknameColumn:I

    return v0
.end method

.method static synthetic access$1802(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mNicknameColumn:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mBodyColumn:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mBodyColumn:I

    return p1
.end method

.method static synthetic access$2000(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mDateColumn:I

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mDateColumn:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mTypeColumn:I

    return v0
.end method

.method static synthetic access$2102(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mTypeColumn:I

    return p1
.end method

.method static synthetic access$2200(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I

    return v0
.end method

.method static synthetic access$2202(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I

    return p1
.end method

.method static synthetic access$2300(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I

    return p1
.end method

.method static synthetic access$2400(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mDeltaColumn:I

    return v0
.end method

.method static synthetic access$2402(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mDeltaColumn:I

    return p1
.end method

.method static synthetic access$2500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$ChatAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/android/talk/ChatView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/talk/ChatView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/ChatView;->startGroupChatApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->requeryForChatHistory()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I

    return v0
.end method

.method static synthetic access$3802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    sput p0, Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I

    return p0
.end method

.method static synthetic access$3900(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getGroupchatShortname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/talk/ChatView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/ChatView;->scheduleRequery(J)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->cancelRequery()V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$AvatarCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/google/android/talk/ChatView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatColors:[I

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/android/talk/ChatView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mGroupChatColors:[I

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/PictureCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mPictureCache:Lcom/google/android/talk/PictureCache;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->userActionDetected()V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mIsOnline:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mIsOnline:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->removeInvitationListener()V

    return-void
.end method

.method static synthetic access$5602(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/android/talk/ChatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/google/android/talk/ChatView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/google/android/talk/ChatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mPaused:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    return p1
.end method

.method static synthetic access$6100(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mVideoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->viewVideoChat()V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/talk/ChatView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/google/android/talk/ChatView;->mChatsTableContactId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/android/talk/ChatView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/talk/ChatView;->mCapabilities:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/talk/ChatView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/android/talk/ChatView;->mCapabilities:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->updateWarningView()V

    return-void
.end method

.method public static addToContacts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "contact"

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 591
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "im_protocol"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method private cancelRequery()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    if-eqz v0, :cond_0

    .line 870
    const-string v0, "cancelRequery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 874
    :cond_0
    return-void
.end method

.method private dismissChatNotification()V
    .locals 4

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1984
    if-nez v0, :cond_0

    .line 1985
    const-string v0, "talk"

    const-string v1, "dismissChatNotification: no GTalkService object found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :goto_0
    return-void

    .line 1990
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissChatNotification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1991
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationFor(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    const-string v1, "talk"

    const-string v2, "dismissChatNotification: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private endVideoOrVoiceChat()V
    .locals 2

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 2651
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mVideoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    new-instance v1, Lcom/google/android/talk/ChatView$11;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$11;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    .line 2664
    return-void
.end method

.method private fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "p"

    .prologue
    const/16 v3, 0x40

    const/4 v2, -0x1

    .line 680
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 681
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 682
    .local v0, underscore:I
    if-le v0, v2, :cond_0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 686
    .end local v0           #underscore:I
    :cond_0
    return-object p1
.end method

.method private getAccountIdFromIntent(Landroid/content/Intent;)J
    .locals 3
    .parameter

    .prologue
    .line 1960
    const-string v0, "accountId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1956
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupchatShortname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nickname"

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    const/4 v1, 0x0

    .line 706
    :goto_0
    return-object v1

    .line 697
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 698
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 699
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 702
    :cond_1
    if-ltz v0, :cond_2

    .line 703
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 706
    goto :goto_0
.end method

.method private initAccountIdFromSavedStates(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 2138
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2139
    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAccountIdFromSavedStates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2142
    :cond_0
    return-void
.end method

.method private initializeMessageBarState()V
    .locals 3

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Z)V

    .line 2806
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 601
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 605
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private pictureLoaded(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->notifyDataSetInvalidated()V

    .line 1611
    return-void
.end method

.method private removeInvitationListener()V
    .locals 3

    .prologue
    .line 1789
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z

    if-nez v0, :cond_1

    .line 1790
    const-string v0, "removeInvitationListener: not registered, bail"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInvitationListener: mImSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1796
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 1798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    const-string v1, "talk"

    const-string v2, "removeInvitationListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requeryForChatHistory()V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->startQueryForChatHistory()V

    .line 855
    return-void
.end method

.method private resolveChatUrlIntent(Landroid/content/Intent;Landroid/database/Cursor;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 1926
    const-string v0, "groupChat"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1927
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1929
    if-ne v0, v3, :cond_0

    .line 1930
    const-string v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1931
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1932
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v3, v7

    .line 1933
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveChatUrlIntent: contact type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    move v0, v3

    .line 1937
    :cond_0
    if-lez v0, :cond_2

    .line 1938
    iput-boolean v7, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    .line 1939
    iput-object p3, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    .line 1940
    invoke-static {v1, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    .line 1945
    :goto_1
    return-void

    :cond_1
    move v3, v6

    .line 1932
    goto :goto_0

    .line 1942
    :cond_2
    iput-boolean v6, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    .line 1943
    invoke-static {p4, p5, p3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private resolveIntent(Landroid/content/Intent;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1964
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1965
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1967
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v4

    .line 1969
    const-string v1, "vnd.android.cursor.item/gtalk-chats"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1970
    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/ChatView;->resolveChatUrlIntent(Landroid/content/Intent;Landroid/database/Cursor;Ljava/lang/String;J)V

    .line 1975
    :goto_0
    invoke-static {v3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    .line 1976
    iput-wide v4, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveIntent: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1980
    return-void

    .line 1972
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/talk/ChatView;->resolveMessageUrlIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveMessageUrlIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1948
    const-string v0, "is_muc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    .line 1949
    iput-object p2, p0, Lcom/google/android/talk/ChatView;->mMucRoomAddress:Ljava/lang/String;

    .line 1950
    const-string v0, "muc_inviter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    .line 1951
    const-string v0, "muc_password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mMucPassword:Ljava/lang/String;

    .line 1952
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    .line 1953
    return-void
.end method

.method private scheduleRequery(J)V
    .locals 2
    .parameter

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Lcom/google/android/talk/ChatView$RequeryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/ChatView$RequeryCallback;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    .line 864
    :goto_0
    const-string v0, "scheduleRequery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 866
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mRequeryCallback:Lcom/google/android/talk/ChatView$RequeryCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startGroupChatApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGroupChatAppoval inviter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", room = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 765
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroupChatApprovalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not starting another"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 779
    :goto_0
    return-void

    .line 771
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/google/android/talk/GroupChatApproval;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 772
    const-string v1, "muc_inviter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v1, "approval"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 774
    const-string v1, "room"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v1, "accountId"

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 777
    iput-boolean v4, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 778
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v1, v0, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startQueryForChatHistory()V
    .locals 8

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$QueryHandler;->cancelOperation(I)V

    .line 841
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQueryForChatHistory: uri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    sget-object v4, Lcom/google/android/talk/ChatView;->MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/google/android/talk/ChatView;->SORT_ORDER:Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/ChatView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private stopRinger()V
    .locals 3

    .prologue
    .line 2781
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stopRinger: mCallRinger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->stopRing()V

    .line 2784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    .line 2786
    :cond_0
    return-void
.end method

.method private updateWarningView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2021
    .line 2023
    const/4 v0, 0x0

    .line 2025
    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    if-eqz v1, :cond_2

    .line 2026
    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mIsOnline:Z

    if-eqz v1, :cond_1

    .line 2027
    iget v1, p0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    if-nez v1, :cond_2

    .line 2030
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 2031
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c006f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v1, v6

    move v2, v5

    .line 2040
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mStatusWarningView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    if-nez v2, :cond_0

    .line 2042
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mWarningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2043
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    :cond_0
    return-void

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v5

    move v2, v5

    goto :goto_0

    :cond_2
    move v1, v6

    move v2, v6

    goto :goto_0
.end method

.method private userActionDetected()V
    .locals 1

    .prologue
    .line 1614
    const-string v0, "user action detected..."

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 1616
    return-void
.end method

.method private viewVideoChat()V
    .locals 4

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getBestAvailableJid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V

    .line 2802
    return-void
.end method


# virtual methods
.method public addInvitationListener()V
    .locals 3

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 1772
    const-string v0, "addInvitationListener: already registered, bail"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInvitationListener: mImSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1779
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatInvitationListener:Lcom/google/android/talk/ChatView$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 1781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInvitationListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    const-string v1, "talk"

    const-string v2, "addInvitationListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearChat()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2475
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2476
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2477
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mChatsTableContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2480
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2481
    const-string v3, "last_message_date"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2482
    const-string v3, "last_unread_message"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2485
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->requeryForChatHistory()V

    .line 2486
    return-void
.end method

.method public clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView;->setChildrenDrawingCacheEnabled(Z)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->invalidate()V

    .line 264
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 266
    :cond_2
    return-void
.end method

.method public createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 250
    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView;->setChildrenDrawingCacheEnabled(Z)V

    .line 251
    iput-boolean v1, p0, Lcom/google/android/talk/ChatView;->mCachingStarted:Z

    .line 253
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focus for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->bind()V

    .line 561
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->update()V

    .line 563
    iput-boolean v3, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    .line 567
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    .line 569
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mDismissNotificationWhenGainedFocus:Z

    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 570
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mDismissNotificationWhenGainedFocus:Z

    .line 572
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChatOnFirstDisplay:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->startVoiceChat()V

    .line 574
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChatOnFirstDisplay:Z

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 577
    iput-boolean v3, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    .line 578
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    return-wide v0
.end method

.method public getBestAvailableJid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2789
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getJidAddress()Ljava/lang/String;

    move-result-object v0

    .line 2791
    .local v0, jid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2793
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 2796
    :cond_0
    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/google/android/talk/ChatView;->mCapabilities:I

    return v0
.end method

.method public getChatsTableContactId()J
    .locals 2

    .prologue
    .line 543
    iget-wide v0, p0, Lcom/google/android/talk/ChatView;->mChatsTableContactId:J

    return-wide v0
.end method

.method public getClientType()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/google/android/talk/ChatView;->mClientType:I

    return v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method public getJidAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;

    return-object v0
.end method

.method public getMucParticipants()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 1720
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1724
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatSession;->getParticipants()[Ljava/lang/String;

    move-result-object v1

    .line 1725
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1726
    invoke-direct {p0, v4}, Lcom/google/android/talk/ChatView;->fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1727
    const-string v5, "private-chat-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMucParticipants: add participant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1729
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1732
    :catch_0
    move-exception v1

    .line 1733
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveChat: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1738
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    const-string v2, "private-chat-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMucParticipants: add mMucInviter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1740
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mMucInviter:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1745
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1746
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    const-string v2, "private-chat-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMucParticipants: add mContact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1752
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelfAvatar()V
    .locals 5

    .prologue
    .line 3162
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 3164
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    .line 3165
    new-instance v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 3166
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    iput-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 3167
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 3169
    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    .line 3170
    .local v1, app:Lcom/google/android/talk/TalkApp;
    new-instance v2, Lcom/google/android/talk/ChatView$18;

    invoke-direct {v2, p0, v0}, Lcom/google/android/talk/ChatView$18;-><init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 3188
    .local v2, update:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    invoke-virtual {v1, v0, v2}, Lcom/google/android/talk/TalkApp;->getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 3190
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #app:Lcom/google/android/talk/TalkApp;
    .end local v2           #update:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    :cond_0
    return-void
.end method

.method public getSession()Lcom/google/android/gtalkservice/IChatSession;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/android/talk/ChatView;->mPresenceStatus:I

    return v0
.end method

.method public goOffTheRecord(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1757
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1758
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    if-eqz v1, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gtalkservice/IImSession;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 1768
    :goto_0
    return-void

    .line 1763
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gtalkservice/IImSession;->goOffRecordWithContacts(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1765
    :catch_0
    move-exception v0

    .line 1766
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goOffTheRecord caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleUnreadMessages(Z)V
    .locals 4
    .parameter

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 893
    :goto_0
    return-void

    .line 881
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->dismissChatNotification()V

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->markAsRead()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUnreadMessages caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initSession(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1682
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1683
    const-string v0, "initSession: already inited, !force, bail"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1714
    :goto_0
    return v0

    .line 1687
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    .line 1690
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1691
    iget-wide v1, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 1693
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 1694
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSession: accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mImSession is null, not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1696
    goto :goto_0

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;

    .line 1700
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSession: found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_3

    .line 1704
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    if-nez v0, :cond_2

    .line 1705
    new-instance v0, Lcom/google/android/talk/ChatView$ChatListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatView$ChatListener;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    .line 1707
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    goto/16 :goto_0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    const-string v1, "talk"

    const-string v2, "initSession: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public initialize(Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 18
    .parameter "intent"
    .parameter "cursor"
    .parameter "savedState"
    .parameter "context"

    .prologue
    .line 406
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;

    .line 408
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    move-wide/from16 v16, v0

    .line 409
    .local v16, lastAccount:J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/talk/ChatView;->resolveIntent(Landroid/content/Intent;Landroid/database/Cursor;)V

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/talk/ChatView;->initAccountIdFromSavedStates(Landroid/os/Bundle;)V

    .line 411
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    move-wide v4, v0

    cmp-long v4, v4, v16

    if-eqz v4, :cond_0

    .line 412
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;

    .line 415
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    .line 416
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->getCachedContactId(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/talk/ChatView;->mContactId:J

    .line 418
    const-string v4, "client_type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/ChatView;->mClientType:I

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mInitialized was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 422
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/ChatView;->mInitialized:Z

    .line 423
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/ChatView;->mPaused:Z

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 426
    new-instance v4, Lcom/google/android/talk/ChatView$ChatAdapter;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView$ChatAdapter;-><init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 430
    new-instance v4, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    move-wide v7, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView;->mVideoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    .line 434
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z

    .line 436
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    move-wide v5, v0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/talk/PictureCache;->getInstance(Ljava/lang/String;JZ)Lcom/google/android/talk/PictureCache;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView;->mPictureCache:Lcom/google/android/talk/PictureCache;

    .line 442
    new-instance v9, Lcom/google/android/talk/ChatView$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/ChatView$2;-><init>(Lcom/google/android/talk/ChatView;Landroid/os/Handler;)V

    .line 454
    .local v9, observer:Landroid/database/ContentObserver;
    new-instance v4, Lcom/google/android/talk/ContactInfoQuery;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/ChatView;->mAccountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    move-object v4, v0

    new-instance v5, Lcom/google/android/talk/ChatView$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/talk/ChatView$3;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v4, v5}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    move-object v4, v0

    sget-object v5, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v4, v5}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->startQueryForChatHistory()V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 519
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/talk/ChatView$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->updateWarningView()V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView;->getSelfAvatar()V

    .line 528
    return-void

    .line 522
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mGroupChat:Z

    return v0
.end method

.method public isOffTheRecord()Z
    .locals 2

    .prologue
    .line 1902
    const/4 v0, 0x0

    .line 1903
    .local v0, isOffTheRecord:Z
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_0

    .line 1905
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatSession;->isOffTheRecord()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1909
    :cond_0
    :goto_0
    return v0

    .line 1906
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public leaveChat()V
    .locals 4

    .prologue
    .line 1914
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leaveChat: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public matchBuddy(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, contact:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    .line 397
    .local v0, accountId:J
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/talk/ChatView;->mAccountId:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mPaused:Z

    .line 659
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mPaused:Z

    .line 655
    return-void
.end method

.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
    .locals 3
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "requestReply"

    .prologue
    .line 2809
    if-eqz p2, :cond_0

    .line 2810
    iget v0, p2, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    .line 2880
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2812
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v1, p2, Lcom/google/android/talk/videochat/CallState;->video:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_1
    iget v2, p2, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_1

    .line 2843
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2844
    iget-boolean v0, p2, Lcom/google/android/talk/videochat/CallState;->video:Z

    if-eqz v0, :cond_3

    .line 2845
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v1, p2, Lcom/google/android/talk/videochat/CallState;->mute:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_2
    iget v2, p2, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_2

    .line 2849
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v1, p2, Lcom/google/android/talk/videochat/CallState;->mute:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_3
    iget v2, p2, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;I)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_3

    .line 2856
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2857
    iget-boolean v0, p2, Lcom/google/android/talk/videochat/CallState;->video:Z

    if-eqz v0, :cond_5

    .line 2858
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    iget v2, p2, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;I)V

    goto :goto_0

    .line 2861
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    iget-boolean v1, p2, Lcom/google/android/talk/videochat/CallState;->mute:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    :goto_4
    iget v2, p2, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;I)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    goto :goto_4

    .line 2872
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2873
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 2876
    :cond_7
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->stopRinger()V

    goto/16 :goto_0

    .line 2810
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-static {v2}, Lcom/google/android/talk/ChatView$MessageBar;->access$200(Lcom/google/android/talk/ChatView$MessageBar;)Landroid/view/View;

    move-result-object v1

    .line 288
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v3, 0x7f0b0026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    const v4, 0x7f0b002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 299
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2063
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2064
    const-string v0, "Back button pressed, finish activity"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 2065
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2066
    const/4 v0, 0x1

    .line 2069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2049
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2050
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2051
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mStatusWarningView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mStatusWarningView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2054
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 2059
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2010
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 2012
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2013
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2014
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->startQueryForChatHistory()V

    .line 2018
    :goto_0
    return-void

    .line 2016
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->requeryForChatHistory()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 625
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mInitialized:Z

    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->cleanupContactInfoCursor()V

    .line 629
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$ChatAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 631
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 635
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->cancelRequery()V

    .line 636
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->unfocus()V

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mConnectionListener:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mChatListener:Lcom/google/android/talk/ChatView$ChatListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mSessionInited:Z

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: remove listeners caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restoreUnsentComposedMessage(Landroid/widget/EditText;)V
    .locals 2
    .parameter

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-nez v0, :cond_0

    .line 1865
    :goto_0
    return-void

    .line 1832
    :cond_0
    new-instance v0, Lcom/google/android/talk/ChatView$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/ChatView$5;-><init>(Lcom/google/android/talk/ChatView;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    .line 1863
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1864
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mRestoreUnsentComposedMessageAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 1868
    if-nez p1, :cond_0

    .line 1888
    :goto_0
    return-void

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    .line 1874
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1876
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_1

    .line 1878
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v0

    .line 1880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState: store account id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 1881
    const-string v2, "accountId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    :cond_1
    :goto_1
    const-string v0, "mucrequest"

    iget-boolean v1, p0, Lcom/google/android/talk/ChatView;->mGroupChatApprovalRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    const-string v1, "talk"

    const-string v2, "onSaveInstanceState: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public saveUnsentComposedMessage(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    .line 1806
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUnsentComposedMessage: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V

    .line 1809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_0

    .line 1810
    new-instance v1, Lcom/google/android/talk/ChatView$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/ChatView$4;-><init>(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1824
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1826
    :cond_0
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1998
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2007
    :goto_0
    return-void

    .line 2003
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0, p1}, Lcom/google/android/gtalkservice/IChatSession;->sendChatMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    const-string v1, "talk"

    const-string v2, "sendMessage: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStartVoiceChatOnFirstDisplay(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/google/android/talk/ChatView;->mStartVoiceChatOnFirstDisplay:Z

    .line 556
    return-void
.end method

.method public setVideoChatStateAccessor(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;)V
    .locals 0
    .parameter "stateAccessor"

    .prologue
    .line 3138
    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    .line 3139
    return-void
.end method

.method public setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V
    .locals 10
    .parameter "lp"
    .parameter "host"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 311
    .local v0, context:Landroid/content/Context;
    iput-object p2, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 312
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    .line 313
    iget-object v8, p0, Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;

    .line 314
    new-instance v8, Lcom/google/android/talk/ChatView$QueryHandler;

    invoke-direct {v8, p0, v0}, Lcom/google/android/talk/ChatView$QueryHandler;-><init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;

    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/google/android/talk/ChatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;

    .line 322
    iget-object v8, p0, Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040012

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 324
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/google/android/talk/ChatView;->setOrientation(I)V

    .line 327
    const v8, 0x7f10003f

    invoke-virtual {p0, v8}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    .line 328
    iget-object v8, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v8, p0, Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 332
    const v8, 0x7f100040

    invoke-virtual {p0, v8}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/talk/ChatView;->mStatusWarningView:Landroid/view/View;

    .line 333
    const v8, 0x7f100041

    invoke-virtual {p0, v8}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mWarningIcon:Landroid/widget/ImageView;

    .line 334
    const v8, 0x7f100042

    invoke-virtual {p0, v8}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/talk/ChatView;->mWarningText:Landroid/widget/TextView;

    .line 335
    new-instance v8, Lcom/google/android/talk/ChatView$MessageBar;

    invoke-direct {v8, p0}, Lcom/google/android/talk/ChatView$MessageBar;-><init>(Lcom/google/android/talk/ChatView;)V

    iput-object v8, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    .line 337
    const v8, 0x7f10003e

    invoke-virtual {p0, v8}, Lcom/google/android/talk/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 338
    .local v7, uber:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v8}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->getMessageBar()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 339
    .local v4, mb:Landroid/widget/LinearLayout;
    const v8, 0x7f10003f

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 341
    .local v1, hi:Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 343
    .local v6, mbLayoutOld:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .local v3, hiLayoutOld:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v5, mbLayout:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v2, hiLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 354
    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 355
    const/16 v8, 0x30

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 356
    iget-object v8, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0b0026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 357
    const/4 v8, 0x0

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 359
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-void
.end method

.method public startVideoChat()V
    .locals 5

    .prologue
    .line 2742
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2762
    :goto_0
    return-void

    .line 2748
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->startVideoChatAnimation()V

    .line 2751
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2754
    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/ChatView$16;

    invoke-direct {v2, p0}, Lcom/google/android/talk/ChatView$16;-><init>(Lcom/google/android/talk/ChatView;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startVoiceChat()V
    .locals 2

    .prologue
    .line 2626
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2627
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    :goto_0
    return-void

    .line 2632
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 2633
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mVideoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    new-instance v1, Lcom/google/android/talk/ChatView$9;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$9;-><init>(Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    goto :goto_0
.end method

.method public unfocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unfocus for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, v2}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/ChatView;->mDismissNotificationWhenGainedFocus:Z

    .line 669
    invoke-direct {p0}, Lcom/google/android/talk/ChatView;->removeInvitationListener()V

    .line 670
    iput-boolean v2, p0, Lcom/google/android/talk/ChatView;->mFocused:Z

    .line 671
    return-void
.end method

.method public updateHost()V
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-interface {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->update(Landroid/view/View;)V

    .line 612
    :cond_0
    return-void
.end method
