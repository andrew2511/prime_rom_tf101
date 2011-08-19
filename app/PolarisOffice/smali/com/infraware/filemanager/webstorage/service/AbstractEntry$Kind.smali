.class public Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
.super Ljava/lang/Object;
.source "AbstractEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kind"
.end annotation


# static fields
.field public static final DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DOCUMENT_TXT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DOCUMENT_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DRAWING_GIF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DRAWING_JPG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DRAWING_PNG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final PRESENTATION_SHOW:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final PRESENTATION_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final SPREADSHEET_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;


# instance fields
.field private kind:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "document"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 27
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "pdf"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 32
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "spreadsheet"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 37
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "presentation"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 42
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "drawing"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 47
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "file"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 52
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "folder"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 60
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "presentationShow"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION_SHOW:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 61
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "presentationX"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 62
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "spreadsheetX"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 63
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "documentX"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 64
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "documentTXT"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT_TXT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 65
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "png"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_PNG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 66
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "jpg"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_JPG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 67
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "gif"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_GIF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->kind:Ljava/lang/String;

    return-void
.end method

.method public static convertExtensionFromKind(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;)Ljava/lang/String;
    .locals 2
    .parameter "kind"

    .prologue
    .line 102
    const-string v0, ""

    .line 103
    .local v0, extension:Ljava/lang/String;
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v0, "doc"

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const-string v0, "ppt"

    goto :goto_0

    .line 107
    :cond_2
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string v0, "xls"

    goto :goto_0

    .line 109
    :cond_3
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    const-string v0, "pdf"

    goto :goto_0

    .line 111
    :cond_4
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_PNG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    const-string v0, "png"

    goto :goto_0

    .line 113
    :cond_5
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_JPG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    const-string v0, "jpg"

    goto :goto_0

    .line 115
    :cond_6
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_GIF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    const-string v0, "gif"

    goto :goto_0

    .line 117
    :cond_7
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION_SHOW:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    const-string v0, "pps"

    goto :goto_0

    .line 119
    :cond_8
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 120
    const-string v0, "pptx"

    goto :goto_0

    .line 121
    :cond_9
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 122
    const-string v0, "xlsx"

    goto :goto_0

    .line 123
    :cond_a
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 124
    const-string v0, "docx"

    goto :goto_0

    .line 125
    :cond_b
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT_TXT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v0, "txt"

    goto :goto_0
.end method

.method public static findKindFromFilename(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    .locals 4
    .parameter "filename"

    .prologue
    .line 70
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 71
    .local v1, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 71
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, extension:Ljava/lang/String;
    const-string v2, "doc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 98
    :cond_0
    :goto_0
    return-object v1

    .line 75
    :cond_1
    const-string v2, "ppt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 77
    :cond_2
    const-string v2, "xls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 79
    :cond_3
    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 81
    :cond_4
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_PNG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 83
    :cond_5
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 84
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_JPG:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 85
    :cond_6
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 86
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING_GIF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 87
    :cond_7
    const-string v2, "pps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 88
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION_SHOW:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 89
    :cond_8
    const-string v2, "pptx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 90
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 91
    :cond_9
    const-string v2, "xlsx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 92
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 93
    :cond_a
    const-string v2, "docx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 94
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT_X:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0

    .line 95
    :cond_b
    const-string v2, "txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT_TXT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_0
.end method

.method public static getExtension(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "kindFromEntry"
    .parameter "assumedExtension"

    .prologue
    .line 133
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "odt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move-object v0, p1

    .line 155
    :goto_0
    return-object v0

    .line 141
    :cond_1
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    const-string v0, "swf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move-object v0, p1

    .line 145
    goto :goto_0

    .line 147
    :cond_3
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    const-string v0, "csv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    const-string v0, "ods"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tsv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, p1

    .line 152
    goto :goto_0

    .line 155
    :cond_5
    invoke-static {p0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->convertExtensionFromKind(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->kind:Ljava/lang/String;

    return-object v0
.end method
