.class Lcom/asus/reader/BookListActivity$6;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;

.field final synthetic val$editcmsurl:Landroid/widget/EditText;

.field final synthetic val$editlocal:Landroid/widget/EditText;

.field final synthetic val$editregion:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$6;->this$0:Lcom/asus/reader/BookListActivity;

    iput-object p2, p0, Lcom/asus/reader/BookListActivity$6;->val$editlocal:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/asus/reader/BookListActivity$6;->val$editregion:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/asus/reader/BookListActivity$6;->val$editcmsurl:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1366
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$6;->val$editlocal:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1367
    .local v1, newlocale:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$6;->val$editregion:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, newregion:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$6;->val$editcmsurl:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, newcmsurl:Ljava/lang/String;
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setLocale(Ljava/lang/String;)V

    .line 1371
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/asus/reader/vibe2/ApplicationInfo;->setRegion(Ljava/lang/String;)V

    .line 1372
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/asus/reader/vibe2/ApplicationInfo;->setCMSurl(Ljava/lang/String;)V

    .line 1374
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$6;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$6;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v4, v4, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4d9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    return-void
.end method
