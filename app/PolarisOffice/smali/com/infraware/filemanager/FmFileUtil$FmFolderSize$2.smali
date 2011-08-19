.class Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$2;
.super Ljava/lang/Object;
.source "FmFileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->getFolderSize(Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$2;->this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1179
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$2;->this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;

    iget-object v1, v1, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_strFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, oPathFile:Ljava/io/File;
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$2;->this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;

    invoke-static {v1, v0}, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->access$0(Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;Ljava/io/File;)V

    .line 1181
    return-void
.end method
