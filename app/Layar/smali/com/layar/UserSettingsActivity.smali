.class public Lcom/layar/UserSettingsActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserSettingsActivity.java"

# interfaces
.implements Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;
.implements Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private disassociateService:Ljava/lang/String;

.field private helper:Lcom/layar/ActivityHelper;

.field private socialManager:Lcom/layar/data/social/SocialManager;

.field private viewContainer:Landroid/view/ViewGroup;

.field private viewLogout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/layar/UserSettingsActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/UserSettingsActivity;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 40
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/UserSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/UserSettingsActivity;->disassociateService:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserSettingsActivity;)Lcom/layar/ActivityHelper;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/layar/UserSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/UserSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/layar/UserSettingsActivity;->showDialogVerificationLinkSent()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/UserSettingsActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/UserSettingsActivity;->viewLogout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/UserSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/layar/UserSettingsActivity;->startUserSettingsLoggedOut()V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/UserSettingsActivity;)Lcom/layar/data/social/SocialManager;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/layar/UserSettingsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/UserSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/layar/UserSettingsActivity;->connectSocial(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/layar/UserSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/layar/UserSettingsActivity;->disassociateService:Ljava/lang/String;

    return-void
.end method

.method private connectSocial(Ljava/lang/String;)V
    .locals 2
    .parameter "social"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/SocialActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ActionType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/layar/UserSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method private getSocialChangeListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "social"

    .prologue
    .line 202
    new-instance v0, Lcom/layar/UserSettingsActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/layar/UserSettingsActivity$4;-><init>(Lcom/layar/UserSettingsActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private logoutListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/layar/UserSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/UserSettingsActivity$2;-><init>(Lcom/layar/UserSettingsActivity;)V

    return-object v0
.end method

.method private prepareButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 95
    const v9, 0x102000a

    invoke-virtual {p0, v9}, Lcom/layar/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/layar/UserSettingsActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 96
    iget-object v9, p0, Lcom/layar/UserSettingsActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 98
    invoke-virtual {p0}, Lcom/layar/UserSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 99
    .local v6, resources:Landroid/content/res/Resources;
    const v9, 0x7f0a0006

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 100
    .local v2, height:I
    const v9, 0x7f0200d1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    .local v1, arrow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v1, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v4, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/layar/UserSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v9}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/layar/data/user/UserManager;->isAccountVerified()Z

    move-result v9

    if-nez v9, :cond_0

    .line 104
    iget-object v9, p0, Lcom/layar/UserSettingsActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 105
    const v10, 0x7f090164

    invoke-direct {p0}, Lcom/layar/UserSettingsActivity;->sendVerificationLink()Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-static {p0, v10, v1, v11}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v10

    .line 104
    invoke-virtual {v9, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_0
    const v9, 0x7f090120

    invoke-virtual {p0, v9}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, addLinkTemplate:Ljava/lang/String;
    const v9, 0x7f090121

    invoke-virtual {p0, v9}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, removeLinkTemplate:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    array-length v9, v9

    if-lt v3, v9, :cond_1

    .line 124
    return-void

    .line 112
    :cond_1
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    aget-object v9, v9, v3

    const-string v10, "email"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 113
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    aget-object v7, v9, v3

    .line 114
    .local v7, social:Ljava/lang/String;
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, socialTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/layar/UserSettingsActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 117
    iget-object v10, p0, Lcom/layar/UserSettingsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    invoke-virtual {v10, v7}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 118
    const-string v10, "%socialname%"

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 120
    :goto_1
    invoke-direct {p0, v7}, Lcom/layar/UserSettingsActivity;->getSocialChangeListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 116
    invoke-static {p0, v10, v1, v11}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v10

    .line 115
    invoke-virtual {v9, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .end local v7           #social:Ljava/lang/String;
    .end local v8           #socialTitle:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .restart local v7       #social:Ljava/lang/String;
    .restart local v8       #socialTitle:Ljava/lang/String;
    :cond_3
    const-string v10, "%socialname%"

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method private sendVerificationLink()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/layar/UserSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/UserSettingsActivity$1;-><init>(Lcom/layar/UserSettingsActivity;)V

    return-object v0
.end method

.method private showDialogVerificationLinkSent()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    const/4 v2, 0x1

    .line 190
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    const v2, 0x7f090016

    .line 192
    new-instance v3, Lcom/layar/UserSettingsActivity$3;

    invoke-direct {v3, p0}, Lcom/layar/UserSettingsActivity$3;-><init>(Lcom/layar/UserSettingsActivity;)V

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 199
    return-void
.end method

.method private startUserSettingsLoggedOut()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    .line 183
    const-class v1, Lcom/layar/UserWelcomeActivity;

    .line 182
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, userIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/layar/UserSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 255
    iget-object v0, p0, Lcom/layar/UserSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserSettingsActivity;->disassociateService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 261
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "%type%"

    iget-object v2, p0, Lcom/layar/UserSettingsActivity;->disassociateService:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    :goto_1
    invoke-direct {p0}, Lcom/layar/UserSettingsActivity;->prepareButtons()V

    goto :goto_0

    .line 266
    :cond_1
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "%type%"

    iget-object v2, p0, Lcom/layar/UserSettingsActivity;->disassociateService:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 229
    iget-object v1, p0, Lcom/layar/UserSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v1, p1}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/layar/data/social/SocialAssociateResponce;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    const/high16 v1, 0x4088

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/layar/UserSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Lcom/layar/UserSettingsActivity;->finish()V

    goto :goto_0

    .line 242
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f090034

    invoke-virtual {p0, v2}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f090124

    invoke-virtual {p0, v2}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030061

    invoke-virtual {p0, v1}, Lcom/layar/UserSettingsActivity;->setContentView(I)V

    .line 52
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/UserSettingsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    .line 55
    const v1, 0x7f09016e

    invoke-virtual {p0, v1}, Lcom/layar/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, loggedInAs:Ljava/lang/String;
    const v1, 0x7f0700e2

    invoke-virtual {p0, v1}, Lcom/layar/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    const-string v2, "%name%"

    iget-object v3, p0, Lcom/layar/UserSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v3}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/data/user/UserManager;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v1, 0x7f0700e1

    invoke-virtual {p0, v1}, Lcom/layar/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/UserSettingsActivity;->viewLogout:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/layar/UserSettingsActivity;->viewLogout:Landroid/view/View;

    invoke-direct {p0}, Lcom/layar/UserSettingsActivity;->logoutListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/layar/UserSettingsActivity;->prepareButtons()V

    .line 92
    return-void
.end method
