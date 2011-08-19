.class public Lcom/android/settings/vpn/AuthenticationActor;
.super Ljava/lang/Object;
.source "AuthenticationActor.java"

# interfaces
.implements Lcom/android/settings/vpn/VpnProfileActor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProfile:Landroid/net/vpn/VpnProfile;

.field private mVpnManager:Landroid/net/vpn/VpnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/vpn/AuthenticationActor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/AuthenticationActor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "context"
    .parameter "p"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 48
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p1}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 49
    return-void
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/vpn/VpnManager;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    return-void
.end method

.method private setSavedUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getSavedUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setSavedUsername(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-static {v0}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/app/Dialog;)V
    .locals 6
    .parameter "d"

    .prologue
    .line 77
    const v4, 0x7f0f00fc

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, usernameView:Landroid/widget/TextView;
    const v4, 0x7f0f00fd

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, passwordView:Landroid/widget/TextView;
    const v4, 0x7f0f00ff

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 82
    .local v2, saveUsername:Landroid/widget/CheckBox;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/AuthenticationActor;->setSavedUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/vpn/AuthenticationActor;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 82
    :cond_0
    :try_start_1
    const-string v4, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 86
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/vpn/AuthenticationActor;->TAG:Ljava/lang/String;

    const-string v5, "setSavedUsername()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public createConnectView()Landroid/view/View;
    .locals 8

    .prologue
    .line 96
    iget-object v5, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    const v6, 0x7f040055

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f00fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, usernameView:Landroid/widget/TextView;
    const v5, 0x7f0f00fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, passwordView:Landroid/widget/TextView;
    const v5, 0x7f0f00ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 101
    .local v1, saveUsername:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v5}, Landroid/net/vpn/VpnProfile;->getSavedUsername()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, username:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 107
    :cond_0
    return-object v4
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v0}, Landroid/net/vpn/VpnManager;->disconnect()V

    .line 121
    return-void
.end method

.method public getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method public isConnectDialogNeeded()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public validateInputs(Landroid/app/Dialog;)Ljava/lang/String;
    .locals 4
    .parameter "d"

    .prologue
    .line 63
    const v3, 0x7f0f00fc

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, usernameView:Landroid/widget/TextView;
    const v3, 0x7f0f00fd

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, passwordView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    .line 66
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const v3, 0x7f0804a9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    :goto_0
    return-object v3

    .line 68
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const v3, 0x7f0804aa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 71
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
