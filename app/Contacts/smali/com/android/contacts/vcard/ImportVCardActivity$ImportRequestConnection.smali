.class Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 206
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->mMessenger:Landroid/os/Messenger;

    .line 207
    const-string v0, "VCardImport"

    const-string v1, "Connected to VCardService. Kick a vCard cache thread (uri: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->start()V

    .line 211
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 215
    const-string v0, "VCardImport"

    const-string v1, "Disconnected from VCardService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public sendImportRequest(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 6
    .parameter "request"

    .prologue
    const/4 v3, 0x1

    .line 193
    const-string v1, "VCardImport"

    const-string v2, "Send an import request (Uri: %s)"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->mMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VCardImport"

    const-string v2, "RemoteException is thrown when trying to send request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v2, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0c00bd

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
