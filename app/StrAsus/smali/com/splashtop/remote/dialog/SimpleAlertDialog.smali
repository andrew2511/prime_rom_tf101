.class public Lcom/splashtop/remote/dialog/SimpleAlertDialog;
.super Landroid/app/AlertDialog;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private bUserTracking:Z

.field private context:Ljava/lang/String;

.field private id:I

.field private rversion:I

.field private upgradeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;I)V
    .locals 3
    .parameter "context"
    .parameter "activity"
    .parameter "id"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 29
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, settings:Landroid/content/SharedPreferences;
    iput p3, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->id:I

    .line 31
    const-string v1, "USRTRACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->bUserTracking:Z

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 89
    iget v6, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->id:I

    sparse-switch v6, :sswitch_data_0

    .line 175
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local p0
    :sswitch_0
    if-ne p2, v7, :cond_1

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 97
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->id:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 100
    :sswitch_1
    if-ne p2, v7, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 102
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v3, marketIntent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 107
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://market.android.com/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 108
    .end local v3           #marketIntent:Landroid/content/Intent;
    .local v4, marketIntent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-object v3, v4

    .line 109
    .end local v4           #marketIntent:Landroid/content/Intent;
    .restart local v3       #marketIntent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 111
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #marketIntent:Landroid/content/Intent;
    :cond_2
    const/4 v6, -0x3

    if-ne p2, v6, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 113
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/MainActivity;

    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->doCheckLicense()V

    goto/16 :goto_0

    .line 114
    .restart local p0
    :cond_3
    if-ne p2, v8, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 119
    :sswitch_2
    if-ne p2, v7, :cond_5

    .line 121
    :try_start_4
    iget-boolean v6, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->bUserTracking:Z

    if-eqz v6, :cond_4

    .line 122
    const-string v6, "RECONNECT-CHOOSE_TRY_AGAIN"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 124
    :cond_4
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 128
    :cond_5
    if-ne p2, v8, :cond_0

    .line 130
    :try_start_5
    iget-boolean v6, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->bUserTracking:Z

    if-eqz v6, :cond_6

    .line 131
    const-string v6, "RECONNECT-CHOOSE_GO_BACK"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0xcb

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 135
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 140
    :sswitch_3
    if-ne p2, v7, :cond_7

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->upgradeUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 144
    :catch_3
    move-exception v6

    move-object v0, v6

    .line 146
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_7
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://market.android.com/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->upgradeUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 147
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_8
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v1, v2

    .line 148
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 150
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    if-ne p2, v8, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 152
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "rversion"

    iget v8, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->rversion:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 157
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :sswitch_4
    if-ne p2, v7, :cond_8

    .line 158
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 159
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .restart local v3       #marketIntent:Landroid/content/Intent;
    :try_start_9
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 162
    :catch_4
    move-exception v6

    move-object v0, v6

    .line 164
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_a
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://market.android.com/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 165
    .end local v3           #marketIntent:Landroid/content/Intent;
    .restart local v4       #marketIntent:Landroid/content/Intent;
    :try_start_b
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    move-object v3, v4

    .line 166
    .end local v4           #marketIntent:Landroid/content/Intent;
    .restart local v3       #marketIntent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 168
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #marketIntent:Landroid/content/Intent;
    :cond_8
    if-ne p2, v8, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 166
    .restart local v0       #ex:Ljava/lang/Exception;
    .restart local v3       #marketIntent:Landroid/content/Intent;
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .end local v3           #marketIntent:Landroid/content/Intent;
    .restart local v4       #marketIntent:Landroid/content/Intent;
    :catch_6
    move-exception v6

    move-object v3, v4

    .end local v4           #marketIntent:Landroid/content/Intent;
    .restart local v3       #marketIntent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 148
    .end local v3           #marketIntent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_7
    move-exception v6

    goto/16 :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_8
    move-exception v6

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 109
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v3       #marketIntent:Landroid/content/Intent;
    :catch_9
    move-exception v6

    goto/16 :goto_0

    .end local v3           #marketIntent:Landroid/content/Intent;
    .restart local v4       #marketIntent:Landroid/content/Intent;
    :catch_a
    move-exception v6

    move-object v3, v4

    .end local v4           #marketIntent:Landroid/content/Intent;
    .restart local v3       #marketIntent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 95
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #marketIntent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_b
    move-exception v6

    goto/16 :goto_1

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f070041

    const v4, 0x7f070040

    const/high16 v1, 0x7f07

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 48
    iget v0, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->id:I

    sparse-switch v0, :sswitch_data_0

    .line 84
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void

    .line 50
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 56
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setTitle(I)V

    .line 57
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    const/4 v0, -0x3

    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 64
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 70
    :sswitch_3
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setTitle(I)V

    .line 71
    iget-object v0, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->context:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 76
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setTitle(I)V

    .line 77
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->context:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setRversion(I)V
    .locals 0
    .parameter "rversion"

    .prologue
    .line 43
    iput p1, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->rversion:I

    .line 44
    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "upgradeUrl"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->upgradeUrl:Ljava/lang/String;

    .line 40
    return-void
.end method
