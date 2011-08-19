.class Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;
.super Ljava/lang/Object;
.source "DialogInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculateRunnable"
.end annotation


# instance fields
.field private isStop:Z

.field private mFile:Lcom/asus/filemanager/main/VFile;

.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogInfo;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/dialog/DialogInfo;Lcom/asus/filemanager/main/VFile;)V
    .locals 1
    .parameter
    .parameter "file"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->isStop:Z

    .line 50
    iput-object p2, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->mFile:Lcom/asus/filemanager/main/VFile;

    .line 51
    return-void
.end method

.method private calculateSize(Ljava/io/File;Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;)Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;
    .locals 7
    .parameter "file"
    .parameter "fileInfo"

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    iget-boolean v2, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->isStop:Z

    if-eqz v2, :cond_1

    .line 89
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v2}, Lcom/asus/filemanager/dialog/DialogInfo;->access$000(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v2}, Lcom/asus/filemanager/dialog/DialogInfo;->access$000(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v3}, Lcom/asus/filemanager/dialog/DialogInfo;->access$000(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-object p2

    .line 78
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    .line 79
    iget-wide v2, p2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mNum:J

    .line 73
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_2
    iget-boolean v2, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->isStop:Z

    if-nez v2, :cond_0

    .line 84
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->calculateSize(Ljava/io/File;Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;)Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    iput-object v2, p2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 59
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->mFile:Lcom/asus/filemanager/main/VFile;

    new-instance v2, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;-><init>(JLjava/math/BigDecimal;)V

    invoke-direct {p0, v1, v2}, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->calculateSize(Ljava/io/File;Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;)Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;

    move-result-object v0

    .line 60
    .local v0, fileInfo:Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$000(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v2}, Lcom/asus/filemanager/dialog/DialogInfo;->access$000(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    iget-boolean v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->isStop:Z

    if-nez v1, :cond_0

    .line 63
    const-string v1, "DialogInfo"

    const-string v2, "Finish Calculate size"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    iget-wide v2, v0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mNum:J

    invoke-static {v1, v2, v3}, Lcom/asus/filemanager/dialog/DialogInfo;->access$102(Lcom/asus/filemanager/dialog/DialogInfo;J)J

    .line 65
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    iget-object v2, v0, Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;->mSize:Ljava/math/BigDecimal;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/asus/filemanager/dialog/DialogInfo;->BigDecimal2String(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/filemanager/dialog/DialogInfo;->access$202(Lcom/asus/filemanager/dialog/DialogInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->isStop:Z

    .line 55
    return-void
.end method
