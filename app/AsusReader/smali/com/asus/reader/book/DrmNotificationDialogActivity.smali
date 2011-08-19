.class public Lcom/asus/reader/book/DrmNotificationDialogActivity;
.super Landroid/app/Activity;
.source "DrmNotificationDialogActivity.java"


# static fields
.field private static final ReaderTableAcsm:Landroid/net/Uri;

.field private static lastTimeNotification:J


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->lastTimeNotification:J

    .line 138
    const-string v0, "content://reader/acsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->ReaderTableAcsm:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/asus/reader/book/DrmNotificationDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity$1;-><init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->updateAcsmState()V

    return-void
.end method

.method public static startNoActDialogActivity(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, currentTime:J
    sget-wide v7, Lcom/asus/reader/book/DrmNotificationDialogActivity;->lastTimeNotification:J

    sub-long v5, v0, v7

    .line 188
    .local v5, timeDuration:J
    const-wide/16 v7, 0x2710

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 189
    sput-wide v0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->lastTimeNotification:J

    .line 194
    const v7, 0x7f070099

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, nofifyToastMsg:Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 196
    .local v3, l:Landroid/os/Looper;
    if-nez v3, :cond_0

    .line 197
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 199
    :cond_0
    if-eqz v3, :cond_1

    .line 200
    new-instance v2, Lcom/asus/reader/book/DrmNotificationDialogActivity$6;

    invoke-direct {v2, v3, p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity$6;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 219
    .local v2, h:Landroid/os/Handler;
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    .end local v2           #h:Landroid/os/Handler;
    .end local v3           #l:Landroid/os/Looper;
    .end local v4           #nofifyToastMsg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateAcsmState()V
    .locals 5

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 141
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_state"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/DrmNotificationDialogActivity;->ReaderTableAcsm:Landroid/net/Uri;

    const-string v3, "(_state <= \'1\')"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 68
    const-string v2, "extraNotifyType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, intentType:I
    packed-switch v1, :pswitch_data_0

    .line 78
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->finish()V

    .line 84
    .end local v1           #intentType:I
    :goto_0
    return-void

    .line 71
    .restart local v1       #intentType:I
    :pswitch_0
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->getActivationStatusNative()I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->finish()V

    goto :goto_0

    .line 82
    .end local v1           #intentType:I
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->finish()V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmNotificationDialogActivity$5;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity$5;-><init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;-><init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b9

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmNotificationDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity$3;-><init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/reader/book/DrmNotificationDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/DrmNotificationDialogActivity$2;-><init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
