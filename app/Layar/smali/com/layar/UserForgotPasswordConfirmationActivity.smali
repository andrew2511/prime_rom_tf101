.class public Lcom/layar/UserForgotPasswordConfirmationActivity;
.super Landroid/app/Activity;
.source "UserForgotPasswordConfirmationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordConfirmationActivity;->setContentView(I)V

    .line 14
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/layar/UserForgotPasswordConfirmationActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/UserForgotPasswordConfirmationActivity$1;-><init>(Lcom/layar/UserForgotPasswordConfirmationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
