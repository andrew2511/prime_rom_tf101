.class public Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
.super Landroid/os/AsyncTask;
.source "SystemUpdateVerifierTask.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/os/RecoverySystem$ProgressListener;"
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private mNotification:Landroid/app/Notification;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mShowProgress:Z

.field private final mStartedRealtime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "context"
    .parameter "file"
    .parameter "sharedPrefs"
    .parameter "showProgress"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mNotification:Landroid/app/Notification;

    .line 58
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    .line 60
    iput-object p3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mStartedRealtime:J

    .line 62
    iput-boolean p4, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mShowProgress:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mCancelled:Z

    .line 64
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 90
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 92
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 93
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "UpdateVerifier"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 95
    .local v2, wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    .line 99
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 100
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SystemUpdateVerifierTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 102
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 105
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mCancelled:Z

    .line 165
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 167
    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mShowProgress:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mNotification:Landroid/app/Notification;

    .line 135
    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 137
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 140
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 143
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 145
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 147
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 149
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->publishProgress([Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    .local v0, percent:I
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0b0030

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 122
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0b002f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f03000c

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "verify_progress"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
