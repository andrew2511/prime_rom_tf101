.class public Lcom/asus/filemanager/edit/EditorAsyncHelper;
.super Ljava/lang/Object;
.source "EditorAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/edit/EditorAsyncHelper$1;,
        Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;,
        Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

.field private static sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EditorAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;-><init>(Lcom/asus/filemanager/edit/EditorAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    .line 150
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 153
    sput-object p0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sContext:Landroid/content/Context;

    .line 154
    return-void
.end method

.method public static ShowCopyFileReady([Ljava/io/File;Z)V
    .locals 5
    .parameter "fa"
    .parameter "srcDelete"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 206
    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    array-length v0, p0

    if-ne v0, v3, :cond_3

    .line 209
    if-eqz p1, :cond_2

    const v0, 0x7f05001d

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v3, v1}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f05001a

    goto :goto_1

    .line 211
    :cond_3
    array-length v0, p0

    if-le v0, v3, :cond_0

    .line 213
    if-eqz p1, :cond_4

    const v0, 0x7f05001e

    :goto_2
    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    :cond_4
    const v0, 0x7f05001b

    goto :goto_2
.end method

.method public static ShowCopyFileResult(ILjava/lang/String;)V
    .locals 4
    .parameter "r"
    .parameter "folder"

    .prologue
    const/4 v3, 0x1

    .line 223
    packed-switch p0, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 225
    :pswitch_0
    const v0, 0x7f050008

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 228
    :pswitch_1
    const v0, 0x7f050026

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 231
    :pswitch_2
    const v0, 0x7f050007

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 234
    :pswitch_3
    if-eqz p1, :cond_0

    .line 235
    const v0, 0x7f050027

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :pswitch_4
    const v0, 0x7f050028

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static copyFile([Lcom/asus/filemanager/main/VFile;Ljava/lang/String;Landroid/os/Handler;ZZ)V
    .locals 4
    .parameter "files"
    .parameter "path"
    .parameter "handler"
    .parameter "srcDelete"
    .parameter "showsuccess"

    .prologue
    .line 173
    sget-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;

    invoke-direct {v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper;-><init>()V

    sput-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    .line 177
    :cond_0
    new-instance v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;-><init>(Lcom/asus/filemanager/edit/EditorAsyncHelper$1;)V

    .line 178
    .local v0, args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->files:[Ljava/io/File;

    .line 179
    iput-object p1, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->path:Ljava/lang/String;

    .line 180
    iput-object p2, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    .line 181
    iput-boolean p3, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->srcDelete:Z

    .line 182
    iput-boolean p4, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->showsuccess:Z

    .line 184
    sget-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 185
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    sget-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    invoke-virtual {v2, v1}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

.method public static copyFileTerminate()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;

    invoke-direct {v0}, Lcom/asus/filemanager/edit/EditorAsyncHelper;-><init>()V

    sput-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    .line 194
    :cond_0
    sget-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->copyFileTerminate()V

    .line 195
    return-void
.end method

.method public static deletFile([Ljava/io/File;Landroid/os/Handler;)V
    .locals 4
    .parameter "files"
    .parameter "handler"

    .prologue
    .line 157
    sget-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;

    invoke-direct {v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper;-><init>()V

    sput-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    .line 161
    :cond_0
    new-instance v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;-><init>(Lcom/asus/filemanager/edit/EditorAsyncHelper$1;)V

    .line 162
    .local v0, args:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->files:[Ljava/io/File;

    .line 163
    iput-object p1, v0, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;->handler:Landroid/os/Handler;

    .line 165
    sget-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    sget-object v2, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    invoke-virtual {v2, v1}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

.method public static setCopyFileOverWrite(ZZ)V
    .locals 1
    .parameter "isOverWrite"
    .parameter "isApplyAll"

    .prologue
    .line 198
    sget-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;

    invoke-direct {v0}, Lcom/asus/filemanager/edit/EditorAsyncHelper;-><init>()V

    sput-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sInstance:Lcom/asus/filemanager/edit/EditorAsyncHelper;

    .line 201
    :cond_0
    sget-object v0, Lcom/asus/filemanager/edit/EditorAsyncHelper;->sThreadHandler:Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;

    invoke-virtual {v0, p0, p1}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerHandler;->setCopyFileOverWrite(ZZ)V

    .line 202
    return-void
.end method
