.class Lcom/amazon/kcp/redding/AlertActivity$6;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/AlertActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/AlertActivity;

.field final synthetic val$book:Lcom/amazon/kcp/library/models/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/AlertActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$6;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    iput-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$6;->val$book:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$6;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/AlertActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity$6;->val$book:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$6;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/AlertActivity;->finish()V

    .line 222
    return-void
.end method
