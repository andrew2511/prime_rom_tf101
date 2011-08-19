.class Lcom/google/android/talk/ChatView$MessageBar;
.super Ljava/lang/Object;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageBar"
.end annotation


# instance fields
.field private mAllViews:[Landroid/view/View;

.field private mAudioChatButton:Landroid/view/View;

.field private mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

.field public mBluetoothState:I

.field private mCancelAudioButton:Landroid/view/View;

.field private mCancelVideoButton:Landroid/view/View;

.field private mCloseChatButton:Landroid/view/View;

.field private mCulledForGroupChatMenuItems:[Ljava/lang/Integer;

.field private mEndAudioButton:Landroid/view/View;

.field private mEndVideoButton:Landroid/view/View;

.field private mMessageBarContainer:Landroid/view/View;

.field private mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

.field private mMoreButton:Landroid/view/View;

.field private mMuteUnmuteButton:Landroid/view/View;

.field private mOkToShowWhileOfflineViews:[Landroid/view/View;

.field private mResumeVideoChatButton:Landroid/view/View;

.field private mVideoChatButton:Landroid/view/View;

.field private mVisible:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/talk/ChatView$VideoChatState;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2920
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2883
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 2888
    iput v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    .line 2908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisibleMap:Ljava/util/HashMap;

    .line 2912
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    .line 2914
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f1000c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f1000c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f1000c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCulledForGroupChatMenuItems:[Ljava/lang/Integer;

    .line 2921
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/ChatView$MessageBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/google/android/talk/ChatView$MessageBar;)[Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCulledForGroupChatMenuItems:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/google/android/talk/ChatView$MessageBar;)Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/google/android/talk/ChatView$MessageBar;Lcom/google/android/talk/ChatView$VideoChatState;)Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2882
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    return-object p1
.end method


# virtual methods
.method public bind()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2924
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->getMessageBar()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    .line 2925
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    if-nez v3, :cond_0

    .line 2926
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid MessageBar id"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2929
    :cond_0
    const v3, 0x7f100065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    .line 2930
    const v3, 0x7f100066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    .line 2931
    const v3, 0x7f100068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMoreButton:Landroid/view/View;

    .line 2932
    const v3, 0x7f10005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    .line 2933
    const v3, 0x7f100062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    .line 2934
    const v3, 0x7f100061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    .line 2935
    const v3, 0x7f100063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    .line 2936
    const v3, 0x7f100060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    .line 2937
    const v3, 0x7f10005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    .line 2938
    const v3, 0x7f100064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    .line 2939
    const v3, 0x7f100067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/BluetoothButton;

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    .line 2942
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2943
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2944
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2945
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2946
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2947
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2948
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2949
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2950
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2951
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, v4, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/google/android/talk/BluetoothButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2953
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMoreButton:Landroid/view/View;

    invoke-direct {v1, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2954
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0003

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2955
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v3, v3, Lcom/google/android/talk/ChatView;->mMoreOptionsListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2957
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMoreButton:Landroid/view/View;

    new-instance v4, Lcom/google/android/talk/ChatView$MessageBar$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/talk/ChatView$MessageBar$1;-><init>(Lcom/google/android/talk/ChatView$MessageBar;Landroid/widget/PopupMenu;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2992
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisibleMap:Ljava/util/HashMap;

    .line 2993
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/talk/ChatView$VideoChatState;[Landroid/view/View;>;"
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMoreButton:Landroid/view/View;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2997
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3003
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    sget-object v3, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v4, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    const/16 v3, 0xb

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMoreButton:Landroid/view/View;

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAllViews:[Landroid/view/View;

    .line 3012
    const/4 v3, 0x6

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMoreButton:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mOkToShowWhileOfflineViews:[Landroid/view/View;

    .line 3015
    return-void
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 3055
    iget v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    return v0
.end method

.method public getState()Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 1

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    return-object v0
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 3018
    iget v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;IZ)V

    .line 3019
    return-void
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;I)V
    .locals 1
    .parameter "state"
    .parameter "bluetoothState"

    .prologue
    .line 3022
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;IZ)V

    .line 3023
    return-void
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;IZ)V
    .locals 2
    .parameter "state"
    .parameter "bluetoothState"
    .parameter "forceUpdate"

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/ChatView$MessageBar$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/ChatView$MessageBar$2;-><init>(Lcom/google/android/talk/ChatView$MessageBar;Lcom/google/android/talk/ChatView$VideoChatState;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3048
    return-void
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Z)V
    .locals 1
    .parameter "state"
    .parameter "forceUpdate"

    .prologue
    .line 3026
    iget v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;IZ)V

    .line 3027
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    .line 3059
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    if-nez v9, :cond_1

    .line 3060
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    const-string v10, "MessageBar.update: mMessageBarContainer is null, bail"

    invoke-static {v9, v10}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 3134
    :cond_0
    :goto_0
    return-void

    .line 3063
    :cond_1
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$400(Lcom/google/android/talk/ChatView;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3064
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    const-string v10, "MessageBar.update: !mContactInfoLoaded, bail"

    invoke-static {v9, v10}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 3068
    :cond_2
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 3069
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisibleMap:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v6, v0, v2

    .line 3070
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 3071
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3069
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3075
    .end local v6           #v:Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    .line 3077
    .local v5, muteButtonResource:I
    sget-object v9, Lcom/google/android/talk/ChatView$19;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v10}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 3091
    :goto_2
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageButton;

    .line 3092
    .local v4, muteButton:Landroid/widget/ImageButton;
    if-eqz v5, :cond_8

    .line 3093
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3098
    :goto_3
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    sget-object v10, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$5400(Lcom/google/android/talk/ChatView;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3099
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$800(Lcom/google/android/talk/ChatView;)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v1

    .line 3100
    .local v1, audioCapable:Z
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$800(Lcom/google/android/talk/ChatView;)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v7

    .line 3102
    .local v7, videoCapable:Z
    if-nez v7, :cond_5

    .line 3103
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3105
    :cond_5
    if-nez v1, :cond_6

    .line 3106
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3110
    .end local v1           #audioCapable:Z
    .end local v7           #videoCapable:Z
    :cond_6
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    invoke-virtual {v9, v10}, Lcom/google/android/talk/BluetoothButton;->handleBluetoothStateChange(I)V

    .line 3111
    iget v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    if-nez v9, :cond_7

    .line 3112
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3115
    :cond_7
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAllViews:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_b

    aget-object v6, v0, v2

    .line 3116
    .restart local v6       #v:Landroid/view/View;
    if-nez v6, :cond_9

    .line 3115
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3080
    .end local v4           #muteButton:Landroid/widget/ImageButton;
    .end local v6           #v:Landroid/view/View;
    :pswitch_0
    const v5, 0x7f020089

    .line 3081
    goto :goto_2

    .line 3085
    :pswitch_1
    const v5, 0x7f020087

    .line 3086
    goto :goto_2

    .line 3095
    .restart local v4       #muteButton:Landroid/widget/ImageButton;
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 3119
    .restart local v6       #v:Landroid/view/View;
    :cond_9
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVisible:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    move v8, v9

    .line 3120
    .local v8, visibility:I
    :goto_6
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3121
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$5400(Lcom/google/android/talk/ChatView;)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 3119
    .end local v8           #visibility:I
    :cond_a
    const/16 v9, 0x8

    move v8, v9

    goto :goto_6

    .line 3126
    .end local v6           #v:Landroid/view/View;
    :cond_b
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$5400(Lcom/google/android/talk/ChatView;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3127
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mOkToShowWhileOfflineViews:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 3128
    .restart local v6       #v:Landroid/view/View;
    if-nez v6, :cond_c

    .line 3127
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3131
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 3077
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
