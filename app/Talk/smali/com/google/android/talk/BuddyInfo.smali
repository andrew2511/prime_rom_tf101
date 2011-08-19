.class public Lcom/google/android/talk/BuddyInfo;
.super Landroid/app/Activity;
.source "BuddyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/BuddyInfo$QueryHandler;,
        Lcom/google/android/talk/BuddyInfo$RosterListener;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mApp:Lcom/google/android/talk/TalkApp;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field protected final mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mNickname:Ljava/lang/String;

.field private mNicknameField:Landroid/widget/EditText;

.field private mPresenceView:Landroid/widget/ImageView;

.field mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

.field private mQuerySelectionArg:[Ljava/lang/String;

.field private mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

.field protected mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mStatusView:Landroid/widget/TextView;

.field private mType:I

.field private mUserId:J

.field private mUsername:Ljava/lang/String;

.field private mUsernameField:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "avatars_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/BuddyInfo;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mQuerySelectionArg:[Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/google/android/talk/BuddyInfo$RosterListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyInfo$RosterListener;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->startQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/BuddyInfo;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyInfo;->update(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->saveNickname()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/BuddyInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->serviceStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/BuddyInfo;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 197
    const v3, 0x7f100009

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/QuickContactBadge;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 198
    const v3, 0x7f10001b

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mPresenceView:Landroid/widget/ImageView;

    .line 199
    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mUsernameField:Landroid/widget/TextView;

    .line 200
    const v3, 0x7f100017

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    .line 201
    const v3, 0x7f10001a

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mStatusView:Landroid/widget/TextView;

    .line 203
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/BuddyInfo$1;

    invoke-direct {v4, p0}, Lcom/google/android/talk/BuddyInfo$1;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 215
    const v3, 0x7f10001d

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, button:Landroid/view/View;
    new-instance v3, Lcom/google/android/talk/BuddyInfo$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/BuddyInfo$2;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v3, 0x7f10001e

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 224
    new-instance v3, Lcom/google/android/talk/BuddyInfo$3;

    invoke-direct {v3, p0}, Lcom/google/android/talk/BuddyInfo$3;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v3, 0x7f100019

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 231
    new-instance v3, Lcom/google/android/talk/BuddyInfo$4;

    invoke-direct {v3, p0}, Lcom/google/android/talk/BuddyInfo$4;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v3, 0x7f10001c

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 238
    .local v2, spinner:Landroid/widget/Spinner;
    const v3, 0x7f08000a

    const v4, 0x1090008

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 240
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 242
    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/BuddyInfo$5;

    invoke-direct {v2, p0}, Lcom/google/android/talk/BuddyInfo$5;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method private saveNickname()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 404
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, newNickname:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    const v3, 0x7f0c0031

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 415
    :cond_1
    const/4 v2, 0x0

    .line 417
    .local v2, saved:Z
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v3, :cond_2

    .line 418
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v4, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/google/android/gtalkservice/IImSession;->editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const/4 v2, 0x1

    .line 427
    :goto_1
    if-nez v2, :cond_3

    .line 428
    const v3, 0x7f0c0030

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 421
    :cond_2
    :try_start_1
    const-string v3, "talk"

    const-string v4, "[BuddyInfo] saveNickname: empty IM session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 423
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 424
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BuddyInfo] saveNickname caught"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    iput-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    goto :goto_0
.end method

