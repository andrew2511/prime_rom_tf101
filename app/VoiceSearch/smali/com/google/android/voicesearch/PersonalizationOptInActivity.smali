.class public Lcom/google/android/voicesearch/PersonalizationOptInActivity;
.super Landroid/app/Activity;
.source "PersonalizationOptInActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/PersonalizationOptInActivity$1;,
        Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;,
        Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;,
        Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;,
        Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;
    }
.end annotation


# static fields
.field static final PERSONALIZATION_DISABLE_DIALOG:I = 0x1

.field static final PERSONALIZATION_ENABLE_DIALOG:I = 0x0

.field static final PERSONALIZATION_PROMPT_DIALOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PersonalizationOptInActivity"


# instance fields
.field private mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 215
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)Lcom/google/android/voicesearch/PersonalizationPrefManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/PersonalizationOptInActivity;)Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method

.method private createDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v2, 0x7f090716

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    const v0, 0x7f090711

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 136
    const-string v0, "PersonalizationOptInActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 172
    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getMobilePrivacyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/util/TextUtil;->replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const v3, 0x7f090719

    new-instance v4, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;

    invoke-direct {v4, p0, p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Landroid/app/Activity;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const v3, 0x7f09071a

    new-instance v4, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;

    invoke-direct {v4, p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v3, v5

    move-object v4, v2

    move v2, v5

    .line 140
    :goto_1
    const v5, 0x7f03000d

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 142
    if-nez v3, :cond_0

    .line 143
    const v0, 0x7f0d0033

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    const v0, 0x7f0d0034

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->replace(Landroid/text/Spanned;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)Landroid/text/Spanned;

    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 153
    const v0, 0x7f0d0035

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    if-eqz v2, :cond_1

    .line 155
    const v2, 0x7f090717

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationMoreInfoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/util/TextUtil;->createLinkTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->replace(Landroid/text/Spanned;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)Landroid/text/Spanned;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 166
    :goto_2
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;

    invoke-direct {v1, p0, v6}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$CancelListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Lcom/google/android/voicesearch/PersonalizationOptInActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 170
    new-instance v1, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;

    invoke-direct {v1, p0, v6}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DismissListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Lcom/google/android/voicesearch/PersonalizationOptInActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getMobilePrivacyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/util/TextUtil;->replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    const v3, 0x7f09074d

    new-instance v4, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;

    invoke-direct {v4, p0, p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Landroid/app/Activity;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v3, 0x7f09074e

    new-instance v4, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;

    invoke-direct {v4, p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v3, v7

    move-object v4, v2

    move v2, v5

    .line 123
    goto/16 :goto_1

    .line 126
    :pswitch_2
    const v2, 0x7f090718

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationDashboardUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/util/TextUtil;->replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const v3, 0x7f09074d

    new-instance v4, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;

    invoke-direct {v4, p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$DisableButtonListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    const v3, 0x7f09074e

    new-instance v4, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;

    invoke-direct {v4, p0, p0, p1}, Lcom/google/android/voicesearch/PersonalizationOptInActivity$EnableButtonListener;-><init>(Lcom/google/android/voicesearch/PersonalizationOptInActivity;Landroid/app/Activity;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v3, v7

    move-object v4, v2

    move v2, v7

    .line 134
    goto/16 :goto_1

    .line 163
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationMoreInfoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationMoreLink()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationDashboardUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationDashboardLink()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 65
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 66
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 67
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    const/4 v0, 0x2

    .line 74
    invoke-virtual {p0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PERSONALIZATION_OPT_IN_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PERSONALIZATION_OPT_IN_ENABLE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_1

    move v0, v3

    .line 80
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/PersonalizationOptInActivity;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
