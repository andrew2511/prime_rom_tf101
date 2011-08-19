.class public final Lcom/zinio/mobile/android/view/WelcomeActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lcom/zinio/mobile/android/view/dialogs/m;

.field private e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private f:Landroid/os/Handler;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/zinio/mobile/android/view/az;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/az;-><init>(Lcom/zinio/mobile/android/view/WelcomeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->f:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/zinio/mobile/android/view/ay;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ay;-><init>(Lcom/zinio/mobile/android/view/WelcomeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->b()V

    .line 106
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x7

    .line 69
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/WelcomeActivity;->requestWindowFeature(I)Z

    .line 71
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 76
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 79
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->a:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->b:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->c:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 141
    sget-object v0, Lcom/zinio/mobile/android/a;->m:Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 150
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->d:Lcom/zinio/mobile/android/view/dialogs/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->d:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/m;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->d:Lcom/zinio/mobile/android/view/dialogs/m;

    .line 128
    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 121
    return-void
.end method

.method protected final onStart()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStart()V

    .line 99
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/WelcomeActivity;->b()V

    .line 100
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 134
    iget-object v0, p0, Lcom/zinio/mobile/android/view/WelcomeActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method
