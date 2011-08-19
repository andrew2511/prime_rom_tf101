.class public Lcom/amazon/kcp/info/InfoActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/InfoActivity$3;,
        Lcom/amazon/kcp/info/InfoActivity$InfoItem;
    }
.end annotation


# static fields
.field private static final ABOUT_KINDLE_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=LearnKindle0"

.field private static final CONDITIONS_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=Conditions0"

.field private static final FUTURE_IMPROVEMENTS_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=FutureImprovements0"

.field private static final LEGAL_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=Legal0"

.field private static final WHATS_NEW_DIALOG:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/info/InfoActivity;Lcom/amazon/kcp/info/InfoActivity$InfoItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/kcp/info/InfoActivity;->onInfoItemClick(Lcom/amazon/kcp/info/InfoActivity$InfoItem;)V

    return-void
.end method

.method private onInfoItemClick(Lcom/amazon/kcp/info/InfoActivity$InfoItem;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/amazon/kcp/info/InfoActivity$3;->$SwitchMap$com$amazon$kcp$info$InfoActivity$InfoItem:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/info/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/InfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/InfoActivity;->showDialog(I)V

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v0, "gp/kindle/android/redirect.html?redirect=FutureImprovements0"

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/info/InfoActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "gp/kindle/android/redirect.html?redirect=LearnKindle0"

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "linkCode"

    const-string v2, "as2"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kcp/info/InfoActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_4
    const-string v0, "gp/kindle/android/redirect.html?redirect=Conditions0"

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/amazon/kcp/info/InfoActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_5
    const-string v0, "gp/kindle/android/redirect.html?redirect=Legal0"

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/amazon/kcp/info/InfoActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/InfoActivity;->setContentView(I)V

    .line 66
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 67
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/amazon/kcp/info/InfoActivity$1;

    const/4 v2, 0x0

    invoke-static {}, Lcom/amazon/kcp/info/InfoActivity$InfoItem;->values()[Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    move-result-object v3

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/amazon/kcp/info/InfoActivity$1;-><init>(Lcom/amazon/kcp/info/InfoActivity;Landroid/content/Context;I[Lcom/amazon/kcp/info/InfoActivity$InfoItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v1, Lcom/amazon/kcp/info/InfoActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/info/InfoActivity$2;-><init>(Lcom/amazon/kcp/info/InfoActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    invoke-static {p0}, Lcom/amazon/kcp/info/WhatsNewDialogBuilder;->buildDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
