.class Lcom/google/android/talk/fragments/SetStatusFragment$12;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1400(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1500(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0, p2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1402(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z

    .line 921
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0, p2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1502(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z

    .line 922
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0, p2, p2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2900(Lcom/google/android/talk/fragments/SetStatusFragment;ZZ)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1100(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 926
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$12;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->updateRoster()V

    .line 927
    return-void
.end method
