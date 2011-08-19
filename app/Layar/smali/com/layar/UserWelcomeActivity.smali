.class public Lcom/layar/UserWelcomeActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserWelcomeActivity.java"


# static fields
.field public static final EXTRAS_HEADER_TEXT_ID:Ljava/lang/String; = "headerTextId"

.field public static final SOCIAL_PATTERN:Ljava/lang/String; = "%socialname%"

.field private static final SUBACTIVITY_LOGIN:I = 0x1

.field private static final SUBACTIVITY_USER_CREATE:I = 0x2


# instance fields
.field private viewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    return-void
.end method

.method private createAccount()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/layar/UserWelcomeActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/UserWelcomeActivity$3;-><init>(Lcom/layar/UserWelcomeActivity;)V

    return-object v0
.end method

.method private login()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/layar/UserWelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/UserWelcomeActivity$2;-><init>(Lcom/layar/UserWelcomeActivity;)V

    return-object v0
.end method

.method private loginSocial(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "social"

    .prologue
    .line 101
    new-instance v0, Lcom/layar/UserWelcomeActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/layar/UserWelcomeActivity$4;-><init>(Lcom/layar/UserWelcomeActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private prepareButtons()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 53
    const v8, 0x102000a

    invoke-virtual {p0, v8}, Lcom/layar/UserWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/layar/UserWelcomeActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p0}, Lcom/layar/UserWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 56
    .local v4, resources:Landroid/content/res/Resources;
    const v8, 0x7f0a0006

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 57
    .local v1, height:I
    const v8, 0x7f0200d1

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    .local v0, arrow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v0, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v3, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/layar/UserWelcomeActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 61
    const v9, 0x7f09010c

    invoke-direct {p0}, Lcom/layar/UserWelcomeActivity;->login()Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-static {p0, v9, v0, v10}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v9

    .line 60
    invoke-virtual {v8, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const v8, 0x7f090135

    invoke-virtual {p0, v8}, Lcom/layar/UserWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, socialTemplate:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v8, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v2, v8, :cond_0

    .line 75
    iget-object v8, p0, Lcom/layar/UserWelcomeActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 76
    const v9, 0x7f090133

    invoke-direct {p0}, Lcom/layar/UserWelcomeActivity;->createAccount()Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-static {p0, v9, v0, v10}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v9

    .line 75
    invoke-virtual {v8, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void

    .line 65
    :cond_0
    sget-object v8, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    aget-object v8, v8, v2

    const-string v9, "email"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 66
    sget-object v8, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    aget-object v5, v8, v2

    .line 67
    .local v5, social:Ljava/lang/String;
    sget-object v8, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    aget v8, v8, v2

    invoke-virtual {p0, v8}, Lcom/layar/UserWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, socialTitle:Ljava/lang/String;
    iget-object v8, p0, Lcom/layar/UserWelcomeActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 70
    const-string v9, "%socialname%"

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-direct {p0, v5}, Lcom/layar/UserWelcomeActivity;->loginSocial(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v10

    .line 69
    invoke-static {p0, v9, v0, v10}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v9

    .line 68
    invoke-virtual {v8, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .end local v5           #social:Ljava/lang/String;
    .end local v7           #socialTitle:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/layar/DestroyInformerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 116
    if-ne p2, v2, :cond_1

    .line 117
    invoke-virtual {p0, v2}, Lcom/layar/UserWelcomeActivity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/layar/UserWelcomeActivity;->finish()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    .line 120
    const-string v1, "Email"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, email:Ljava/lang/String;
    new-instance v1, Lcom/layar/UserWelcomeActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/layar/UserWelcomeActivity$5;-><init>(Lcom/layar/UserWelcomeActivity;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/layar/util/UiUtils;->showTwitterLoginByEmailDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 131
    .end local v0           #email:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 132
    if-ne p2, v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/layar/UserWelcomeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/layar/UserWelcomeActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/layar/UserWelcomeActivity;->prepareButtons()V

    .line 43
    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Lcom/layar/UserWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/layar/UserWelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/UserWelcomeActivity$1;-><init>(Lcom/layar/UserWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
