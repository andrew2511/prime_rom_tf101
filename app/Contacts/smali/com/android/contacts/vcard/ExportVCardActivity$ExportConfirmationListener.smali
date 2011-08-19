.class Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportConfirmationListener"
.end annotation


# instance fields
.field private final mDestinationUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/vcard/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "path"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Landroid/net/Uri;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 134
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 136
    const-string v1, "VCardExport"

    const-string v2, "Try sending export request (uri: %s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/android/contacts/vcard/ExportRequest;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 141
    .local v0, request:Lcom/android/contacts/vcard/ExportRequest;
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$300(Lcom/android/contacts/vcard/ExportVCardActivity;Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "VCardExport"

    const-string v2, "Successfully sent export request. Finish itself"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$400(Lcom/android/contacts/vcard/ExportVCardActivity;)V

    .line 146
    .end local v0           #request:Lcom/android/contacts/vcard/ExportRequest;
    :cond_0
    return-void
.end method
