.class public Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
.super Lcom/infraware/filemanager/webstorage/objects/google/Entry;
.source "DocumentsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    }
.end annotation


# instance fields
.field private exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    .line 24
    return-void
.end method


# virtual methods
.method public clone()Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->clone()Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->clone()Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    move-result-object v0

    return-object v0
.end method

.method public getContentSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->content:Lcom/infraware/filemanager/webstorage/objects/google/Content;

    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->content:Lcom/infraware/filemanager/webstorage/objects/google/Content;

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/google/Content;->src:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExportFormat()Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    .locals 5

    .prologue
    .line 118
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->categories:Ljava/util/List;

    const-string v3, "http://schemas.google.com/g/2005#kind"

    invoke-static {v2, v3}, Lcom/infraware/filemanager/webstorage/objects/google/Category;->find(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, kind:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->title:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, extension:Ljava/lang/String;
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 123
    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->HTML:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    .line 168
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #kind:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    return-object v2

    .line 125
    .restart local v0       #extension:Ljava/lang/String;
    .restart local v1       #kind:Ljava/lang/String;
    :cond_1
    const-string v2, "odt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->ODT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 127
    :cond_2
    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->PDF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 129
    :cond_3
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->PNG:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 131
    :cond_4
    const-string v2, "rtf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->RTF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 133
    :cond_5
    const-string v2, "txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->TXT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 135
    :cond_6
    const-string v2, "zip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->ZIP:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 138
    :cond_7
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;->DOC:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Document;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 140
    :cond_8
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 141
    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 142
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;->PDF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 143
    :cond_9
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 144
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;->PNG:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto :goto_0

    .line 145
    :cond_a
    const-string v2, "swf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 146
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;->SWF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 147
    :cond_b
    const-string v2, "txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 148
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;->TXT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 150
    :cond_c
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;->PPT:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Presentation;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 152
    :cond_d
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const-string v2, "csv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 154
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;->CSV:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 155
    :cond_e
    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 156
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;->PDF:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 157
    :cond_f
    const-string v2, "ods"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 158
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;->ODS:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 159
    :cond_10
    const-string v2, "tsv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 160
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;->TSV:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 161
    :cond_11
    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 162
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;->HTML:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0

    .line 164
    :cond_12
    sget-object v2, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;->XLS:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat$Spreadsheet;

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    goto/16 :goto_0
.end method

.method public getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->categories:Ljava/util/List;

    const-string v3, "http://schemas.google.com/g/2005#kind"

    invoke-static {v2, v3}, Lcom/infraware/filemanager/webstorage/objects/google/Category;->find(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, kindString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 76
    .local v0, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    if-nez v1, :cond_0

    .line 77
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 93
    :goto_0
    return-object v2

    .line 79
    :cond_0
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    :goto_1
    move-object v2, v0

    .line 93
    goto :goto_0

    .line 81
    :cond_1
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1

    .line 83
    :cond_2
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1

    .line 85
    :cond_3
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1

    .line 87
    :cond_4
    sget-object v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1

    .line 90
    :cond_5
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/Category;>;"
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->categories:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setContent(Lcom/infraware/filemanager/webstorage/objects/google/Content;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->content:Lcom/infraware/filemanager/webstorage/objects/google/Content;

    .line 102
    return-void
.end method

.method public setExportType(Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;)V
    .locals 0
    .parameter "exportFormat"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    .line 113
    return-void
.end method
