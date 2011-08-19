.class Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;
.super Ljava/lang/Object;
.source "FmFileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/database/FmFileDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DBFileItem"
.end annotation


# instance fields
.field nDateAdded:J

.field nDateModified:J

.field nFormat:I

.field nID:J

.field nMediaType:I

.field nParent:J

.field nSize:J

.field strBucketDisplayName:Ljava/lang/String;

.field strBucketID:Ljava/lang/String;

.field strData:Ljava/lang/String;

.field strMimeType:Ljava/lang/String;

.field strTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/filemanager/database/FmFileDatabase;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/database/FmFileDatabase;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->this$0:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide v1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nID:J

    .line 69
    iput-wide v1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nSize:J

    .line 70
    iput v3, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nFormat:I

    .line 71
    iput v3, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nMediaType:I

    .line 72
    iput-wide v1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nDateAdded:J

    .line 73
    iput-wide v1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nDateModified:J

    .line 74
    iput-wide v1, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->nParent:J

    .line 75
    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strData:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strMimeType:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strTitle:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strBucketID:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/infraware/filemanager/database/FmFileDatabase$DBFileItem;->strBucketDisplayName:Ljava/lang/String;

    return-void
.end method
