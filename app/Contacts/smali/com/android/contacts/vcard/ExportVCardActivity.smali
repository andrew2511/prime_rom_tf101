.class public Lcom/android/contacts/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ExportVCardActivity$1;,
        Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private mOutgoingMessenger:Landroid/os/Messenger;

.field private volatile mProcessOngoing:Z

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 114
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Lcom/android/contacts/vcard/ExportVCardActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    .line 122
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ExportVCardActivity;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ExportVCardActivity;->trySend(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method private trySend(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mOutgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v1, 0x1

    .line 279
    :goto_0
    return v1

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VCardExport"

    const-string v2, "RemoteException is thrown when trying to send request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 277
    const v1, 0x7f0c00bd

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 278
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    .line 279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 291
    const-string v0, "VCardExport"

    const-string v1, "ExportVCardActivity#onCancel() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 293
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 294
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 285
    const-string v0, "VCardExport"

    const-string v1, "ExportVCardActivity#onClick() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c00bd

    const v2, 0x7f070016

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    new-instance v0, Ljava/io/File;

    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 164
    const-string v0, "VCardExport"

    const-string v1, "Failed to start vCard service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 170
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-string v0, "VCardExport"

    const-string v1, "Failed to connect to vCard service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "bundle"

    .prologue
    const v3, 0x7f0c00d1

    const v1, 0x7f0c00d0

    const/4 v2, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 246
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 208
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00cf

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 218
    :sswitch_1
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0c00d3

    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 227
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_1
    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const v2, 0x7f0c00bd

    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 238
    :sswitch_3
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x7f070007 -> :sswitch_3
        0x7f070014 -> :sswitch_0
        0x7f070016 -> :sswitch_2
        0x7f0c00d3 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 251
    const v0, 0x7f070016

    if-ne p1, v0, :cond_0

    .line 252
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 253
    .restart local p2
    :cond_0
    const v0, 0x7f070014

    if-ne p1, v0, :cond_1

    .line 254
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    const v0, 0x7f0c00cf

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    const-string v1, "VCardExport"

    const-string v2, "connected to service, requesting a destination file name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 182
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mOutgoingMessenger:Landroid/os/Messenger;

    .line 183
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 186
    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->trySend(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 180
    .end local v0           #message:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    const-string v0, "VCardExport"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mOutgoingMessenger:Landroid/os/Messenger;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 196
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 200
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 268
    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 300
    return-void
.end method
