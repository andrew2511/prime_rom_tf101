.class Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
.super Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveSelfAccountAvatarTask"
.end annotation


# instance fields
.field mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/TalkApp;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V
    .locals 1
    .parameter
    .parameter "contentResolver"
    .parameter "onLoaded"

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->this$0:Lcom/google/android/talk/TalkApp;

    .line 1097
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;-><init>(Landroid/content/ContentResolver;Ljava/lang/Runnable;)V

    .line 1098
    iput-object p3, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    .line 1099
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .locals 1
    .parameter "accountInfos"

    .prologue
    .line 1114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1115
    invoke-super {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1091
    check-cast p1, [Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 3
    .parameter "avatarData"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->this$0:Lcom/google/android/talk/TalkApp;

    monitor-enter v0

    .line 1104
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->access$1300()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-super {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1107
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    invoke-interface {v0, p1}, Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;->run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1110
    :cond_0
    return-void

    .line 1105
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1091
    check-cast p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    return-void
.end method
