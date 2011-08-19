.class Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;
.super Landroid/os/AsyncTask;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
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
    .line 371
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    .line 380
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 382
    .local v0, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoChatEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1402(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z

    .line 383
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAudioChatEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1502(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z

    .line 384
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1400(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 371
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1602(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1700(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 396
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 371
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
