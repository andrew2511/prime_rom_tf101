.class public Lnet/yostore/aws/dto/BrowseToObject;
.super Ljava/lang/Object;
.source "BrowseToObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/dto/BrowseToObject$BrowseType;,
        Lnet/yostore/aws/dto/BrowseToObject$SortBy;,
        Lnet/yostore/aws/dto/BrowseToObject$SortDirection;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$dto$BrowseToObject$BrowseType:[I


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private browseId:Ljava/lang/String;

.field private browseName:Ljava/lang/String;

.field private browsePage:I

.field private browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field private isBackup:Z

.field private isReadOnly:Z

.field private pageEnable:Z

.field private pageSize:I

.field private search:Lnet/yostore/aws/handler/entity/Search;

.field private searchOffset:I

.field private sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

.field private sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$dto$BrowseToObject$BrowseType()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject;->$SWITCH_TABLE$net$yostore$aws$dto$BrowseToObject$BrowseType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->values()[Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lnet/yostore/aws/dto/BrowseToObject;->$SWITCH_TABLE$net$yostore$aws$dto$BrowseToObject$BrowseType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V
    .locals 4
    .parameter "apicfg"
    .parameter "browseType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 16
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 17
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 18
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 19
    iput v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 20
    iput v3, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 22
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 23
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 149
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 150
    iput-object p2, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 151
    invoke-static {}, Lnet/yostore/aws/dto/BrowseToObject;->$SWITCH_TABLE$net$yostore$aws$dto$BrowseToObject$BrowseType()[I

    move-result-object v0

    invoke-virtual {p2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    goto :goto_0

    .line 159
    :pswitch_1
    iput-boolean v3, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "apicfg"
    .parameter "browseType"
    .parameter "browseId"
    .parameter "browseName"
    .parameter "isBackup"
    .parameter "isReadOnly"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 16
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 17
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 18
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 19
    iput v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 22
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 23
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 116
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 117
    iput-object p2, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 118
    iput-object p3, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseId:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseName:Ljava/lang/String;

    .line 120
    iput-boolean p5, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 121
    iput-boolean p6, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 4
    .parameter "apicfg"
    .parameter "fi"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 16
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 17
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 18
    iput-boolean v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 19
    iput v2, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 20
    iput v3, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 22
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 23
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 125
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 126
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 127
    iget-object v0, p2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseId:Ljava/lang/String;

    .line 128
    iget-object v0, p2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseName:Ljava/lang/String;

    .line 129
    iget-object v0, p2, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 130
    iget-boolean v0, p2, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    iput-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V
    .locals 2
    .parameter "apicfg"
    .parameter "search"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 16
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 17
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 18
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 19
    iput v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 22
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 23
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 143
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 144
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 145
    iput-object p2, p0, Lnet/yostore/aws/dto/BrowseToObject;->search:Lnet/yostore/aws/handler/entity/Search;

    .line 146
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 2
    .parameter "apicfg"
    .parameter "bv"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 16
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 17
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 18
    iput-boolean v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 19
    iput v1, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 22
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->LastChangeTime:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 23
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->ASC:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 134
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 135
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 136
    invoke-virtual {p2}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseId:Ljava/lang/String;

    .line 137
    invoke-virtual {p2}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseName:Ljava/lang/String;

    .line 138
    invoke-virtual {p2}, Lnet/yostore/aws/vo/BrowseVo;->isBackup()Z

    move-result v0

    iput-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 139
    invoke-virtual {p2}, Lnet/yostore/aws/vo/BrowseVo;->isReadOnly()Z

    move-result v0

    iput-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 140
    return-void
.end method


# virtual methods
.method public getApicfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method public getBrowseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowsePage()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    return v0
.end method

.method public getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    return v0
.end method

.method public getSearch()Lnet/yostore/aws/handler/entity/Search;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->search:Lnet/yostore/aws/handler/entity/Search;

    return-object v0
.end method

.method public getSearchOffset()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    return v0
.end method

.method public getSortBy()Lnet/yostore/aws/dto/BrowseToObject$SortBy;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    return-object v0
.end method

.method public getSortDirection()Lnet/yostore/aws/dto/BrowseToObject$SortDirection;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    return-object v0
.end method

.method public isBackup()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    return v0
.end method

.method public isPageEnable()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    return v0
.end method

.method public setApicfg(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter "apicfg"

    .prologue
    .line 204
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 205
    return-void
.end method

.method public setBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 229
    iput-boolean p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isBackup:Z

    .line 230
    return-void
.end method

.method public setBrowseId(Ljava/lang/String;)V
    .locals 0
    .parameter "browseId"

    .prologue
    .line 184
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setBrowseName(Ljava/lang/String;)V
    .locals 0
    .parameter "browseName"

    .prologue
    .line 194
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setBrowsePage(I)V
    .locals 2
    .parameter "browsePage"

    .prologue
    .line 265
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    .line 266
    iput p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    const/4 v1, 0x1

    sub-int v1, p1, v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    goto :goto_0
.end method

.method public setBrowsePaging(ZII)V
    .locals 1
    .parameter "pageEnable"
    .parameter "browsePage"
    .parameter "pageSize"

    .prologue
    .line 283
    iput-boolean p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iput p2, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 286
    iput p3, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    .line 289
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    goto :goto_0
.end method

.method public setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V
    .locals 0
    .parameter "browseType"

    .prologue
    .line 174
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 175
    return-void
.end method

.method public setPageEnable(Z)V
    .locals 0
    .parameter "pageEnable"

    .prologue
    .line 214
    iput-boolean p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 215
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .parameter "pageSize"

    .prologue
    .line 279
    iput p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 280
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .parameter "isReadOnly"

    .prologue
    .line 239
    iput-boolean p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly:Z

    .line 240
    return-void
.end method

.method public setSearchOffset(I)V
    .locals 2
    .parameter "searchOffset"

    .prologue
    .line 249
    iget-object v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    .line 250
    iput p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 256
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    if-lez v0, :cond_1

    .line 252
    iget v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->browsePage:I

    goto :goto_0
.end method

.method public setSearchPaging(ZII)V
    .locals 1
    .parameter "pageEnable"
    .parameter "searchOffset"
    .parameter "pageSize"

    .prologue
    .line 294
    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageEnable:Z

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iput p2, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 298
    iput p3, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->searchOffset:I

    .line 301
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/dto/BrowseToObject;->pageSize:I

    goto :goto_0
.end method

.method public setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V
    .locals 0
    .parameter "sortBy"
    .parameter "sortDirection"

    .prologue
    .line 326
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 327
    iput-object p2, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 328
    return-void
.end method

.method public setSortBy(Lnet/yostore/aws/dto/BrowseToObject$SortBy;)V
    .locals 0
    .parameter "sortBy"

    .prologue
    .line 312
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortBy:Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    .line 313
    return-void
.end method

.method public setSortDirection(Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V
    .locals 0
    .parameter "sortDirection"

    .prologue
    .line 322
    iput-object p1, p0, Lnet/yostore/aws/dto/BrowseToObject;->sortDirection:Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    .line 323
    return-void
.end method
