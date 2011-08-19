.class Lcom/google/android/talk/GroupChatApproval$1;
.super Ljava/lang/Object;
.source "GroupChatApproval.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GroupChatApproval;->makeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GroupChatApproval;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GroupChatApproval;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/talk/GroupChatApproval$1;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/talk/GroupChatApproval$1;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-static {v1}, Lcom/google/android/talk/GroupChatApproval;->access$000(Lcom/google/android/talk/GroupChatApproval;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 74
    .local v0, session:Lcom/google/android/gtalkservice/IImSession;
    packed-switch p2, :pswitch_data_0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/GroupChatApproval$1;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-virtual {v1}, Lcom/google/android/talk/GroupChatApproval;->finish()V

    .line 84
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/GroupChatApproval$1;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-virtual {v1}, Lcom/google/android/talk/GroupChatApproval;->acceptGroupChat()V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/GroupChatApproval$1;->this$0:Lcom/google/android/talk/GroupChatApproval;

    invoke-virtual {v1}, Lcom/google/android/talk/GroupChatApproval;->declineGroupChat()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
