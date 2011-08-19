.class public Lnet/yostore/aws/handler/entity/Search;
.super Ljava/lang/Object;
.source "Search.java"


# static fields
.field private static final TP_DOCS:Ljava/lang/String; = " html htm xml xls ppt doc xlsx pptx docx odt ods odp pdf epub rtf txt"

.field private static final TP_EXT:[Ljava/lang/String; = null

.field private static final TP_IMAGE:Ljava/lang/String; = " jpg gif png jpeg bmp"

.field private static final TP_MUSIC:Ljava/lang/String; = " mp3"

.field private static final TP_VIDEO:Ljava/lang/String; = " avi mp4 mpeg mpg m4v mov mkv vob vcd svcd rm rmvb divx wmv 3gp 3gpp flv"

.field private static final concatenatStr:Ljava/lang/String; = "?"

.field private static final delimiterStr:Ljava/lang/String; = "\\?"

.field private static final wildcardStr:Ljava/lang/String; = "-"


# instance fields
.field private choice:Ljava/lang/String;

.field private choiceall:Ljava/lang/String;

.field private mark:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private srhopt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    const-string v2, " html htm xml xls ppt doc xlsx pptx docx odt ods odp pdf epub rtf txt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 16
    const-string v2, " jpg gif png jpeg bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, " avi mp4 mpeg mpg m4v mov mkv vob vcd svcd rm rmvb divx wmv 3gp 3gpp flv"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 18
    const-string v2, " mp3"

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lnet/yostore/aws/handler/entity/Search;->TP_EXT:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v1, "\\?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, attrs:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->getKeywordAttr([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->choiceall:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->getKeywordAttr([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->choice:Ljava/lang/String;

    .line 32
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->getKeywordAttr([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->name:Ljava/lang/String;

    .line 33
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->getKeywordAttr([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->mark:Ljava/lang/String;

    .line 34
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->getKeywordAttr([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->srhopt:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "choiceall"
    .parameter "choice"
    .parameter "name"
    .parameter "mark"
    .parameter "srhopt"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Search;->choiceall:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/Search;->choice:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lnet/yostore/aws/handler/entity/Search;->name:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lnet/yostore/aws/handler/entity/Search;->mark:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lnet/yostore/aws/handler/entity/Search;->srhopt:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private concatenateFileName(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "sb"
    .parameter "s"

    .prologue
    .line 74
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :goto_0
    return-object p1

    .line 77
    :cond_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static getExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "choice"

    .prologue
    .line 83
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 100
    :goto_0
    return-object v4

    .line 85
    :cond_0
    const-string v3, ""

    .line 86
    .local v3, rtn:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, choices:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 88
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_2

    .end local v2           #i:I
    :cond_1
    move-object v4, v3

    .line 100
    goto :goto_0

    .line 90
    .restart local v2       #i:I
    :cond_2
    :try_start_0
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, cc:I
    sget-object v4, Lnet/yostore/aws/handler/entity/Search;->TP_EXT:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lnet/yostore/aws/handler/entity/Search;->TP_EXT:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 88
    .end local v0           #cc:I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private static getKeywordAttr([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "attrs"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 107
    if-eqz p0, :cond_3

    .line 108
    :try_start_0
    aget-object v1, p0, p1

    .line 109
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 111
    const-string v2, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 122
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 114
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 116
    goto :goto_0

    .line 119
    .end local v1           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    move-object v2, v3

    .line 120
    goto :goto_0

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object v2, v3

    .line 122
    goto :goto_0
.end method


# virtual methods
.method public getChoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Search;->choice:Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Search;->choiceall:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Search;->choice:Ljava/lang/String;

    invoke-static {v0}, Lnet/yostore/aws/handler/entity/Search;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Search;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Search;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSrhopt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Search;->srhopt:Ljava/lang/String;

    return-object v0
.end method

.method public setChoice(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Search;->choice:Ljava/lang/String;

    return-void
.end method

.method public setChoiceall(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 46
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Search;->choiceall:Ljava/lang/String;

    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 49
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Search;->mark:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Search;->name:Ljava/lang/String;

    return-void
.end method

.method public setSrhopt(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Search;->srhopt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->choiceall:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/Search;->concatenateFileName(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->choice:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/Search;->concatenateFileName(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/Search;->concatenateFileName(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->mark:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/Search;->concatenateFileName(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/Search;->srhopt:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/Search;->concatenateFileName(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
