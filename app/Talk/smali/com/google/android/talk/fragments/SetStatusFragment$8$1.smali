.class Lcom/google/android/talk/fragments/SetStatusFragment$8$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/SetStatusFragment$8;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$8;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$8;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->clearSelfAvatarCache()V

    .line 752
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$8;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->updateRoster()V

    .line 753
    return-void
.end method
