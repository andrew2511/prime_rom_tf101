.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# instance fields
.field final SERVICES:[Ljava/lang/Object;

.field mServices:[Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/power/PowerUI;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    return-void
.end method

.method private chooseClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 5
    .parameter "o"

    .prologue
    .line 52
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 53
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/SystemUIService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, cl:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v0           #cl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 56
    .restart local v0       #cl:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 57
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v0           #cl:Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local p1
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 60
    check-cast p1, Ljava/lang/Class;

    .end local p1
    move-object v2, p1

    goto :goto_0

    .line 62
    .restart local p1
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown system ui service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 114
    const-string v6, "android.permission.DUMP"

    invoke-virtual {p0, v6}, Lcom/android/systemui/SystemUIService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void

    .line 122
    :cond_1
    if-eqz p3, :cond_2

    array-length v6, p3

    if-nez v6, :cond_3

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 124
    .local v5, ui:Lcom/android/systemui/SystemUI;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumping service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0           #arr$:[Lcom/android/systemui/SystemUI;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #ui:Lcom/android/systemui/SystemUI;
    :cond_3
    const/4 v6, 0x0

    aget-object v4, p3, v6

    .line 129
    .local v4, svc:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .restart local v0       #arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 130
    .restart local v5       #ui:Lcom/android/systemui/SystemUI;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 132
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 129
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 100
    .local v3, ui:Lcom/android/systemui/SystemUI;
    invoke-virtual {v3, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v3           #ui:Lcom/android/systemui/SystemUI;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 69
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 72
    .local v5, wm:Landroid/view/IWindowManager;
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v5}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v8, 0x7f07

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    array-length v0, v6

    .line 80
    .local v0, N:I
    new-array v6, v0, [Lcom/android/systemui/SystemUI;

    iput-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .line 81
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 82
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/systemui/SystemUIService;->chooseClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 83
    .local v1, cl:Ljava/lang/Class;
    const-string v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUI;

    aput-object v6, v7, v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iput-object p0, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 92
    const-string v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "running: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 72
    .end local v0           #N:I
    .end local v1           #cl:Ljava/lang/Class;
    .end local v4           #i:I
    :cond_0
    const v8, 0x7f070001

    goto :goto_0

    .line 75
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 76
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "SystemUIService"

    const-string v7, "Failing checking whether status bar can hide"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 86
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #N:I
    .restart local v1       #cl:Ljava/lang/Class;
    .restart local v4       #i:I
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 87
    .local v3, ex:Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 88
    .end local v3           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 89
    .local v3, ex:Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 95
    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #ex:Ljava/lang/InstantiationException;
    :cond_1
    return-void
.end method
