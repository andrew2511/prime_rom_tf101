.class public Lnet/yostore/aws/api/ApiConfig;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# static fields
.field public static final APPROXY:Ljava/lang/String; = "https://approxy.asuswebstorage.com/api/"

.field public static MEAR_PARENT:Ljava/lang/String; = null

.field public static PixWe_Meta_PARENT:Ljava/lang/String; = null

.field public static PixWe_PARENT:Ljava/lang/String; = null

.field public static final SAVED_SEARCH_REAL_FOLDER:J = -0xdL

.field public static final SAVED_SEARCH_VIRTUAL_FOLDER:Ljava/lang/String; = "system.searchcriteria.root"

.field public static final SEPARATOR:Ljava/lang/String; = "\n"

.field public static final SERVICEPORTAL:Ljava/lang/String; = "sp.yostore.net"


# instance fields
.field public MySyncFolderId:Ljava/lang/String;

.field public ServiceGateway:Ljava/lang/String;

.field public albums_meta_folder_id:J

.field public capacity:Ljava/lang/String;

.field public contentRelay:Ljava/lang/String;

.field public expireDate:Ljava/lang/String;

.field public infoRelay:Ljava/lang/String;

.field public jobRelay:Ljava/lang/String;

.field public lib_folder_id:J

.field public mEarMeta:Ljava/lang/String;

.field public mearBlockFreeAccAfterFGate:I

.field public mearBlockFreeAccFirstGate:I

.field public mear_folder_id:J

.field public mediaRelay:Ljava/lang/String;

.field public memofolder:J

.field public meta_folder_id:J

.field public mySync:Ljava/lang/String;

.field public packageDisplay:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pixWeAlbum:Ljava/lang/String;

.field public pixwe_folder_id:J

.field public rssRelay:Ljava/lang/String;

.field public searchServer:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public usedquota:Ljava/lang/String;

.field public userid:Ljava/lang/String;

.field public webRelay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "-20"

    sput-object v0, Lnet/yostore/aws/api/ApiConfig;->MEAR_PARENT:Ljava/lang/String;

    .line 25
    const-string v0, "-24"

    sput-object v0, Lnet/yostore/aws/api/ApiConfig;->PixWe_PARENT:Ljava/lang/String;

    .line 26
    const-string v0, "-24"

    sput-object v0, Lnet/yostore/aws/api/ApiConfig;->PixWe_Meta_PARENT:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x3e7

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    .line 28
    iput-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 115
    const-wide/16 v0, -0x270f

    iput-wide v0, p0, Lnet/yostore/aws/api/ApiConfig;->memofolder:J

    .line 117
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 130
    iput-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    .line 134
    iput-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    .line 135
    iput v4, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    .line 136
    iput v4, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    .line 138
    iput-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    .line 18
    return-void
.end method

.method public static getFromFile(Ljava/io/File;)Lnet/yostore/aws/api/ApiConfig;
    .locals 2
    .parameter "file"

    .prologue
    .line 180
    invoke-static {p0}, Lnet/yostore/utility/SimpleAES;->decodeFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, ss:Ljava/lang/String;
    invoke-static {v1}, Lnet/yostore/aws/api/ApiConfig;->getFromString(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    .line 182
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    return-object v0
.end method

.method public static getFromString(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;
    .locals 5
    .parameter "ss"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    if-eqz p0, :cond_10

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, str:Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    .end local v0           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 151
    .restart local v0       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 152
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 153
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 154
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 155
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 156
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 157
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    .line 158
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    .line 159
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 160
    :cond_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 161
    :cond_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 162
    :cond_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 163
    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 164
    :cond_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 165
    :cond_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    .line 166
    :cond_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 167
    :cond_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    iput-object v3, v0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #str:Ljava/lang/String;
    :cond_10
    :goto_0
    return-object v0

    .line 169
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #str:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 170
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setToFile(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 186
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/utility/SimpleAES;->encodeToFile([BLjava/io/File;)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
