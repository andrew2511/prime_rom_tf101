.class public abstract Lcom/github/droidfu/concurrent/BetterAsyncTask;
.super Landroid/os/AsyncTask;
.source "BetterAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParameterT:",
        "Ljava/lang/Object;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParameterT;TProgressT;TReturnT;>;"
    }
.end annotation


# instance fields
.field private appContext:Lcom/github/droidfu/DroidFuApplication;

.field private callable:Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable",
            "<TParameterT;TProgressT;TReturnT;>;"
        }
    .end annotation
.end field

.field private callerId:Ljava/lang/String;

.field private contextIsDroidFuActivity:Z

.field private dialogId:I

.field private error:Ljava/lang/Exception;

.field private isTitleProgressEnabled:Z

.field private isTitleProgressIndeterminateEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    const/4 v3, 0x1

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressIndeterminateEnabled:Z

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/github/droidfu/DroidFuApplication;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context bound to this task must be a DroidFu context (DroidFuApplication)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/github/droidfu/DroidFuApplication;

    iput-object v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->appContext:Lcom/github/droidfu/DroidFuApplication;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callerId:Ljava/lang/String;

    .line 51
    instance-of v1, p1, Lcom/github/droidfu/activities/BetterActivity;

    iput-boolean v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->contextIsDroidFuActivity:Z

    .line 53
    iget-object v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->appContext:Lcom/github/droidfu/DroidFuApplication;

    iget-object v2, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callerId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/github/droidfu/DroidFuApplication;->setActiveContext(Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    iget-boolean v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->contextIsDroidFuActivity:Z

    if-eqz v1, :cond_1

    .line 56
    check-cast p1, Lcom/github/droidfu/activities/BetterActivity;

    .end local p1
    invoke-interface {p1}, Lcom/github/droidfu/activities/BetterActivity;->getWindowFeatures()I

    move-result v0

    .line 57
    .local v0, windowFeatures:I
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_2

    .line 58
    iput-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressEnabled:Z

    .line 63
    .end local v0           #windowFeatures:I
    :cond_1
    :goto_0
    return-void

    .line 59
    .restart local v0       #windowFeatures:I
    :cond_2
    const/4 v1, 0x5

    and-int/lit8 v2, v0, 0x5

    if-ne v1, v2, :cond_1

    .line 60
    iput-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressIndeterminateEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract after(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TReturnT;)V"
        }
    .end annotation
.end method

.method protected before(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 106
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    return-void
.end method

.method public disableDialog()V
    .locals 1

    .prologue
    .line 172
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    .line 173
    return-void
.end method

.method protected varargs doCheckedInBackground(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TParameterT;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    .local p2, params:[Ljava/lang/Object;,"[TParameterT;"
    iget-object v0, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callable:Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callable:Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;

    invoke-interface {v0, p0}, Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;->call(Lcom/github/droidfu/concurrent/BetterAsyncTask;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParameterT;)TReturnT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParameterT;"
    const/4 v2, 0x0

    .line 111
    .local v2, result:Ljava/lang/Object;,"TReturnT;"
    invoke-virtual {p0}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->getCallingContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->doCheckedInBackground(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    .end local v2           #result:Ljava/lang/Object;,"TReturnT;"
    :goto_0
    return-object v2

    .line 114
    .restart local v2       #result:Ljava/lang/Object;,"TReturnT;"
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    iput-object v1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->error:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public failed()Z
    .locals 1

    .prologue
    .line 160
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    iget-object v0, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCallingContext()Landroid/content/Context;
    .locals 6

    .prologue
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    const/4 v5, 0x0

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->appContext:Lcom/github/droidfu/DroidFuApplication;

    iget-object v4, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/github/droidfu/DroidFuApplication;->getActiveContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 68
    .local v1, caller:Landroid/content/Context;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 77
    .end local v1           #caller:Landroid/content/Context;
    :goto_0
    return-object v3

    .restart local v1       #caller:Landroid/content/Context;
    :cond_1
    move-object v3, v1

    .line 74
    goto :goto_0

    .line 75
    .end local v1           #caller:Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 76
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    .line 77
    goto :goto_0
.end method

.method protected abstract handleError(Landroid/content/Context;Ljava/lang/Exception;)V
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    .local p1, result:Ljava/lang/Object;,"TReturnT;"
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->getCallingContext()Landroid/content/Context;

    move-result-object v2

    .line 132
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_0

    .line 133
    const-class v3, Lcom/github/droidfu/concurrent/BetterAsyncTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipping post-exec handler for task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (context is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->contextIsDroidFuActivity:Z

    if-eqz v3, :cond_2

    .line 139
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 140
    .local v1, activity:Landroid/app/Activity;
    iget v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 141
    iget v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 143
    :cond_1
    iget-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressEnabled:Z

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 150
    .end local v1           #activity:Landroid/app/Activity;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->failed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v2, v3}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->handleError(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0

    .line 145
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_3
    iget-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressIndeterminateEnabled:Z

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1

    .line 153
    .end local v1           #activity:Landroid/app/Activity;
    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->after(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 7

    .prologue
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    const/4 v6, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->getCallingContext()Landroid/content/Context;

    move-result-object v2

    .line 84
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_0

    .line 85
    const-class v3, Lcom/github/droidfu/concurrent/BetterAsyncTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipping pre-exec handler for task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (context is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, v6}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->cancel(Z)Z

    .line 103
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->contextIsDroidFuActivity:Z

    if-eqz v3, :cond_2

    .line 92
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 93
    .local v1, activity:Landroid/app/Activity;
    iget v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 94
    iget v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 96
    :cond_1
    iget-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressEnabled:Z

    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {v1, v6}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 102
    .end local v1           #activity:Landroid/app/Activity;
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/github/droidfu/concurrent/BetterAsyncTask;->before(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_3
    iget-boolean v3, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->isTitleProgressIndeterminateEnabled:Z

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v1, v6}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method public setCallable(Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable",
            "<TParameterT;TProgressT;TReturnT;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    .local p1, callable:Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;,"Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable<TParameterT;TProgressT;TReturnT;>;"
    iput-object p1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->callable:Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;

    .line 165
    return-void
.end method

.method public useCustomDialog(I)V
    .locals 0
    .parameter "dialogId"

    .prologue
    .line 168
    .local p0, this:Lcom/github/droidfu/concurrent/BetterAsyncTask;,"Lcom/github/droidfu/concurrent/BetterAsyncTask<TParameterT;TProgressT;TReturnT;>;"
    iput p1, p0, Lcom/github/droidfu/concurrent/BetterAsyncTask;->dialogId:I

    .line 169
    return-void
.end method
