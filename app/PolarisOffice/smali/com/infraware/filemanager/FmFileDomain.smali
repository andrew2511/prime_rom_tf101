.class public Lcom/infraware/filemanager/FmFileDomain;
.super Ljava/lang/Object;
.source "FmFileDomain.java"


# static fields
.field private static g_oFmFileDomain:Lcom/infraware/filemanager/FmFileDomain;


# instance fields
.field private m_oBoxnetFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private m_oGoogleFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private m_oLocalFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private m_oLocalFolderOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private m_oRecentFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private m_oZipFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/FmFileDomain;->g_oFmFileDomain:Lcom/infraware/filemanager/FmFileDomain;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/infraware/filemanager/FmFileIcon;->instance()Lcom/infraware/filemanager/FmFileIcon;

    .line 25
    return-void
.end method

.method public static instance()Lcom/infraware/filemanager/FmFileDomain;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/infraware/filemanager/FmFileDomain;->g_oFmFileDomain:Lcom/infraware/filemanager/FmFileDomain;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/infraware/filemanager/FmFileDomain;

    invoke-direct {v0}, Lcom/infraware/filemanager/FmFileDomain;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/FmFileDomain;->g_oFmFileDomain:Lcom/infraware/filemanager/FmFileDomain;

    .line 32
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileDomain;->g_oFmFileDomain:Lcom/infraware/filemanager/FmFileDomain;

    return-object v0
.end method


# virtual methods
.method public createOperator(Landroid/app/Activity;I)Lcom/infraware/filemanager/operator/FmFileOperator;
    .locals 2
    .parameter "a_oContext"
    .parameter "a_nAdapterMode"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    packed-switch p2, :pswitch_data_0

    .line 74
    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    new-instance v0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    .end local v0           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;-><init>(Landroid/app/Activity;Z)V

    .restart local v0       #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    .end local v0           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;-><init>(Landroid/app/Activity;Z)V

    .restart local v0       #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;

    .end local v0           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    invoke-direct {v0, p1}, Lcom/infraware/filemanager/operator/FmRecentFileOperator;-><init>(Landroid/app/Activity;)V

    .restart local v0       #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    goto :goto_0

    .line 69
    :pswitch_3
    new-instance v0, Lcom/infraware/filemanager/operator/FmZipFileOperator;

    .end local v0           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    invoke-direct {v0, p1}, Lcom/infraware/filemanager/operator/FmZipFileOperator;-><init>(Landroid/app/Activity;)V

    .restart local v0       #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    goto :goto_0

    .line 72
    :pswitch_4
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;

    .end local v0           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    invoke-direct {v0, p1}, Lcom/infraware/filemanager/operator/FmWebFileOperator;-><init>(Landroid/app/Activity;)V

    .restart local v0       #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getOperator(I)Lcom/infraware/filemanager/operator/FmFileOperator;
    .locals 1
    .parameter "a_nAdapterMode"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oLocalFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oRecentFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oZipFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oGoogleFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 56
    :pswitch_4
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oBoxnetFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 57
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oLocalFolderOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public releaseOperator(Lcom/infraware/filemanager/operator/FmFileOperator;)V
    .locals 1
    .parameter "a_oFileOperator"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oLocalFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 41
    :pswitch_1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oRecentFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 42
    :pswitch_2
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oZipFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 43
    :pswitch_3
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oGoogleFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 44
    :pswitch_4
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oBoxnetFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 45
    :pswitch_5
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileDomain;->m_oLocalFolderOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
