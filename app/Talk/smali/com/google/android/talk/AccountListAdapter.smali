.class public Lcom/google/android/talk/AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mCachedAvatars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mPresenceClickListener:Landroid/view/View$OnClickListener;

.field private mSB:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resolver"
    .parameter "talkApp"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/talk/TalkApp;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const v0, 0x7f040001

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    .line 200
    new-instance v0, Lcom/google/android/talk/AccountListAdapter$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AccountListAdapter$3;-><init>(Lcom/google/android/talk/AccountListAdapter;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceClickListener:Landroid/view/View$OnClickListener;

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/google/android/talk/AccountListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iput-object p4, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    .line 75
    iput-object p5, p0, Lcom/google/android/talk/AccountListAdapter;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AccountListAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AccountListAdapter;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AccountListAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    return-object v0
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "position"
    .parameter "messageCmd"

    .prologue
    .line 208
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 209
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 210
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 211
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 212
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 81
    if-nez p2, :cond_3

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v6, 0x7f040001

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p3

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 87
    .local v26, view:Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 89
    .local v9, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    const v5, 0x7f10000a

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 91
    .local v23, text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    iget-object v6, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    const v5, 0x7f100009

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 96
    .local v13, avatarView:Landroid/widget/ImageView;
    const v5, 0x7f10000b

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 98
    .local v20, presenceView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    .line 100
    .local v21, start:I
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    move-object v5, v0

    iget-object v6, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    .line 104
    .local v12, avatar:Landroid/graphics/drawable/Drawable;
    if-nez v12, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 106
    iget-wide v5, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    move-object v5, v0

    iget-object v6, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v5, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;-><init>(Lcom/google/android/talk/AccountListAdapter;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$AccountInfo;Ljava/lang/Runnable;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/talk/TalkApp$AccountInfo;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :cond_0
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const/16 v22, 0x0

    .line 120
    .local v22, status:Ljava/lang/String;
    const/16 v19, 0x0

    .line 121
    .local v19, presenceStatus:I
    const/4 v14, 0x0

    .line 122
    .local v14, capabilities:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-wide v5, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v5

    iget-wide v6, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v5, v6, v7}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v16

    .line 126
    .local v16, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v16, :cond_1

    .line 127
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v18

    .line 128
    .local v18, presence:Lcom/google/android/gtalkservice/Presence;
    invoke-static/range {v18 .. v18}, Lcom/google/android/talk/util/PresenceUtils;->translatePresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v19

    .line 129
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v14

    .line 130
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 138
    .end local v16           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v18           #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_1
    :goto_1
    const v5, 0x7f10000d

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 139
    .local v10, spinner:Landroid/view/View;
    iget-boolean v5, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-eqz v5, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    move-object v7, v0

    const v8, 0x7f0c0011

    invoke-virtual {v7, v8}, Lcom/google/android/talk/TalkApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v17

    .line 152
    .local v17, len:I
    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f4ccccd

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v7, 0x21

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v21

    move/from16 v3, v17

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 155
    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x7f7f80

    move-object/from16 v0, v24

    move v1, v5

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 156
    .local v24, textColor:Landroid/text/style/ForegroundColorSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    const/16 v6, 0x21

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v17

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 160
    .end local v24           #textColor:Landroid/text/style/ForegroundColorSpan;
    :cond_2
    const v5, 0x7f100008

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 161
    .local v25, unreadCountView:Landroid/widget/TextView;
    iget v5, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    if-lez v5, :cond_6

    .line 163
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/16 v7, 0xf

    const/4 v8, 0x5

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget v5, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_3
    const v5, 0x7f10000c

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 172
    .local v8, signInButton:Landroid/widget/Button;
    iget-boolean v5, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    :goto_4
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    if-eqz v19, :cond_8

    const/4 v5, 0x1

    move v7, v5

    .line 174
    .local v7, isOnline:Z
    :goto_5
    if-eqz v7, :cond_9

    const v5, 0x7f0c000d

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setText(I)V

    .line 176
    new-instance v5, Lcom/google/android/talk/AccountListAdapter$1;

    move-object/from16 v6, p0

    move/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/talk/AccountListAdapter$1;-><init>(Lcom/google/android/talk/AccountListAdapter;ZLandroid/widget/Button;Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/view/View;I)V

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v5, Lcom/google/android/talk/AccountListAdapter$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AccountListAdapter$2;-><init>(Lcom/google/android/talk/AccountListAdapter;I)V

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v26

    .line 84
    .end local v7           #isOnline:Z
    .end local v8           #signInButton:Landroid/widget/Button;
    .end local v9           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v10           #spinner:Landroid/view/View;
    .end local v12           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v13           #avatarView:Landroid/widget/ImageView;
    .end local v14           #capabilities:I
    .end local v17           #len:I
    .end local v19           #presenceStatus:I
    .end local v20           #presenceView:Landroid/widget/ImageView;
    .end local v21           #start:I
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #text:Landroid/widget/TextView;
    .end local v25           #unreadCountView:Landroid/widget/TextView;
    .end local v26           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v26, p2

    .restart local v26       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 132
    .restart local v9       #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v12       #avatar:Landroid/graphics/drawable/Drawable;
    .restart local v13       #avatarView:Landroid/widget/ImageView;
    .restart local v14       #capabilities:I
    .restart local v19       #presenceStatus:I
    .restart local v20       #presenceView:Landroid/widget/ImageView;
    .restart local v21       #start:I
    .restart local v22       #status:Ljava/lang/String;
    .restart local v23       #text:Landroid/widget/TextView;
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 133
    .local v15, e:Landroid/os/RemoteException;
    const-string v5, "talk"

    const-string v6, "RemoteException failure"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 143
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v10       #spinner:Landroid/view/View;
    :cond_4
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mSB:Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    :cond_5
    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AccountListAdapter;->mPresenceClickListener:Landroid/view/View$OnClickListener;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 167
    .restart local v17       #len:I
    .restart local v25       #unreadCountView:Landroid/widget/TextView;
    :cond_6
    const/4 v5, 0x4

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 172
    .restart local v8       #signInButton:Landroid/widget/Button;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 173
    :cond_8
    const/4 v5, 0x0

    move v7, v5

    goto/16 :goto_5

    .line 174
    .restart local v7       #isOnline:Z
    :cond_9
    const v5, 0x7f0c000c

    goto/16 :goto_6
.end method
