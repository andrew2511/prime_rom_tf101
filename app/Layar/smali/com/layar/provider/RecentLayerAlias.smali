.class public final enum Lcom/layar/provider/RecentLayerAlias;
.super Ljava/lang/Enum;
.source "RecentLayerAlias.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/provider/RecentLayerAlias;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTH_LABEL:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum AUTH_REQUIRED:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum AUTH_URL:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum BANNER_BG_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum BANNER_TXT_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum BIW_BG_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum COUNTRY_CODE:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum CUSTOM_CIWS:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum DETAIL_DESCRIPTION:Lcom/layar/provider/RecentLayerAlias; = null

.field private static final synthetic ENUM$VALUES:[Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum FILTERS:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum HAS_BANNER_ICON:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum HAS_BIW_BG:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum INNER_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum LAYER_NAME:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum LINK_URL:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum MIDDLE_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum MODIFIED:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum NAME:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum OUTER_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum POI_DOMAIN_URL:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum PREMIUM_CCY:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum PREMIUM_PRICE:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum PREMIUM_PURCHASED:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum PUBLISHER:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum RECENT_COUNT:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum RECENT_DATE:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum SHORT_DESCRIPTION:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum SPOT_COLOR:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final enum STATUS:Lcom/layar/provider/RecentLayerAlias; = null

.field public static final TABLE:Ljava/lang/String; = "recent_layers"

.field private static final TAG:Ljava/lang/String;

.field public static final enum TEXT_COLOR:Lcom/layar/provider/RecentLayerAlias;

.field public static final enum TITLE:Lcom/layar/provider/RecentLayerAlias;

.field public static final enum TITLE_COLOR:Lcom/layar/provider/RecentLayerAlias;

.field public static final enum TYPE:Lcom/layar/provider/RecentLayerAlias;

.field public static final enum _ID:Lcom/layar/provider/RecentLayerAlias;


# instance fields
.field public column:Ljava/lang/String;

.field public fullColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "_ID"

    const-string v2, "_id"

    const-string v3, "recent_layers._id"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    .line 14
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "NAME"

    const-string v2, "name"

    const-string v3, "recent_layers.name"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->NAME:Lcom/layar/provider/RecentLayerAlias;

    .line 15
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "RECENT_DATE"

    const-string v2, "recentDate"

    const-string v3, "recent_layers.recentDate"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    .line 16
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "RECENT_COUNT"

    const-string v2, "recentCount"

    const-string v3, "recent_layers.recentCount"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->RECENT_COUNT:Lcom/layar/provider/RecentLayerAlias;

    .line 18
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "LAYER_NAME"

    const-string v2, "name"

    const-string v3, "layers.name"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->LAYER_NAME:Lcom/layar/provider/RecentLayerAlias;

    .line 19
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "TYPE"

    const/4 v2, 0x5

    const-string v3, "layerType"

    const-string v4, "layers.layerType"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->TYPE:Lcom/layar/provider/RecentLayerAlias;

    .line 20
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "TITLE"

    const/4 v2, 0x6

    const-string v3, "title"

    const-string v4, "layers.title"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->TITLE:Lcom/layar/provider/RecentLayerAlias;

    .line 21
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "PUBLISHER"

    const/4 v2, 0x7

    const-string v3, "publisher"

    const-string v4, "layers.publisher"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->PUBLISHER:Lcom/layar/provider/RecentLayerAlias;

    .line 22
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "SHORT_DESCRIPTION"

    const/16 v2, 0x8

    const-string v3, "shortDescription"

    const-string v4, "layers.shortDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/RecentLayerAlias;

    .line 23
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "DETAIL_DESCRIPTION"

    const/16 v2, 0x9

    const-string v3, "detailDescription"

    const-string v4, "layers.detailDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/RecentLayerAlias;

    .line 24
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "BANNER_BG_COLOR"

    const/16 v2, 0xa

    const-string v3, "bannerBgColor"

    const-string v4, "layers.bannerBgColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 25
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "BANNER_TXT_COLOR"

    const/16 v2, 0xb

    const-string v3, "bannerTxtColor"

    const-string v4, "layers.bannerTxtColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 26
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "HAS_BANNER_ICON"

    const/16 v2, 0xc

    const-string v3, "hasBannerIcon"

    const-string v4, "layers.hasBannerIcon"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/RecentLayerAlias;

    .line 27
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "INNER_COLOR"

    const/16 v2, 0xd

    const-string v3, "innerColor"

    const-string v4, "layers.innerColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->INNER_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 28
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "MIDDLE_COLOR"

    const/16 v2, 0xe

    const-string v3, "middleColor"

    const-string v4, "layers.middleColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 29
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "OUTER_COLOR"

    const/16 v2, 0xf

    const-string v3, "outerColor"

    const-string v4, "layers.outerColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->OUTER_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 30
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "SPOT_COLOR"

    const/16 v2, 0x10

    const-string v3, "spotColor"

    const-string v4, "layers.spotColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->SPOT_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 31
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "TITLE_COLOR"

    const/16 v2, 0x11

    const-string v3, "titleColor"

    const-string v4, "layers.titleColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->TITLE_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 32
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "TEXT_COLOR"

    const/16 v2, 0x12

    const-string v3, "textColor"

    const-string v4, "layers.textColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->TEXT_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 33
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "BIW_BG_COLOR"

    const/16 v2, 0x13

    const-string v3, "biwBgColor"

    const-string v4, "layers.biwBgColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/RecentLayerAlias;

    .line 34
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "HAS_BIW_BG"

    const/16 v2, 0x14

    const-string v3, "hasBiwBG"

    const-string v4, "layers.hasBiwBG"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->HAS_BIW_BG:Lcom/layar/provider/RecentLayerAlias;

    .line 35
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "STATUS"

    const/16 v2, 0x15

    const-string v3, "status"

    const-string v4, "layers.status"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->STATUS:Lcom/layar/provider/RecentLayerAlias;

    .line 36
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "MODIFIED"

    const/16 v2, 0x16

    const-string v3, "modified"

    const-string v4, "layers.modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->MODIFIED:Lcom/layar/provider/RecentLayerAlias;

    .line 37
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "SHOW_FILTER_ON_LAUNCH"

    const/16 v2, 0x17

    const-string v3, "showFilterOnLaunch"

    const-string v4, "layers.showFilterOnLaunch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/RecentLayerAlias;

    .line 38
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "COUNTRY_CODE"

    const/16 v2, 0x18

    const-string v3, "countryCode"

    const-string v4, "layers.countryCode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->COUNTRY_CODE:Lcom/layar/provider/RecentLayerAlias;

    .line 39
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "FILTERS"

    const/16 v2, 0x19

    const-string v3, "filters"

    const-string v4, "layers.filters"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->FILTERS:Lcom/layar/provider/RecentLayerAlias;

    .line 40
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "CUSTOM_CIWS"

    const/16 v2, 0x1a

    const-string v3, "customCiws"

    const-string v4, "layers.customCiws"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/RecentLayerAlias;

    .line 41
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "AUTH_REQUIRED"

    const/16 v2, 0x1b

    const-string v3, "authRequired"

    const-string v4, "layers.authRequired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/RecentLayerAlias;

    .line 42
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "AUTH_LABEL"

    const/16 v2, 0x1c

    const-string v3, "authLabel"

    const-string v4, "layers.authLabel"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->AUTH_LABEL:Lcom/layar/provider/RecentLayerAlias;

    .line 43
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "AUTH_URL"

    const/16 v2, 0x1d

    const-string v3, "authURL"

    const-string v4, "layers.authURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->AUTH_URL:Lcom/layar/provider/RecentLayerAlias;

    .line 44
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "POI_DOMAIN_URL"

    const/16 v2, 0x1e

    const-string v3, "poiDomainURL"

    const-string v4, "layers.poiDomainURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/RecentLayerAlias;

    .line 45
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "PREMIUM_PRICE"

    const/16 v2, 0x1f

    const-string v3, "premium_price"

    const-string v4, "layers.premium_price"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/RecentLayerAlias;

    .line 46
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "PREMIUM_CCY"

    const/16 v2, 0x20

    const-string v3, "premium_ccy"

    const-string v4, "layers.premium_ccy"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->PREMIUM_CCY:Lcom/layar/provider/RecentLayerAlias;

    .line 47
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "PREMIUM_PURCHASED"

    const/16 v2, 0x21

    const-string v3, "premium_purchased"

    const-string v4, "layers.premium_purchased"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/RecentLayerAlias;

    .line 48
    new-instance v0, Lcom/layar/provider/RecentLayerAlias;

    const-string v1, "LINK_URL"

    const/16 v2, 0x22

    const-string v3, "link_url"

    const-string v4, "layers.link_url"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/RecentLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->LINK_URL:Lcom/layar/provider/RecentLayerAlias;

    const/16 v0, 0x23

    new-array v0, v0, [Lcom/layar/provider/RecentLayerAlias;

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->NAME:Lcom/layar/provider/RecentLayerAlias;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->RECENT_COUNT:Lcom/layar/provider/RecentLayerAlias;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->LAYER_NAME:Lcom/layar/provider/RecentLayerAlias;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->TYPE:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->TITLE:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->PUBLISHER:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->INNER_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->OUTER_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->SPOT_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->TITLE_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->TEXT_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->HAS_BIW_BG:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->STATUS:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->MODIFIED:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->COUNTRY_CODE:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->FILTERS:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->AUTH_LABEL:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->AUTH_URL:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->PREMIUM_CCY:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->LINK_URL:Lcom/layar/provider/RecentLayerAlias;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->ENUM$VALUES:[Lcom/layar/provider/RecentLayerAlias;

    .line 62
    const-class v0, Lcom/layar/provider/RecentLayerAlias;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/provider/RecentLayerAlias;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "column"
    .parameter "fullColumn"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/layar/provider/RecentLayerAlias;->column:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static aliases()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Lcom/layar/provider/LayerAlias;->aliases()[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, layerAliases:[Ljava/lang/String;
    array-length v0, v2

    .line 89
    .local v0, count:I
    add-int/lit8 v4, v0, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 90
    .local v3, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 92
    sget-object v4, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    invoke-virtual {v4}, Lcom/layar/provider/RecentLayerAlias;->alias()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 93
    return-object v3

    .line 91
    :cond_0
    aget-object v4, v2, v1

    aput-object v4, v3, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;
    .locals 4
    .parameter "c"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/layar/provider/LayerAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;

    move-result-object v2

    .line 117
    .local v2, result:Lcom/layar/data/layer/Layer20;
    sget-object v3, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/RecentLayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/layar/provider/ResolverHelper;->getColumnLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    .line 118
    .local v0, recentDate:J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    .line 119
    return-object v2
.end method

.method public static generateValues(Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;
    .locals 4
    .parameter "item"

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    .line 78
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, result:Landroid/content/ContentValues;
    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->NAME:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->column:Ljava/lang/String;

    invoke-static {}, Lcom/layar/util/Util;->getNowMidnight()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->RECENT_COUNT:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->column:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, v0

    .line 83
    goto :goto_0
.end method

.method public static hasValue(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-static {}, Lcom/layar/provider/RecentLayerAlias;->values()[Lcom/layar/provider/RecentLayerAlias;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-lt v3, v2, :cond_0

    move v1, v5

    .line 71
    :goto_1
    return v1

    .line 67
    :cond_0
    aget-object v0, v1, v3

    .line 68
    .local v0, item:Lcom/layar/provider/RecentLayerAlias;
    invoke-virtual {v0}, Lcom/layar/provider/RecentLayerAlias;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const/4 v1, 0x1

    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static selection(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/layar/provider/RecentLayerAlias;->selection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "layerName"

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->NAME:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/layar/util/Util;->getNowMidnight()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selectionOfInstance(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/layar/provider/RecentLayerAlias;->selectionOfInstance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selectionOfInstance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "layerName"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->NAME:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layar/provider/RecentLayerAlias;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/provider/RecentLayerAlias;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/provider/RecentLayerAlias;

    return-object p0
.end method

.method public static values()[Lcom/layar/provider/RecentLayerAlias;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/provider/RecentLayerAlias;->ENUM$VALUES:[Lcom/layar/provider/RecentLayerAlias;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/provider/RecentLayerAlias;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/provider/RecentLayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
