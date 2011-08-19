.class public Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;
.super Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
.source "DocumentsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Document"
.end annotation


# static fields
.field public static final DOC:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final HTML:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final ODT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final PDF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final PNG:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final RTF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final TXT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

.field public static final ZIP:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "doc"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->DOC:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 34
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "odt"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->ODT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 35
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "pdf"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->PDF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 36
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "png"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->PNG:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 37
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "rtf"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->RTF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 38
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "txt"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->TXT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 39
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "zip"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->ZIP:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 40
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    const-string v1, "html"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->HTML:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exportFormat"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method
