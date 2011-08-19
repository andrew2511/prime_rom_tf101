.class public Lcom/zinio/mobile/android/view/dialogs/DialogActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/dialogs/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->k()V

    .line 63
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/a;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->finish()V

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 37
    sget-object v0, Lcom/zinio/mobile/android/a;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "dialog_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "dialog_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/n;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/n;-><init>(Lcom/zinio/mobile/android/view/dialogs/DialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/dialogs/DialogActivity;->b()V

    .line 83
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
