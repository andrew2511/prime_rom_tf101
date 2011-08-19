.class Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;
.super Landroid/os/AsyncTask;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoChatEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setAudioChatEnabled(Z)V

    .line 407
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
