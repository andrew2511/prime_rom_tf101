.class public Lnet/yostore/aws/api/ApiConfig;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# static fields
.field public static final APPROXY:Ljava/lang/String; = "https://approxy.asuswebstorage.com/api/"

.field public static PixWe_Meta_PARENT:Ljava/lang/String; = null

.field public static PixWe_PARENT:Ljava/lang/String; = null

.field public static final SAVED_SEARCH_REAL_FOLDER:J = -0xdL

.field public static final SAVED_SEARCH_VIRTUAL_FOLDER:Ljava/lang/String; = "system.searchcriteria.root"

.field static final SEPARATOR:Ljava/lang/String; = "\n"

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

.field public mEarMeta:Ljava/lang/String;

.field public mediaRelay:Ljava/lang/String;

.field public memofolder:J

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
    .line 23
    const-string v0, "0"

    sput-object v0, Lnet/yostore/aws/api/ApiConfig;->PixWe_PARENT:Ljava/lang/String;

    .line 24
    const-string v0, "-20"

    sput-object v0, Lnet/yostore/aws/api/ApiConfig;->PixWe_Meta_PARENT:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x3e7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    .line 26
    iput-wide v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 113
    const-wide/16 v0, -0x270f

    iput-wide v0, p0, Lnet/yostore/aws/api/ApiConfig;->memofolder:J

    .line 115
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static getFromFile(Ljava/io/File;)Lnet/yostore/aws/api/ApiConfig;
    .locals 6
    .parameter "file"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    invoke-static {p0}, Lnet/yostore/utility/SimpleAES;->decodeFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, ss:Ljava/lang/String;
    if-eqz v3, :cond_11

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, str:Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 131
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    .end local v0           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 135
    .restart local v0       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 136
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 137
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 138
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 139
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 140
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 141
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    .line 142
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    .line 143
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 144
    :cond_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 145
    :cond_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 146
    :cond_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 147
    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 148
    :cond_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 149
    :cond_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    .line 150
    :cond_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 151
    :cond_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    .line 152
    :cond_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #str:Ljava/lang/String;
    :cond_11
    :goto_0
    return-object v0

    .line 154
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v4       #str:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 155
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setToFile(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 165
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/utility/SimpleAES;->encodeToFile([BLjava/io/File;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
