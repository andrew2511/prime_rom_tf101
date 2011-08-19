.class public Lcom/google/android/talk/ChatScreen;
.super Landroid/app/Activity;
.source "ChatScreen.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;


# static fields
.field public static sLogLevel:I


# instance fields
.field mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field private mChatScreenInner:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/google/android/talk/ChatScreen;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/talk/ChatScreen$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/ChatScreen$1;-><init>(Lcom/google/android/talk/ChatScreen;)V

    iput-object v0, p0, Lcom/google/android/talk/ChatScreen;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 153
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 110
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreen] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public static startChatScreenActivity(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 180
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, username:Ljava/lang/String;
    invoke-static {p1, p2, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v3, "accountId"

    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    const/high16 v3, 0x1400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public static startVoiceChat(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 192
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, username:Ljava/lang/String;
    invoke-static {p1, p2, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "vc"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v3, "accountId"

    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    const/high16 v3, 0x1400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method


# virtual methods
.method public getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/talk/ChatScreen;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v2

    sput v2, Lcom/google/android/talk/ChatScreen;->sLogLevel:I

    .line 118
    invoke-virtual {p0}, Lcom/google/android/talk/ChatScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 120
    .local v1, window:Landroid/view/Window;
    const v2, 0x7f04000f

    invoke-virtual {p0, v2}, Lcom/google/android/talk/ChatScreen;->setContentView(I)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    new-instance v2, Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/ChatScreen;->mChatScreenInner:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/talk/ChatScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 128
    .local v0, t:Landroid/app/FragmentTransaction;
    const v2, 0x7f10002c

    iget-object v3, p0, Lcom/google/android/talk/ChatScreen;->mChatScreenInner:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 129
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 130
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/talk/ChatScreen;->mChatScreenInner:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/talk/ChatScreen;->mChatScreenInner:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 135
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v0

    sput v0, Lcom/google/android/talk/ChatScreen;->sLogLevel:I

    .line 136
    return-void
.end method
