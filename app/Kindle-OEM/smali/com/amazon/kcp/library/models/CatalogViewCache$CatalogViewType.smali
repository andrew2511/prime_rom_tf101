.class public final enum Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;
.super Ljava/lang/Enum;
.source "CatalogViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CatalogViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CatalogViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_ALL:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_ALL_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_ALL_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_ARCHIVE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_ARCHIVE_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_ARCHIVE_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_DOWNLOADED_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_DOWNLOADED_RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_DOWNLOADED_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_PERIODICALS_PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

.field public static final enum UI_PERIODICALS_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;


# instance fields
.field public final filterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public final sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_ALL"

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 68
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_ALL_TITLE"

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 73
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_ALL_AUTHOR"

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 78
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_ARCHIVE"

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 83
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_ARCHIVE_TITLE"

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 88
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_ARCHIVE_AUTHOR"

    const/4 v2, 0x5

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_DOWNLOADED"

    const/4 v2, 0x6

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 99
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_DOWNLOADED_TITLE"

    const/4 v2, 0x7

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 104
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_DOWNLOADED_AUTHOR"

    const/16 v2, 0x8

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 109
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_DOWNLOADED_RECENT"

    const/16 v2, 0x9

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED_RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 115
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_PERIODICALS"

    const/16 v2, 0xa

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 120
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_PERIODICALS_TITLE"

    const/16 v2, 0xb

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 125
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "UI_PERIODICALS_PUBLICATION"

    const/16 v2, 0xc

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS_PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 130
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    const-string v1, "DICTIONARY_EXCLUDED"

    const/16 v2, 0xd

    sget-object v3, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v4, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ALL_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_ARCHIVE_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED_AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_DOWNLOADED_RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS_TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->UI_PERIODICALS_PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)V
    .locals 0
    .parameter
    .parameter
    .parameter "filter"
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;",
            "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput-object p4, p0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->sortField:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 138
    iput-object p3, p0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->filterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 139
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;
    .locals 1
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;

    return-object v0
.end method
