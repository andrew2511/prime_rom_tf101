.class public Lcom/google/android/talk/fragments/BuddyListFragment;
.super Lcom/google/android/talk/fragments/RosterListFragment;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;,
        Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;,
        Lcom/google/android/talk/fragments/BuddyListFragment$Controller;,
        Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    }
.end annotation


# static fields
.field private static final SINGLE_CONTACT_USERNAME_PROJECTION:[Ljava/lang/String;

.field private static sInjectedAdapter:Lcom/google/android/talk/IRosterListAdapter;


# instance fields
.field private mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

.field private mCallStateUpdateHack:Ljava/lang/Runnable;

.field private final mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

.field private mCloseAllChatsMenuItem:Landroid/view/MenuItem;

.field private mColumnAccount:I

.field private mColumnCapabilities:I

.field private mColumnContactId:I

.field private mColumnGroupChat:I

.field private mColumnNickname:I

.field private mColumnSubscStatus:I

.field private mColumnSubscType:I

.field private mColumnType:I

.field private mColumnUsername:I

.field private mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

.field mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

.field private mCurrentSearchString:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFullSearchListener:Landroid/view/View$OnClickListener;

.field private final mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsOnline:Z

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mNarrow:Z

.field mOnCancel:Ljava/lang/Runnable;

.field private mQuickContactsMenuItem:Landroid/view/MenuItem;

.field private final mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

.field private mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

.field private mStatusButton:Landroid/widget/ImageButton;

.field private mUpdateStatusRunnable:Ljava/lang/Runnable;

.field private mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/BuddyListFragment;->SINGLE_CONTACT_USERNAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;-><init>()V

    .line 123
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mUpdateStatusRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    .line 354
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    .line 375
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    .line 410
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    .line 498
    new-instance v0, Lcom/google/android/talk/util/Markup;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIsOnline:Z

    .line 1606
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$10;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFullSearchListener:Landroid/view/View$OnClickListener;

    .line 1713
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$12;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/BuddyListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setIsOnline(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->restoreAudioStream()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/BuddyListFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setAudioStream(I)V

    return-void
.end method

.method private accountInfoAvailable()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private blockContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_0

    .line 1254
    const-string v0, "talk"

    const-string v1, "[BuddyList] blockContact: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :goto_0
    return-void

    .line 1258
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_1

    .line 1262
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/DatabaseUtils;->removeChatsByContactId(Landroid/content/ContentResolver;J)I

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] blockContact caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cancelSearch()V
    .locals 3

    .prologue
    .line 1585
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 1586
    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/loaders/RosterListLoader;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/String;)V

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mOnCancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mOnCancel:Ljava/lang/Runnable;

    .line 1591
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mOnCancel:Ljava/lang/Runnable;

    .line 1592
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1594
    :cond_1
    return-void
.end method

