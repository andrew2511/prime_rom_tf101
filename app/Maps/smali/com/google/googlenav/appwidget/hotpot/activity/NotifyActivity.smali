.class public Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/e;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0x2a0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/activity/f;

    invoke-direct {v2, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/f;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Dialog;
    .locals 3

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/g;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0x2fa

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/activity/c;

    invoke-direct {v2, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/c;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0x1c3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/activity/d;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/appwidget/hotpot/activity/d;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "change-settings-intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->finish()V

    return-void
.end method
