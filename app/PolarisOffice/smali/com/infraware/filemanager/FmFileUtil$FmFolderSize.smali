.class public Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;
.super Ljava/lang/Object;
.source "FmFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmFolderSize"
.end annotation


# static fields
.field static m_bCanceled:Z


# instance fields
.field m_oFolderSizeThread:Ljava/lang/Thread;

.field private m_oHandler:Landroid/os/Handler;

.field m_oIFolderSizeEventListener:Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;

.field m_strFolderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_bCanceled:Z

    .line 1143
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oIFolderSizeEventListener:Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;

    .line 1146
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oFolderSizeThread:Ljava/lang/Thread;

    .line 1150
    new-instance v0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$1;-><init>(Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oHandler:Landroid/os/Handler;

    .line 1168
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->getFolderSize(Ljava/io/File;)V

    return-void
.end method

.method private getFolderList(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 1210
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1219
    :cond_0
    return-void

    .line 1212
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1213
    .local v0, children:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1214
    sget-boolean v2, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_bCanceled:Z

    if-nez v2, :cond_0

    .line 1216
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1217
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->getFolderList(Ljava/io/File;)V

    .line 1213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFolderSize(Ljava/io/File;)V
    .locals 7
    .parameter "file"

    .prologue
    .line 1187
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1207
    :cond_0
    return-void

    .line 1189
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1190
    .local v0, children:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1193
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1194
    sget-boolean v3, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_bCanceled:Z

    if-nez v3, :cond_0

    .line 1196
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1197
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->access$1()J

    move-result-wide v3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/infraware/filemanager/FmFileUtil;->access$0(J)V

    .line 1199
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1200
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1201
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->access$1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1202
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1193
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1205
    :cond_2
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->getFolderSize(Ljava/io/File;)V

    goto :goto_1
.end method

.method public static setPropertyFolderSizeCancel(Z)V
    .locals 0
    .parameter "a_bCanceled"

    .prologue
    .line 1222
    sput-boolean p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_bCanceled:Z

    .line 1223
    return-void
.end method


# virtual methods
.method public getFolderSize(Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;Ljava/lang/String;)J
    .locals 4
    .parameter "a_oEventListener"
    .parameter "a_strFolderPath"

    .prologue
    const-wide/16 v2, 0x0

    .line 1172
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oIFolderSizeEventListener:Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;

    .line 1173
    iput-object p2, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_strFolderPath:Ljava/lang/String;

    .line 1174
    invoke-static {v2, v3}, Lcom/infraware/filemanager/FmFileUtil;->access$0(J)V

    .line 1175
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_bCanceled:Z

    .line 1177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$2;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$2;-><init>(Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oFolderSizeThread:Ljava/lang/Thread;

    .line 1182
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oFolderSizeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1183
    return-wide v2
.end method