.method private closeAllChats()V
    .locals 3

    .prologue
    .line 1343
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 1344
    const-string v0, "talk"

    const-string v1, "[BuddyList] closeAllChats"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->closeAllChatSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->endActiveVideoOrVoiceChat()V

    .line 1358
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onCloseAllChats()V

    .line 1359
    return-void

    .line 1350
    :cond_0
    :try_start_1
    const-string v0, "talk"

    const-string v1, "[BuddyList] closeAllChats: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private confirmRemoveSelectedContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 1207
    if-nez p1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1211
    if-eqz v0, :cond_0

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c002d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1222
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1224
    const v3, 0x7f0c002e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1226
    const v1, 0x104000a

    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$8;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1240
    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1241
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private dismissStatusbarNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 3
    .parameter

    .prologue
    .line 1128
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    const-string v1, "talk"

    const-string v2, "dismissStatusbarNotifications caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private endActiveVideoOrVoiceChat()V
    .locals 6

    .prologue
    .line 1362
    iget-object v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v3}, Lcom/google/android/talk/IRosterListAdapter;->getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v0

    .line 1363
    .local v0, activeCallState:Lcom/google/android/talk/RosterListAdapter$CallState;
    if-eqz v0, :cond_0

    .line 1364
    iget-object v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    .line 1365
    .local v1, bareJid:Ljava/lang/String;
    new-instance v2, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1367
    .local v2, vca:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$9;

    invoke-direct {v3, p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$9;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    .line 1374
    .end local v1           #bareJid:Ljava/lang/String;
    .end local v2           #vca:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
    :cond_0
    return-void
.end method

.method private static getStatusUrls(Ljava/lang/String;)[Landroid/text/style/URLSpan;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 863
    if-nez p0, :cond_0

    .line 864
    new-array v0, v3, [Landroid/text/style/URLSpan;

    .line 870
    :goto_0
    return-object v0

    .line 866
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 867
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    move-object v0, p0

    goto :goto_0

    .line 870
    :cond_1
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method private static getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACT_ID:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/talk/fragments/BuddyListFragment;->SINGLE_CONTACT_USERNAME_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1453
    if-eqz v0, :cond_0

    .line 1455
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1456
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1459
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1465
    :goto_1
    return-object v0

    .line 1459
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1462
    :cond_0
    const-string v0, "getUsernameForId"

    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logEmptyCursor(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method private getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 1245
    if-nez p1, :cond_0

    .line 1246
    const/4 v0, 0x0

    .line 1249
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 1297
    const-string v0, "talk"

    const-string v1, "[BuddyList] hideContact: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    if-eqz v0, :cond_0

    .line 1305
    if-eqz p2, :cond_2

    .line 1306
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->hideContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] hideContact caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1308
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->clearContactFlags(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isInvite(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    .line 875
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscStatus:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    .line 876
    .local v0, subscriptionStatus:J
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscType:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 878
    .local v2, subscriptionType:J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private launchStatusUrl(Landroid/widget/AdapterView$AdapterContextMenuInfo;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1419
    if-nez p1, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1422
    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getStatusUrls(Ljava/lang/String;)[Landroid/text/style/URLSpan;

    move-result-object v0

    .line 1425
    if-ltz p2, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 1426
    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1427
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1428
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private leaveChat(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 7
    .parameter

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1384
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1385
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1387
    const-string v2, "account"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveChat: for contact "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1393
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 1395
    if-eqz v0, :cond_3

    .line 1396
    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1397
    if-nez v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1400
    :cond_1
    if-eqz v0, :cond_2

    .line 1401
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onLeaveChat(JLjava/lang/String;)V

    goto :goto_0

    .line 1406
    :cond_2
    :try_start_1
    const-string v0, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaveChat: no ChatSession found for contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    const-string v4, "talk"

    const-string v5, "leaveChat: caught "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1409
    :cond_3
    :try_start_2
    const-string v0, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaveChat: no ImSession found for account id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private loadSelfStatus()V
    .locals 2

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v0, :cond_0

    .line 1531
    :goto_0
    return-void

    .line 1519
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatusCursor()Lcom/google/android/talk/SelfStatusCursor;

    move-result-object v0

    .line 1520
    if-nez v0, :cond_1

    .line 1521
    const-string v0, "loadSelfStatus: null cursor returned!"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v1, :cond_2

    .line 1526
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v1}, Lcom/google/android/talk/SelfStatusCursor;->close()V

    .line 1528
    :cond_2
    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 1529
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    .line 1530
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mUpdateStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/SelfStatusCursor;->setOnAvatarRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadSelfStatusCursor()Lcom/google/android/talk/SelfStatusCursor;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1534
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_0

    move-object v0, v4

    .line 1558
    :goto_0
    return-object v0

    .line 1541
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1548
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1549
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1553
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1554
    new-instance v3, Lcom/google/android/talk/SelfStatusCursor;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/talk/SelfStatusCursor;-><init>(Landroid/app/Activity;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    move-object v0, v3

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSelfStatusCursor: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1544
    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method private static logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1511
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BuddyList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1507
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 1508
    return-void
.end method

.method private logout()V
    .locals 5

    .prologue
    .line 1320
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->logout()V

    .line 1325
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 1326
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, v1}, Lcom/google/android/talk/AccountLoginUtils;->setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->endActiveVideoOrVoiceChat()V

    .line 1338
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onLogout()V

    .line 1339
    return-void

    .line 1330
    :cond_1
    :try_start_1
    const-string v0, "talk"

    const-string v1, "[BuddyList] logout: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] logout: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1503
    const/4 v0, 0x2

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 1504
    return-void
.end method

.method private pinContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 1274
    const-string v0, "talk"

    const-string v1, "[BuddyList] pinContact: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_0

    .line 1282
    if-eqz p2, :cond_2

    .line 1283
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->pinContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] pinContact caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->clearContactFlags(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private registerCallStateListener()V
    .locals 4

    .prologue
    .line 748
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$6;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/talk/fragments/BuddyListFragment$6;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    .line 763
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->registerCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->requestCallStateUpdate()V

    .line 769
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$7;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    .line 775
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 776
    return-void
.end method

.method private registerForIntentBroadcast()V
    .locals 3

    .prologue
    .line 788
    const-string v0, "registerForIntentBroadcast"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 790
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFilter:Landroid/content/IntentFilter;

    .line 791
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    return-void
.end method

.method private restoreAudioStream()V
    .locals 2

    .prologue
    .line 1706
    const-string v0, "restoreAudioStream"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1708
    if-eqz v0, :cond_0

    .line 1709
    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1711
    :cond_0
    return-void
.end method

.method private setAudioStream(I)V
    .locals 3
    .parameter

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioStream: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V

    .line 1700
    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1703
    :cond_0
    return-void
.end method

.method private setIsOnline(Z)V
    .locals 2
    .parameter "isOnline"

    .prologue
    .line 1115
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIsOnline:Z

    .line 1116
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIsOnline(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1118
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1119
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus(Z)V

    .line 1122
    .end local v0           #l:Landroid/widget/ListView;
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mStatusButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mStatusButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1125
    :cond_1
    return-void
.end method

.method private setQuickContactsMenuItemState()V
    .locals 3

    .prologue
    .line 853
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mQuickContactsMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 855
    .local v0, showQC:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mQuickContactsMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    const v2, 0x7f0c002a

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 858
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mQuickContactsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 860
    .end local v0           #showQC:Z
    :cond_0
    return-void

    .line 854
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 855
    .restart local v0       #showQC:Z
    :cond_2
    const v2, 0x7f0c002b

    goto :goto_1
.end method

.method private showQuickContacts(Z)V
    .locals 1
    .parameter "showQC"

    .prologue
    .line 1202
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;)V

    .line 1203
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    .line 1204
    return-void

    .line 1202
    :cond_0
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    goto :goto_0
.end method

.method private showSelectedContactInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1434
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 1439
    .local v0, buddyInfo:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 1440
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 1442
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0
.end method

.method private startSelfStatusActivityIfOnline()V
    .locals 3

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIsOnline:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onRequestSetSelfStatus(J)V

    goto :goto_0
.end method

.method private startVideoChat(IZ)V
    .locals 5
    .parameter "position"
    .parameter "voiceOnly"

    .prologue
    .line 1035
    if-nez p1, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startSelfStatusActivityIfOnline()V

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1041
    .local v2, c:Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 1052
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, contact:Ljava/lang/String;
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1048
    .local v0, account:J
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1, v3, p2}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;Z)V

    goto :goto_0
.end method

.method private unregisterCallStateListener()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->unregisterCallStateListener()V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    .line 745
    :cond_0
    return-void
.end method

.method private unregisterForIntentBroadcast()V
    .locals 2

    .prologue
    .line 796
    const-string v0, "unregisterForIntentBroadcast"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 798
    return-void
.end method

.method private updateStatus()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus(Z)V

    .line 503
    return-void
.end method

.method private updateStatus(Z)V
    .locals 4
    .parameter "clearAvatarCache"

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 508
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AvatarCache;->clear(Ljava/lang/String;)V

    .line 513
    .end local v0           #cache:Lcom/google/android/talk/AvatarCache;
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-interface {v1, v2}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    .line 516
    :cond_1
    return-void
.end method


# virtual methods
.method protected addRemoteListeners()V
    .locals 3

    .prologue
    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 1175
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 1176
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->dismissStatusbarNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 1186
    :cond_1
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    const-string v1, "talk"

    const-string v2, "addRemoteListeners caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addToContacts(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "username"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0, p2}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onAddToContacts(Ljava/lang/String;)V

    .line 1378
    return-void
.end method

.method protected createRosterListAdapter()Lcom/google/android/talk/IRosterListAdapter;
    .locals 7

    .prologue
    .line 626
    sget-object v3, Lcom/google/android/talk/fragments/BuddyListFragment;->sInjectedAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v3, :cond_1

    .line 627
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;

    sget-object v3, Lcom/google/android/talk/fragments/BuddyListFragment;->sInjectedAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-direct {v1, p0, v3}, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V

    .line 639
    .local v1, adapter:Lcom/google/android/talk/IRosterListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 640
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v0, :cond_0

    .line 641
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/google/android/talk/fragments/BuddyListFragment$4;

    invoke-direct {v6, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$4;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/talk/IRosterListAdapter;->init(JLandroid/app/Activity;Ljava/lang/Runnable;)V

    .line 649
    :cond_0
    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$5;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$5;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-interface {v1, v3}, Lcom/google/android/talk/IRosterListAdapter;->setOnPresenceClickedListener(Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;)V

    .line 672
    return-object v1

    .line 631
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #adapter:Lcom/google/android/talk/IRosterListAdapter;
    :cond_1
    new-instance v2, Lcom/google/android/talk/RosterListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/talk/RosterListAdapter;-><init>(Landroid/content/Context;)V

    .line 632
    .local v2, inner:Lcom/google/android/talk/RosterListAdapter;
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V

    .line 636
    .restart local v1       #adapter:Lcom/google/android/talk/IRosterListAdapter;
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mNarrow:Z

    invoke-interface {v1, v3}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    goto :goto_0
.end method

.method public doHistorySearch()V
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFullSearchListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1602
    return-void
.end method

.method protected getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method public getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    return-object v0
.end method

.method public getFilterMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 831
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 832
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "gtalk-view-mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 834
    .local v0, mode:I
    if-nez v0, :cond_0

    .line 835
    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    .line 837
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    const/4 v1, 0x1

    .line 677
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 679
    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setHasOptionsMenu(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->createRosterListAdapter()Lcom/google/android/talk/IRosterListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    .line 683
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;)V

    .line 684
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 687
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onDisplayProgress(Z)V

    .line 688
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 170
    const-string v2, "onAttach"

    invoke-direct {p0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onAttach(Landroid/app/Activity;)V

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    move-object v1, v0

    .line 174
    .local v1, host:Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
    invoke-interface {v1}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getBuddyListController()Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setController(Lcom/google/android/talk/fragments/BuddyListFragment$Controller;)V

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 176
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 971
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 973
    .local v6, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 975
    .local v7, itemId:I
    packed-switch v7, :pswitch_data_0

    .line 1025
    if-lt v7, v0, :cond_1

    .line 1026
    sub-int v0, v7, v0

    invoke-direct {p0, v6, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->launchStatusUrl(Landroid/widget/AdapterView$AdapterContextMenuInfo;I)V

    move v0, v9

    .line 1031
    :goto_0
    return v0

    .line 977
    :pswitch_0
    if-nez v6, :cond_0

    move v0, v9

    .line 978
    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 981
    .local v8, username:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/google/android/talk/fragments/BuddyListFragment;->addToContacts(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v9

    .line 982
    goto :goto_0

    .line 985
    .end local v8           #username:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/BuddyListFragment;->confirmRemoveSelectedContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v9

    .line 986
    goto :goto_0

    .line 989
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/BuddyListFragment;->blockContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v9

    .line 990
    goto :goto_0

    .line 993
    :pswitch_3
    invoke-direct {p0, v6, v9}, Lcom/google/android/talk/fragments/BuddyListFragment;->hideContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v9

    .line 994
    goto :goto_0

    .line 997
    :pswitch_4
    invoke-direct {p0, v6, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->hideContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v9

    .line 998
    goto :goto_0

    .line 1001
    :pswitch_5
    invoke-direct {p0, v6, v9}, Lcom/google/android/talk/fragments/BuddyListFragment;->pinContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v9

    .line 1002
    goto :goto_0

    .line 1005
    :pswitch_6
    invoke-direct {p0, v6, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->pinContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v9

    .line 1006
    goto :goto_0

    .line 1009
    :pswitch_7
    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/BuddyListFragment;->showSelectedContactInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v9

    .line 1010
    goto :goto_0

    .line 1013
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget v3, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    move v0, v9

    .line 1014
    goto :goto_0

    .line 1016
    :pswitch_9
    iget v0, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0, v9}, Lcom/google/android/talk/fragments/BuddyListFragment;->startVideoChat(IZ)V

    move v0, v9

    .line 1017
    goto :goto_0

    .line 1019
    :pswitch_a
    iget v0, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->startVideoChat(IZ)V

    move v0, v9

    .line 1020
    goto :goto_0

    .line 1022
    :pswitch_b
    invoke-direct {p0, v6}, Lcom/google/android/talk/fragments/BuddyListFragment;->leaveChat(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v9

    .line 1023
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1031
    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 22
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mTabletMode:Z

    move v14, v0

    if-eqz v14, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0

    .line 891
    .local v5, c:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v14, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-eqz v14, :cond_0

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v14

    iget v15, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    .line 896
    .local v7, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->isInvite(Landroid/database/Cursor;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 900
    const-string v14, "last_message_date"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 902
    .local v9, lastMessageDate:J
    const-wide/16 v14, 0x0

    cmp-long v14, v9, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move v11, v14

    .line 903
    .local v11, showChat:Z
    :goto_1
    const-string v14, "status"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/talk/fragments/BuddyListFragment;->getStatusUrls(Ljava/lang/String;)[Landroid/text/style/URLSpan;

    move-result-object v12

    .line 906
    .local v12, statusUrls:[Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnNickname:I

    move v14, v0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnType:I

    move v14, v0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 909
    .local v13, type:I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnCapabilities:I

    move v14, v0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 916
    .local v6, capabilities:I
    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 917
    const/4 v14, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x0

    const v17, 0x7f0c001f

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 918
    const/4 v14, 0x0

    const/16 v15, 0xb

    const/16 v16, 0x0

    const v17, 0x7f0c0020

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 949
    :goto_2
    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    .line 950
    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const v17, 0x7f0c0029

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    const/16 v15, 0x40

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 954
    const/4 v14, 0x5

    if-ne v13, v14, :cond_a

    .line 955
    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const v17, 0x7f0c0017

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 961
    :goto_3
    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    .line 962
    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const v17, 0x7f0c0019

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 902
    .end local v6           #capabilities:I
    .end local v11           #showChat:Z
    .end local v12           #statusUrls:[Landroid/text/style/URLSpan;
    .end local v13           #type:I
    :cond_2
    const/4 v14, 0x0

    move v11, v14

    goto/16 :goto_1

    .line 919
    .restart local v6       #capabilities:I
    .restart local v11       #showChat:Z
    .restart local v12       #statusUrls:[Landroid/text/style/URLSpan;
    .restart local v13       #type:I
    :cond_3
    if-eqz v11, :cond_6

    .line 920
    invoke-static {v6}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 921
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    const v17, 0x7f0c001b

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 923
    :cond_4
    invoke-static {v6}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 924
    const/4 v14, 0x0

    const/16 v15, 0xd

    const/16 v16, 0x0

    const v17, 0x7f0c001c

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 926
    :cond_5
    const/4 v14, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x0

    const v17, 0x7f0c001f

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 927
    const/4 v14, 0x0

    const/16 v15, 0xb

    const/16 v16, 0x0

    const v17, 0x7f0c0020

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 928
    const/4 v14, 0x0

    const/4 v15, 0x7

    const/16 v16, 0x0

    const v17, 0x7f0c0021

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 929
    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const v17, 0x7f0c0015

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 931
    :cond_6
    const/4 v14, 0x0

    const/16 v15, 0x9

    const/16 v16, 0x0

    const v17, 0x7f0c001a

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 932
    invoke-static {v6}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 933
    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    const v17, 0x7f0c001b

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 935
    :cond_7
    invoke-static {v6}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 936
    const/4 v14, 0x0

    const/16 v15, 0xd

    const/16 v16, 0x0

    const v17, 0x7f0c001c

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 938
    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x7

    const/16 v16, 0x0

    const v17, 0x7f0c0021

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 939
    array-length v14, v12

    if-lez v14, :cond_9

    .line 940
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    array-length v14, v12

    if-ge v8, v14, :cond_9

    .line 941
    const/4 v14, 0x0

    add-int/lit8 v15, v8, 0x64

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0c0022

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v12, v8

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 940
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 945
    .end local v8           #i:I
    :cond_9
    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const v17, 0x7f0c0015

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 946
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const v17, 0x7f0c0014

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 957
    :cond_a
    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    const v17, 0x7f0c0016

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 964
    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    const v17, 0x7f0c0018

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 431
    :goto_0
    return-object v0

    .line 420
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 421
    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v4

    new-instance v5, Lcom/google/android/talk/fragments/BuddyListFragment$3;

    invoke-direct {v5, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$3;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/loaders/RosterListLoader;-><init>(Landroid/content/Context;JLcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 431
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1056
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1058
    const v0, 0x7f1000aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mQuickContactsMenuItem:Landroid/view/MenuItem;

    .line 1059
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQuickContactsMenuItemState()V

    .line 1061
    const v0, 0x7f1000ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    .line 1062
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 702
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/RosterListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 704
    .local v0, root:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 706
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 707
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 708
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V

    .line 710
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 717
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 720
    :cond_1
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "list"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1470
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    if-eqz v2, :cond_1

    .line 1474
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 1475
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startSelfStatusActivityIfOnline()V

    .line 1477
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1480
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 1500
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1483
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_2
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    iget v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>(Ljava/lang/String;J)V

    .line 1486
    .local v1, info:Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->isInvite(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1487
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onMakeInvite(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0

    .line 1489
    :cond_3
    iget v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnGroupChat:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1490
    iget v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnContactId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 1491
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onOpenGroupChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0

    .line 1493
    :cond_4
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onOpenChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    .line 1496
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 476
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "onLoadFinished"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, p2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setData(Landroid/database/Cursor;)V

    .line 479
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setEnabled(Z)V

    .line 481
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/talk/fragments/BuddyListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1072
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1111
    :goto_0
    return v0

    .line 1075
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1111
    goto :goto_0

    .line 1077
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mQuickContactsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1078
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->showQuickContacts(Z)V

    move v0, v3

    .line 1079
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1077
    goto :goto_1

    .line 1082
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onInviteFriend(J)V

    move v0, v3

    .line 1083
    goto :goto_0

    .line 1086
    :pswitch_2
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 1088
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onShowInvites(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    move v0, v3

    .line 1089
    goto :goto_0

    .line 1093
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onDisplaySettings()V

    move v0, v3

    .line 1094
    goto :goto_0

    .line 1098
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logout()V

    move v0, v3

    .line 1099
    goto :goto_0

    .line 1103
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->closeAllChats()V

    move v0, v3

    .line 1104
    goto :goto_0

    .line 1107
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "talk_buddylist"

    invoke-static {v0, v1}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    .line 1108
    goto :goto_0

    .line 1075
    :pswitch_data_0
    .packed-switch 0x7f1000a8
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 732
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onPause()V

    .line 733
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/SelfStatusCursor;->close()V

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 737
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1069
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 725
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onResume()V

    .line 726
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    .line 727
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->cancelSearch()V

    .line 728
    return-void
.end method

.method public onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 4
    .parameter

    .prologue
    .line 1141
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    .line 1143
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/TalkApp;->asyncPruneOldChatsAndMessages(Lcom/google/android/gtalkservice/IImSession;)V

    .line 1150
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V

    .line 1154
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1156
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1158
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gtalkservice/IImSession;->login(Ljava/lang/String;Z)V

    .line 1162
    :cond_2
    const-string v0, "onSessionCreated: request batch presence"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1163
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IImSession;->requestBatchedBuddyPresence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    :try_start_1
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IImSession login: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    throw v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 694
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onStart()V

    .line 695
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->registerForIntentBroadcast()V

    .line 696
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->registerCallStateListener()V

    .line 697
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 780
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onStop()V

    .line 781
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->unregisterForIntentBroadcast()V

    .line 782
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->unregisterCallStateListener()V

    .line 784
    invoke-static {}, Lcom/google/android/talk/RosterListItem;->onStop()V

    .line 785
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 819
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 820
    .local v0, loader:Lcom/google/android/talk/loaders/RosterListLoader;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 823
    :cond_0
    return-void
.end method

.method protected removeRemoteListeners()V
    .locals 3

    .prologue
    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 1192
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 1193
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1194
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    const-string v1, "talk"

    const-string v2, "removeRemoteListeners caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setController(Lcom/google/android/talk/fragments/BuddyListFragment$Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 197
    return-void
.end method

.method public setData(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/google/android/talk/IRosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 203
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onDisplayProgress(Z)V

    .line 208
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnContactId:I

    .line 209
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    .line 210
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnNickname:I

    .line 211
    const-string v0, "account"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    .line 212
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnType:I

    .line 213
    const-string v0, "subscriptionStatus"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscStatus:I

    .line 214
    const-string v0, "subscriptionType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscType:I

    .line 215
    const-string v0, "groupchat"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnGroupChat:I

    .line 216
    const-string v0, "cap"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnCapabilities:I

    .line 219
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->restoreListViewState()V

    .line 220
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 804
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "gtalk-view-mode"

    sget-object v3, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    if-ne p1, v3, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 810
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQuickContactsMenuItemState()V

    .line 811
    invoke-virtual {p0, v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 812
    .local v1, loader:Lcom/google/android/talk/loaders/RosterListLoader;
    if-eqz v1, :cond_0

    .line 813
    invoke-virtual {v1, p1}, Lcom/google/android/talk/loaders/RosterListLoader;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;)V

    .line 814
    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader;->resetProjection()V

    .line 816
    :cond_0
    return-void

    .end local v1           #loader:Lcom/google/android/talk/loaders/RosterListLoader;
    :cond_1
    move v3, v5

    .line 804
    goto :goto_0
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setFocus(Landroid/content/Intent;)V

    .line 1574
    :cond_0
    return-void
.end method

.method public setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1578
    if-eqz p1, :cond_0

    .line 1579
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setIncludeSelfItem(Z)V

    .line 1581
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 1582
    return-void
.end method

.method public setNarrowMode(Z)V
    .locals 1
    .parameter "narrow"

    .prologue
    .line 1690
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mNarrow:Z

    .line 1691
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 1694
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus(Z)V

    .line 1695
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .parameter "queryString"

    .prologue
    .line 1597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQueryString(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1598
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "queryString"
    .parameter "onCancel"

    .prologue
    .line 1624
    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mOnCancel:Ljava/lang/Runnable;

    .line 1625
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    .line 1627
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 1628
    .local v1, loader:Lcom/google/android/talk/loaders/RosterListLoader;
    if-nez v1, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1634
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->cancelSearch()V

    goto :goto_0

    .line 1637
    :cond_2
    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/talk/loaders/RosterListLoader;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/String;)V

    .line 1639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1640
    .local v0, empty:Z
    if-eqz v0, :cond_0

    .line 1641
    if-eqz p2, :cond_0

    .line 1642
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public softUiReset()V
    .locals 2

    .prologue
    .line 1562
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mDontRestoreListViewState:Z

    .line 1566
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->dismissStatusbarNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 1568
    :cond_0
    return-void
.end method

.method public switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 7
    .parameter "accountInfo"

    .prologue
    .line 435
    iget-boolean v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCreated:Z

    if-nez v4, :cond_1

    .line 436
    const-string v4, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 441
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 442
    .local v3, loader:Lcom/google/android/talk/loaders/RosterListLoader;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v4, :cond_4

    .line 443
    :cond_2
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mLogLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 444
    if-nez v3, :cond_3

    const-string v4, "switchAccounts: loader is NULL"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v4, :cond_0

    const-string v4, "switchAccounts: mRosterListAdapter is NULL"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-wide v0, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 450
    .local v0, accountId:J
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v4, v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->setAccountId(J)V

    .line 451
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->removeRemoteListeners()V

    .line 452
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 458
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 459
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v4, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->addRemoteListeners()V

    .line 462
    const-string v4, "switchAccounts: request batch presence"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 463
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->requestBatchedBuddyPresence()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_5
    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/google/android/talk/loaders/RosterListLoader;->switchAccounts(J)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->unregisterCallStateListener()V

    .line 472
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->registerCallStateListener()V

    goto :goto_0

    .line 465
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 466
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchAccounts: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
