.class public Lcom/android/contacts/vcard/CancelActivity;
.super Landroid/app/Activity;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/CancelActivity$1;,
        Lcom/android/contacts/vcard/CancelActivity$CancelListener;,
        Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

.field private mDisplayName:Ljava/lang/String;

.field private mJobId:I

.field private mMessenger:Landroid/os/Messenger;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "VCardCancel"

    iput-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->LOG_TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/vcard/CancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "job_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/vcard/CancelActivity;->mJobId:I

    .line 82
    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    .line 83
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/vcard/CancelActivity;->mType:I

    .line 84
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/CancelActivity;->showDialog(I)V

    .line 85
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "bundle"

    .prologue
    const v7, 0x104000a

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 117
    const-string v3, "VCardCancel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown dialog id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 93
    :pswitch_0
    iget v3, p0, Lcom/android/contacts/vcard/CancelActivity;->mType:I

    if-ne v3, v4, :cond_0

    .line 94
    const v3, 0x7f0c00e0

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/CancelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f0c00e1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, message:Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    iget-object v5, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 97
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0c00e2

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/CancelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2       #title:Ljava/lang/String;
    const v3, 0x7f0c00e3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c00e4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00bd

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/CancelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f07000f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 125
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v3, p0, Lcom/android/contacts/vcard/CancelActivity;->mMessenger:Landroid/os/Messenger;

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, callFinish:Z
    :try_start_0
    new-instance v2, Lcom/android/contacts/vcard/CancelRequest;

    iget v3, p0, Lcom/android/contacts/vcard/CancelActivity;->mJobId:I

    iget-object v4, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/contacts/vcard/CancelRequest;-><init>(ILjava/lang/String;)V

    .line 130
    .local v2, request:Lcom/android/contacts/vcard/CancelRequest;
    iget-object v3, p0, Lcom/android/contacts/vcard/CancelActivity;->mMessenger:Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 140
    .end local v2           #request:Lcom/android/contacts/vcard/CancelRequest;
    :goto_0
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/vcard/CancelActivity;->finish()V

    .line 143
    :cond_0
    return-void

    .line 132
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 133
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "VCardCancel"

    const-string v4, "RemoteException is thrown when trying to send request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/CancelActivity;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mMessenger:Landroid/os/Messenger;

    .line 148
    return-void
.end method
