.class public abstract Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.super Ljava/lang/Thread;
.source "AbstractThread.java"


# static fields
.field public static final THREAD_TYPE_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final THREAD_TYPE_FILE_OPERATION:Ljava/lang/String; = "FILE OPERATION"

.field public static final THREAD_TYPE_LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final THREAD_TYPE_UPLOAD:Ljava/lang/String; = "UPLOAD"


# instance fields
.field protected handler:Landroid/os/Handler;

.field private isCancel:Z

.field private isDone:Z

.field protected password:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected postCancel:Ljava/lang/Runnable;

.field protected postFailure:Ljava/lang/Runnable;

.field protected postSuccess:Ljava/lang/Runnable;

.field protected serviceType:I

.field public threadType:Ljava/lang/String;

.field protected userId:Ljava/lang/String;

.field protected webPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 13
    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel:Z

    .line 14
    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone:Z

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->serviceType:I

    .line 17
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->userId:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->password:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->path:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->webPath:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->handler:Landroid/os/Handler;

    .line 23
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->postSuccess:Ljava/lang/Runnable;

    .line 24
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->postFailure:Ljava/lang/Runnable;

    .line 25
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->postCancel:Ljava/lang/Runnable;

    .line 27
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->threadType:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel:Z

    .line 46
    return-void
.end method

.method protected done()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone:Z

    .line 56
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone:Z

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->password:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->path:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPostProcess(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "handler"
    .parameter "success"
    .parameter "failure"
    .parameter "cancel"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->handler:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->postSuccess:Ljava/lang/Runnable;

    .line 39
    iput-object p3, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->postFailure:Ljava/lang/Runnable;

    .line 40
    iput-object p4, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->postCancel:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public setWebPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->webPath:Ljava/lang/String;

    .line 71
    return-void
.end method