.method private serviceStateChanged()V
    .locals 5

    .prologue
    .line 257
    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    .line 259
    .local v1, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v1, :cond_1

    .line 260
    iput-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 261
    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/TalkApp;->getImSessionFromActivityIntent(Landroid/content/Intent;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 262
    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v2, :cond_0

    .line 263
    const-string v2, "talk"

    const-string v3, "Empty IM session. Finish!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    .line 277
    :goto_0
    return-void

    .line 269
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 271
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BuddyInfo] serviceStateChanged caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BuddyInfo$QueryHandler;->cancelOperation(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/talk/BuddyInfo;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "contacts._id=?"

    iget-object v6, p0, Lcom/google/android/talk/BuddyInfo;->mQuerySelectionArg:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/BuddyInfo$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    .line 254
    return-void
.end method

.method private update(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    .line 293
    :try_start_0
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    .line 295
    .local v3, app:Lcom/google/android/talk/TalkApp;
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    .line 296
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mUsernameField:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 299
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    .line 300
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/google/android/talk/BuddyInfo;->mType:I

    .line 304
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, customStatus:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v10, 0x7f10001c

    invoke-virtual {p0, v10}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 311
    .local v9, spinner:Landroid/widget/Spinner;
    const/4 v0, 0x0

    .line 312
    .local v0, ALWAYS:I
    const/4 v2, 0x1

    .line 313
    .local v2, NEVER:I
    const/4 v1, 0x2

    .line 315
    .local v1, AUTOMATIC:I
    const/4 v8, 0x2

    .line 316
    .local v8, selection:I
    iget v10, p0, Lcom/google/android/talk/BuddyInfo;->mType:I

    packed-switch v10, :pswitch_data_0

    .line 329
    :goto_0
    :pswitch_0
    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 331
    new-instance v10, Lcom/google/android/talk/BuddyInfo$6;

    invoke-direct {v10, p0}, Lcom/google/android/talk/BuddyInfo$6;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 355
    const/4 v10, 0x5

    invoke-static {p1, v10}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 359
    .local v5, b:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 360
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v4, avatar:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v11, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 368
    iget-object v10, p0, Lcom/google/android/talk/BuddyInfo;->mPresenceView:Landroid/widget/ImageView;

    const/4 v11, 0x3

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x4

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    .end local v0           #ALWAYS:I
    .end local v1           #AUTOMATIC:I
    .end local v2           #NEVER:I
    .end local v3           #app:Lcom/google/android/talk/TalkApp;
    .end local v4           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v6           #customStatus:Ljava/lang/String;
    .end local v8           #selection:I
    .end local v9           #spinner:Landroid/widget/Spinner;
    :goto_2
    return-void

    .line 318
    .restart local v0       #ALWAYS:I
    .restart local v1       #AUTOMATIC:I
    .restart local v2       #NEVER:I
    .restart local v3       #app:Lcom/google/android/talk/TalkApp;
    .restart local v6       #customStatus:Ljava/lang/String;
    .restart local v8       #selection:I
    .restart local v9       #spinner:Landroid/widget/Spinner;
    :pswitch_1
    const/4 v8, 0x2

    .line 319
    goto :goto_0

    .line 321
    :pswitch_2
    const/4 v8, 0x0

    .line 322
    goto :goto_0

    .line 324
    :pswitch_3
    const/4 v8, 0x1

    .line 325
    goto :goto_0

    .line 362
    .restart local v5       #b:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .restart local v4       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 371
    .end local v0           #ALWAYS:I
    .end local v1           #AUTOMATIC:I
    .end local v2           #NEVER:I
    .end local v3           #app:Lcom/google/android/talk/TalkApp;
    .end local v4           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v6           #customStatus:Ljava/lang/String;
    .end local v8           #selection:I
    .end local v9           #spinner:Landroid/widget/Spinner;
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 372
    .local v7, ex:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v10, "talk"

    const-string v11, "[BuddyInfo] update: got exception calling update()"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_2

    .line 377
    .end local v7           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 378
    .local v7, ex:Landroid/database/StaleDataException;
    const-string v10, "talk"

    const-string v11, "[BuddyInfo] update: got exception calling update()"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_2

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-wide/16 v5, 0x0

    .line 135
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const v1, 0x103000c

    invoke-virtual {p0, v1}, Lcom/google/android/talk/BuddyInfo;->setTheme(I)V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Lcom/google/android/talk/BuddyInfo;->setContentView(I)V

    .line 143
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->initView()V

    .line 145
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    .line 146
    new-instance v1, Lcom/google/android/talk/BuddyInfo$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/google/android/talk/BuddyInfo$QueryHandler;-><init>(Lcom/google/android/talk/BuddyInfo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

    .line 148
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "userId"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/talk/BuddyInfo;->mUserId:J

    .line 150
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mQuerySelectionArg:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/talk/BuddyInfo;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 152
    iget-wide v1, p0, Lcom/google/android/talk/BuddyInfo;->mUserId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 153
    const-string v1, "talk"

    const-string v2, "[BuddyInfo.onCreate: invalid user id = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->registerForServiceStateChanged()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 165
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 166
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eq v1, v0, :cond_1

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->handleDisconnectedService()V

    .line 168
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->registerForServiceStateChanged()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->serviceStateChanged()V

    goto :goto_0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 398
    const-string v0, "o-nickname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->startQuery()V

    .line 178
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 390
    const-string v0, "nickname"

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "o-nickname"

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->unregisterForServiceStateChanged()V

    .line 194
    return-void

    .line 188
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyInfo] onStop: caught exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
