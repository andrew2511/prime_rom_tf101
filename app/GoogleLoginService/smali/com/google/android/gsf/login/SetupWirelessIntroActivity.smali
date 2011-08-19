.class public Lcom/google/android/gsf/login/SetupWirelessIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SetupWirelessIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->finish()V

    .line 64
    return-void

    .line 49
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->setResult(I)V

    goto :goto_0

    .line 53
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->setResult(I)V

    goto :goto_0

    .line 57
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->setResult(I)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SetupWirelessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0006 -> :sswitch_0
        0x7f0c000d -> :sswitch_1
        0x7f0c0069 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->setContentView(I)V

    .line 34
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, skipButton:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->allowSkip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;->overrideAllowBackHardkey()V

    .line 44
    return-void
.end method
