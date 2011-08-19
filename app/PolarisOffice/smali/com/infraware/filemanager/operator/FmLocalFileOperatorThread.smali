.class public Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "FmLocalFileOperatorThread.java"


# instance fields
.field private m_bKeepSrcFile:Z

.field private m_nFileListIndex:I

.field private m_nFileMaxCount:I

.field private m_nFileOperation:I

.field private m_oContext:Landroid/content/Context;

.field private m_oDestPathFile:Ljava/io/File;

.field m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oSrcPathFile:Ljava/io/File;

.field private m_oSrcPathFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private m_strDestPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/operator/FmLocalFileOperator;)V
    .locals 1
    .parameter "a_oFmLocalFileOperator"

    .prologue
    .line 35
    const-string v0, "FILE OPERATION"

    invoke-direct {p0, v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;-><init>(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileMaxCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oSrcPathFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oDestPathFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileOperation:I

    return v0
.end method

.method static synthetic access$3(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileMaxCount:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oSrcPathFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileListIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_strDestPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_bKeepSrcFile:Z

    return v0
.end method

.method static synthetic access$8(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileListIndex:I

    return-void
.end method


# virtual methods
.method public countFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Z
    .locals 6
    .parameter "a_oContext"
    .parameter
    .parameter "a_strDestPath"
    .parameter "a_bKeepSrcFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p2, a_oSrcPathFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v2, 0x1

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->setOperation(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;Z)V

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$2;-><init>(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return v2
.end method

.method public delete(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 2
    .parameter "a_oContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, a_oSrcPathFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->setOperation(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$4;-><init>(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileOperation:I

    return v0
.end method

.method public paste(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 2
    .parameter "a_oSrcPathFile"
    .parameter "a_oDestPathFile"
    .parameter "a_bKeepSrcFile"

    .prologue
    .line 71
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_bKeepSrcFile:Z

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->setOperation(ILjava/io/File;Ljava/io/File;Z)V

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$3;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$3;-><init>(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public setOperation(ILjava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter "a_nFileOperation"
    .parameter "a_oSrcPathFileList"
    .parameter "a_oDestPathFile"
    .parameter "a_bKeepSrcFile"

    .prologue
    .line 176
    iput p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileOperation:I

    .line 177
    iput-object p2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oSrcPathFile:Ljava/io/File;

    .line 178
    iput-object p3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oDestPathFile:Ljava/io/File;

    .line 179
    iput-boolean p4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_bKeepSrcFile:Z

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileListIndex:I

    .line 181
    return-void
.end method

.method public setOperation(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "a_oContext"
    .parameter "a_nFileOperation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, a_oSrcPathFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oContext:Landroid/content/Context;

    .line 158
    iput p2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileOperation:I

    .line 159
    iput-object p3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oSrcPathFileList:Ljava/util/ArrayList;

    .line 160
    iput v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileListIndex:I

    .line 161
    invoke-static {v0}, Lcom/infraware/filemanager/FmFileUtil;->setCancel(Z)V

    .line 162
    return-void
.end method

.method public setOperation(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 1
    .parameter "a_oContext"
    .parameter "a_nFileOperation"
    .parameter
    .parameter "a_strDestPath"
    .parameter "a_bKeepSrcFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, a_oSrcPathFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oContext:Landroid/content/Context;

    .line 167
    iput p2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileOperation:I

    .line 168
    iput-object p3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oSrcPathFileList:Ljava/util/ArrayList;

    .line 169
    iput-object p4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_strDestPath:Ljava/lang/String;

    .line 170
    iput-boolean p5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_bKeepSrcFile:Z

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_nFileListIndex:I

    .line 172
    return-void
.end method
