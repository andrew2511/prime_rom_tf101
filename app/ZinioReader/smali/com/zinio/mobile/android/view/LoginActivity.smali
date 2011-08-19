.class public final Lcom/zinio/mobile/android/view/LoginActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/zinio/mobile/android/util/e;

.field private f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->b:Landroid/widget/EditText;

    .line 46
    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->c:Landroid/widget/Button;

    .line 47
    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->d:Landroid/widget/Button;

    .line 49
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->a:Z

    .line 53
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->g:Z

    .line 55
    new-instance v0, Lcom/zinio/mobile/android/view/l;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/l;-><init>(Lcom/zinio/mobile/android/view/LoginActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->h:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/zinio/mobile/android/view/k;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/k;-><init>(Lcom/zinio/mobile/android/view/LoginActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->i:Landroid/view/View$OnClickListener;

    .line 93
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LoginActivity;)Lcom/zinio/mobile/android/util/e;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->e:Lcom/zinio/mobile/android/util/e;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->j:Z

    return v0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 182
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x7

    .line 98
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LoginActivity;->requestWindowFeature(I)Z

    .line 100
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 105
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 108
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    new-instance v0, Lcom/zinio/mobile/android/util/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/util/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->e:Lcom/zinio/mobile/android/util/e;

    .line 112
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->b:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->c:Landroid/widget/Button;

    .line 114
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->d:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/zinio/mobile/android/view/n;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/n;-><init>(Lcom/zinio/mobile/android/view/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 132
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LoginActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 186
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/zinio/mobile/android/view/m;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/m;-><init>(Lcom/zinio/mobile/android/view/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 193
    return-object v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 200
    sget-object v0, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    .line 205
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 209
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 138
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->j:Z

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/LoginActivity;->j:Z

    .line 140
    invoke-virtual {p0, v3}, Lcom/zinio/mobile/android/view/LoginActivity;->removeDialog(I)V

    .line 145
    :cond_0
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 148
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->h()Ljava/lang/Thread;

    .line 153
    :cond_1
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 158
    :cond_2
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    :cond_3
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->g:Z

    if-eqz v0, :cond_4

    .line 160
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/LoginActivity;->g:Z

    .line 161
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b()V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LoginActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 171
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method
