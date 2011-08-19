.class public Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyInstrumentationEvent.java"


# instance fields
.field mRunnerName:Ljava/lang/String;

.field mTestCaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "testCaseName"
    .parameter "runnerName"

    .prologue
    .line 35
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 11
    .parameter "iwm"
    .parameter "iam"
    .parameter "verbose"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 43
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 44
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad component name"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v4, args:Landroid/os/Bundle;
    const-string v0, "class"

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    :try_start_24
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_29

    .line 54
    const/4 v0, 0x1

    :goto_28
    return v0

    .line 50
    :catch_29
    move-exception v6

    .line 51
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    const/4 v0, -0x1

    goto :goto_28
.end method
