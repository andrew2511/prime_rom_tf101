.class public Lcom/layar/UserCreateConfirmationActivity;
.super Landroid/app/Activity;
.source "UserCreateConfirmationActivity.java"


# static fields
.field private static SUBACTIVITY_ADD_ACCOUNTS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x2

    sput v0, Lcom/layar/UserCreateConfirmationActivity;->SUBACTIVITY_ADD_ACCOUNTS:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/layar/UserCreateConfirmationActivity;->SUBACTIVITY_ADD_ACCOUNTS:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 36
    sget v0, Lcom/layar/UserCreateConfirmationActivity;->SUBACTIVITY_ADD_ACCOUNTS:I

    if-ne p1, v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/layar/UserCreateConfirmationActivity;->finish()V

    .line 39
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateConfirmationActivity;->setResult(I)V

    .line 18
    const v1, 0x7f03005a

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateConfirmationActivity;->setContentView(I)V

    .line 20
    const v1, 0x7f0700d8

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/layar/UserCreateConfirmationActivity$1;

    invoke-direct {v2, p0}, Lcom/layar/UserCreateConfirmationActivity$1;-><init>(Lcom/layar/UserCreateConfirmationActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    .line 30
    .local v0, userManager:Lcom/layar/data/user/UserManager;
    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->getPassword()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/data/user/UserManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;Z)V

    .line 31
    return-void
.end method
