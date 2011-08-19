.class public Lnet/yostore/aws/handler/RecentUploadFilesHandler;
.super Ljava/lang/Object;
.source "RecentUploadFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;,
        Lnet/yostore/aws/handler/RecentUploadFilesHandler$SearchType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RecentUploadFilesHandler$FileType:[I = null

.field private static final TAG:Ljava/lang/String; = "RecentUploadFilesHandler"


# instance fields
.field final DOC_EX:Ljava/lang/String;

.field private final GB:J

.field private final KB:J

.field private final MB:J

.field final MUS_EX:Ljava/lang/String;

.field private final OR:Ljava/lang/String;

.field final PIC_EX:Ljava/lang/String;

.field private final TB:J

.field final VID_EX:Ljava/lang/String;

.field private _path:Ljava/lang/String;

.field private _pathId:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field public errMsg:Ljava/lang/String;

.field public fsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public naviTotal:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RecentUploadFilesHandler$FileType()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RecentUploadFilesHandler$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->values()[Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ALL:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->DOC:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->MUSIC:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->PIC:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->VIDEO:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RecentUploadFilesHandler$FileType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->ctx:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 37
    const-string v0, " or "

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->OR:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->naviTotal:I

    .line 39
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_path:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_pathId:Ljava/lang/String;

    .line 164
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->KB:J

    .line 165
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->MB:J

    .line 166
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->GB:J

    .line 167
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->TB:J

    .line 314
    const-string v0, "pdf or doc or docx or html or htm or txt"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->DOC_EX:Ljava/lang/String;

    .line 315
    const-string v0, "jpeg or jpg or bmp or png"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->PIC_EX:Ljava/lang/String;

    .line 316
    const-string v0, "flv or 3gp"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->VID_EX:Ljava/lang/String;

    .line 317
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->MUS_EX:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->ctx:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 37
    const-string v0, " or "

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->OR:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->naviTotal:I

    .line 39
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_path:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_pathId:Ljava/lang/String;

    .line 164
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->KB:J

    .line 165
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->MB:J

    .line 166
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->GB:J

    .line 167
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->TB:J

    .line 314
    const-string v0, "pdf or doc or docx or html or htm or txt"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->DOC_EX:Ljava/lang/String;

    .line 315
    const-string v0, "jpeg or jpg or bmp or png"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->PIC_EX:Ljava/lang/String;

    .line 316
    const-string v0, "flv or 3gp"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->VID_EX:Ljava/lang/String;

    .line 317
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->MUS_EX:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->ctx:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 84
    return-void
.end method

.method private FileType2Ext(Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "ft"

    .prologue
    .line 321
    const-string v0, ""

    .line 323
    .local v0, rtn:Ljava/lang/String;
    invoke-static {}, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RecentUploadFilesHandler$FileType()[I

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_0
    return-object v0

    .line 326
    :pswitch_0
    const-string v0, "pdf or doc or docx or html or htm or txt or jpeg or jpg or bmp or png or flv or 3gp or aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    .line 327
    goto :goto_0

    .line 329
    :pswitch_1
    const-string v0, "pdf or doc or docx or html or htm or txt"

    .line 330
    goto :goto_0

    .line 332
    :pswitch_2
    const-string v0, "jpeg or jpg or bmp or png"

    .line 333
    goto :goto_0

    .line 335
    :pswitch_3
    const-string v0, "flv or 3gp"

    .line 336
    goto :goto_0

    .line 338
    :pswitch_4
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getBrowseRawIcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, rtn:I
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const v0, 0x7f02006b

    .line 218
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->parseFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, tp:Ljava/lang/String;
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const v0, 0x7f02006c

    goto :goto_0

    .line 195
    :cond_1
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    const v0, 0x7f020072

    goto :goto_0

    .line 197
    :cond_2
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    const v0, 0x7f02006f

    goto :goto_0

    .line 199
    :cond_3
    const-string v2, "application/pdf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    const v0, 0x7f02006e

    goto :goto_0

    .line 201
    :cond_4
    const-string v2, "application/msword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    const v0, 0x7f020068

    goto :goto_0

    .line 203
    :cond_5
    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    const v0, 0x7f02006a

    goto :goto_0

    .line 205
    :cond_6
    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 206
    const v0, 0x7f020070

    goto :goto_0

    .line 207
    :cond_7
    const-string v2, "text/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    const v0, 0x7f020071

    goto :goto_0

    .line 209
    :cond_8
    const-string v2, "application/zip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 210
    const v0, 0x7f020074

    goto :goto_0

    .line 211
    :cond_9
    const-string v2, "application/epub+zip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 212
    const v0, 0x7f020069

    goto :goto_0

    .line 213
    :cond_a
    const-string v2, "code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 214
    const v0, 0x7f020067

    goto/16 :goto_0

    .line 216
    :cond_b
    const v0, 0x7f02006d

    goto/16 :goto_0
.end method

.method private getKind([Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 5
    .parameter "fts"

    .prologue
    .line 302
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 303
    .local v1, rtn:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 311
    :goto_1
    return-object v1

    .line 303
    :cond_0
    aget-object v0, p1, v3

    .line 305
    .local v0, ft:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;
    sget-object v4, Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;->ALL:Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;

    if-ne v0, v4, :cond_1

    .line 307
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 308
    goto :goto_1

    .line 303
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getSizeDisp(J)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const-wide v7, 0x10000000000L

    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 171
    cmp-long v0, p1, v7

    if-lez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v7

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 173
    :cond_0
    cmp-long v0, p1, v5

    if-lez v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    cmp-long v0, p1, v1

    if-lez v0, :cond_3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private makeExtStr([Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;)Ljava/lang/String;
    .locals 4
    .parameter "ft"

    .prologue
    .line 346
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 349
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->FileType2Ext(Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 353
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 351
    .restart local v0       #i:I
    :cond_1
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->FileType2Ext(Lnet/yostore/aws/handler/RecentUploadFilesHandler$FileType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFsInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_pathId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentUploads(II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 11
    .parameter "top"
    .parameter "sortdirection"

    .prologue
    .line 121
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    .line 123
    const/4 v5, 0x0

    .line 125
    .local v5, response:Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;
    const-string v6, "0,-3,-5"

    .line 128
    .local v6, targetroot:Ljava/lang/String;
    new-instance v1, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;

    invoke-direct {v1, p1, v6, p2}, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;-><init>(ILjava/lang/String;I)V

    .line 131
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v7, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v7}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;->getLLastestUploadsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 155
    .local v4, fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 160
    new-instance v7, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    iget-object v8, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v7, v8, v9, v10, p1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v4           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :goto_1
    return-object v7

    .line 133
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 135
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ">>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/4 v7, 0x0

    goto :goto_1

    .line 157
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/BaseEntry;

    .line 158
    .local v3, fi:Lnet/yostore/aws/api/entity/BaseEntry;
    iget-object v7, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    new-instance v8, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v8, v3}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/BaseEntry;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public parseFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "end"

    .prologue
    .line 224
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 227
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "audio/mp3"

    .line 280
    :goto_0
    return-object v0

    .line 231
    :cond_0
    const-string v0, "m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xmf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "amr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    :cond_1
    const-string v0, "audio/*"

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    const-string v0, "mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "svcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    const-string v0, "divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    :cond_3
    const-string v0, "video/*"

    goto/16 :goto_0

    .line 241
    :cond_4
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 243
    :cond_5
    const-string v0, "image/*"

    goto/16 :goto_0

    .line 245
    :cond_6
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    const-string v0, "application/pdf"

    goto/16 :goto_0

    .line 249
    :cond_7
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "docx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    :cond_8
    const-string v0, "application/msword"

    goto/16 :goto_0

    .line 253
    :cond_9
    const-string v0, "xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 255
    :cond_a
    const-string v0, "application/vnd.ms-excel"

    goto/16 :goto_0

    .line 257
    :cond_b
    const-string v0, "ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "pptx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    :cond_c
    const-string v0, "application/vnd.ms-powerpoint"

    goto/16 :goto_0

    .line 261
    :cond_d
    const-string v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "odt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ods"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "odp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 263
    :cond_e
    const-string v0, "text/*"

    goto/16 :goto_0

    .line 265
    :cond_f
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "rar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 267
    :cond_10
    const-string v0, "application/zip"

    goto/16 :goto_0

    .line 269
    :cond_11
    const-string v0, "epub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 271
    const-string v0, "application/epub+zip"

    goto/16 :goto_0

    .line 273
    :cond_12
    const-string v0, "htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 274
    const-string v0, "aidl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "vb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 276
    :cond_13
    const-string v0, "code"

    goto/16 :goto_0

    .line 280
    :cond_14
    const-string v0, "*/*"

    goto/16 :goto_0
.end method

.method public setFsInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->fsInfos:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "_path"

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_path:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPathId(Ljava/lang/String;)V
    .locals 0
    .parameter "_pathId"

    .prologue
    .line 66
    iput-object p1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->_pathId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 90
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 91
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 93
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 94
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    .line 98
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 116
    :cond_1
    :goto_1
    return-void

    .line 96
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 102
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 107
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 109
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/handler/RecentUploadFilesHandler;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
