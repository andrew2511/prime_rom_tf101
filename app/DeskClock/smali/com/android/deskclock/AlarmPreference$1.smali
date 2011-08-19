.class Lcom/android/deskclock/AlarmPreference$1;
.super Landroid/os/AsyncTask;
.source "AlarmPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmPreference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 77
    .local v0, r:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/AlarmPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmPreference;->access$002(Lcom/android/deskclock/AlarmPreference;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 91
    :cond_1
    return-void
.end method
