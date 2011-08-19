.class public Lcom/layar/UserAddAccountsActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserAddAccountsActivity.java"

# interfaces
.implements Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;
.implements Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private disassociateService:Ljava/lang/String;

.field private helper:Lcom/layar/ActivityHelper;

.field private socialManager:Lcom/layar/data/social/SocialManager;

.field private viewContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/layar/UserAddAccountsActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/layar/UserAddAccountsActivity;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/UserAddAccountsActivity;->disassociateService:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/UserAddAccountsActivity;->helper:Lcom/layar/ActivityHelper;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserAddAccountsActivity;)Lcom/layar/data/social/SocialManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/UserAddAccountsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/layar/UserAddAccountsActivity;->connectSocial(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/UserAddAccountsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/layar/UserAddAccountsActivity;->disassociateService:Ljava/lang/String;

    return-void
.end method

.method private connectSocial(Ljava/lang/String;)V
    .locals 2
    .parameter "social"

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    .line 163
    const-class v1, Lcom/layar/SocialActionActivity;

    .line 162
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ActionType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method private getSocialChangeListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "social"

    .prologue
    .line 111
    new-instance v0, Lcom/layar/UserAddAccountsActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/layar/UserAddAccountsActivity$2;-><init>(Lcom/layar/UserAddAccountsActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private prepareButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 82
    const v9, 0x102000a

    invoke-virtual {p0, v9}, Lcom/layar/UserAddAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/layar/UserAddAccountsActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 83
    iget-object v9, p0, Lcom/layar/UserAddAccountsActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    invoke-virtual {p0}, Lcom/layar/UserAddAccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 87
    .local v6, resources:Landroid/content/res/Resources;
    const v9, 0x7f0a0006

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 88
    .local v2, height:I
    const v9, 0x7f0200d1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 90
    .local v1, arrow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v1, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v4, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    const v9, 0x7f090120

    invoke-virtual {p0, v9}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, addLinkTemplate:Ljava/lang/String;
    const v9, 0x7f090121

    invoke-virtual {p0, v9}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, removeLinkTemplate:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    array-length v9, v9

    if-lt v3, v9, :cond_0

    .line 108
    return-void

    .line 98
    :cond_0
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    aget-object v7, v9, v3

    .line 99
    .local v7, social:Ljava/lang/String;
    sget-object v9, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, socialTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/layar/UserAddAccountsActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 103
    iget-object v10, p0, Lcom/layar/UserAddAccountsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    invoke-virtual {v10, v7}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 104
    const-string v10, "%socialname%"

    .line 103
    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 106
    :goto_1
    invoke-direct {p0, v7}, Lcom/layar/UserAddAccountsActivity;->getSocialChangeListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 101
    invoke-static {p0, v10, v1, v11}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const-string v10, "%socialname%"

    .line 104
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity;->disassociateService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 177
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "%type%"

    iget-object v2, p0, Lcom/layar/UserAddAccountsActivity;->disassociateService:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_1
    invoke-direct {p0}, Lcom/layar/UserAddAccountsActivity;->prepareButtons()V

    goto :goto_0

    .line 181
    :cond_1
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "%type%"

    iget-object v2, p0, Lcom/layar/UserAddAccountsActivity;->disassociateService:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 133
    iget-object v1, p0, Lcom/layar/UserAddAccountsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v1, p1}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/layar/data/social/SocialAssociateResponce;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    const/high16 v1, 0x4088

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/layar/UserAddAccountsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f090034

    invoke-virtual {p0, v3}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/layar/UserAddAccountsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f090124

    invoke-virtual {p0, v3}, Lcom/layar/UserAddAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Lcom/layar/data/social/SocialAssociateResponce;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->setContentView(I)V

    .line 44
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/UserAddAccountsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    .line 45
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->setResult(I)V

    .line 47
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/layar/UserAddAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/layar/UserAddAccountsActivity;->cancelButton:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/layar/UserAddAccountsActivity;->cancelButton:Landroid/widget/Button;

    .line 49
    new-instance v1, Lcom/layar/UserAddAccountsActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/UserAddAccountsActivity$1;-><init>(Lcom/layar/UserAddAccountsActivity;)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 59
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/layar/UserAddAccountsActivity;->prepareButtons()V

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, isAllConnected:Z
    const/4 v1, 0x0

    .line 65
    .local v1, isAnyConnected:Z
    sget-object v3, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    .line 72
    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/layar/UserAddAccountsActivity;->finish()V

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    aget-object v2, v3, v5

    .line 66
    .local v2, social:Ljava/lang/String;
    iget-object v6, p0, Lcom/layar/UserAddAccountsActivity;->socialManager:Lcom/layar/data/social/SocialManager;

    invoke-virtual {v6, v2}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 67
    const/4 v0, 0x0

    .line 65
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 77
    .end local v2           #social:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    .line 78
    iget-object v3, p0, Lcom/layar/UserAddAccountsActivity;->cancelButton:Landroid/widget/Button;

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
