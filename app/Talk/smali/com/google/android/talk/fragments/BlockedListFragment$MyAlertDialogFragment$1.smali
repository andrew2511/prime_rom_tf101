.class Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "BlockedListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;->this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;->this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$500(Lcom/google/android/talk/fragments/BlockedListFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 213
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    iget-object v2, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;->this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$200(Lcom/google/android/talk/fragments/BlockedListFragment;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 215
    .local v1, session:Lcom/google/android/gtalkservice/IImSession;
    iget-object v2, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;->this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$600(Lcom/google/android/talk/fragments/BlockedListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->clearContactFlags(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0           #service:Lcom/google/android/gtalkservice/IGTalkService;
    .end local v1           #session:Lcom/google/android/gtalkservice/IImSession;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v2

    goto :goto_0
.end method
