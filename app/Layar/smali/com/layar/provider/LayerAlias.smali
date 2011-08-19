.class public final enum Lcom/layar/provider/LayerAlias;
.super Ljava/lang/Enum;
.source "LayerAlias.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/provider/LayerAlias;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTH_DESCRIPTION:Lcom/layar/provider/LayerAlias; = null

.field public static final enum AUTH_LABEL:Lcom/layar/provider/LayerAlias; = null

.field public static final enum AUTH_PARAMS:Lcom/layar/provider/LayerAlias; = null

.field public static final enum AUTH_REQUIRED:Lcom/layar/provider/LayerAlias; = null

.field public static final enum AUTH_URL:Lcom/layar/provider/LayerAlias; = null

.field public static final enum BANNER_BG_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum BANNER_TXT_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum BIW_BG_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum COUNTRY_CODE:Lcom/layar/provider/LayerAlias; = null

.field public static final enum CUSTOM_CIWS:Lcom/layar/provider/LayerAlias; = null

.field public static final enum DETAIL_DESCRIPTION:Lcom/layar/provider/LayerAlias; = null

.field private static final synthetic ENUM$VALUES:[Lcom/layar/provider/LayerAlias; = null

.field public static final enum FILTERS:Lcom/layar/provider/LayerAlias; = null

.field public static final enum HAS_BANNER_ICON:Lcom/layar/provider/LayerAlias; = null

.field public static final enum HAS_BIW_BG:Lcom/layar/provider/LayerAlias; = null

.field public static final enum INNER_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum LINK_URL:Lcom/layar/provider/LayerAlias; = null

.field public static final enum MIDDLE_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum MODIFIED:Lcom/layar/provider/LayerAlias; = null

.field public static final enum NAME:Lcom/layar/provider/LayerAlias; = null

.field public static final enum OUTER_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum POI_DOMAIN_URL:Lcom/layar/provider/LayerAlias; = null

.field public static final enum PREMIUM_CCY:Lcom/layar/provider/LayerAlias; = null

.field public static final enum PREMIUM_PRICE:Lcom/layar/provider/LayerAlias; = null

.field public static final enum PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias; = null

.field public static final enum PUBLISHER:Lcom/layar/provider/LayerAlias; = null

.field public static final enum REPLACE_FILTERS:Lcom/layar/provider/LayerAlias; = null

.field public static final enum SHORT_DESCRIPTION:Lcom/layar/provider/LayerAlias; = null

.field public static final enum SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/LayerAlias; = null

.field public static final enum SHOW_TAKE_ME_THERE:Lcom/layar/provider/LayerAlias; = null

.field public static final enum SPOT_COLOR:Lcom/layar/provider/LayerAlias; = null

.field public static final enum STATUS:Lcom/layar/provider/LayerAlias; = null

.field public static final TABLE:Ljava/lang/String; = "layers"

.field private static final TAG:Ljava/lang/String;

.field public static final enum TEXT_COLOR:Lcom/layar/provider/LayerAlias;

.field public static final enum TITLE:Lcom/layar/provider/LayerAlias;

.field public static final enum TITLE_COLOR:Lcom/layar/provider/LayerAlias;

.field public static final enum TYPE:Lcom/layar/provider/LayerAlias;

.field public static final enum _ID:Lcom/layar/provider/LayerAlias;


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

    .line 17
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "_ID"

    const-string v2, "_id"

    const-string v3, "layers._id"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->_ID:Lcom/layar/provider/LayerAlias;

    .line 18
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "NAME"

    const-string v2, "name"

    const-string v3, "layers.name"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    .line 19
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "TYPE"

    const-string v2, "layerType"

    const-string v3, "layers.layerType"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->TYPE:Lcom/layar/provider/LayerAlias;

    .line 20
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "TITLE"

    const-string v2, "title"

    const-string v3, "layers.title"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->TITLE:Lcom/layar/provider/LayerAlias;

    .line 21
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "PUBLISHER"

    const-string v2, "publisher"

    const-string v3, "layers.publisher"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->PUBLISHER:Lcom/layar/provider/LayerAlias;

    .line 22
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "SHORT_DESCRIPTION"

    const/4 v2, 0x5

    const-string v3, "shortDescription"

    const-string v4, "layers.shortDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    .line 23
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "DETAIL_DESCRIPTION"

    const/4 v2, 0x6

    const-string v3, "detailDescription"

    const-string v4, "layers.detailDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    .line 24
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "BANNER_BG_COLOR"

    const/4 v2, 0x7

    const-string v3, "bannerBgColor"

    const-string v4, "layers.bannerBgColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/LayerAlias;

    .line 25
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "BANNER_TXT_COLOR"

    const/16 v2, 0x8

    const-string v3, "bannerTxtColor"

    const-string v4, "layers.bannerTxtColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/LayerAlias;

    .line 26
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "HAS_BANNER_ICON"

    const/16 v2, 0x9

    const-string v3, "hasBannerIcon"

    const-string v4, "layers.hasBannerIcon"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/LayerAlias;

    .line 27
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "INNER_COLOR"

    const/16 v2, 0xa

    const-string v3, "innerColor"

    const-string v4, "layers.innerColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->INNER_COLOR:Lcom/layar/provider/LayerAlias;

    .line 28
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "MIDDLE_COLOR"

    const/16 v2, 0xb

    const-string v3, "middleColor"

    const-string v4, "layers.middleColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/LayerAlias;

    .line 29
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "OUTER_COLOR"

    const/16 v2, 0xc

    const-string v3, "outerColor"

    const-string v4, "layers.outerColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->OUTER_COLOR:Lcom/layar/provider/LayerAlias;

    .line 30
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "SPOT_COLOR"

    const/16 v2, 0xd

    const-string v3, "spotColor"

    const-string v4, "layers.spotColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->SPOT_COLOR:Lcom/layar/provider/LayerAlias;

    .line 31
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "TITLE_COLOR"

    const/16 v2, 0xe

    const-string v3, "titleColor"

    const-string v4, "layers.titleColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->TITLE_COLOR:Lcom/layar/provider/LayerAlias;

    .line 32
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "TEXT_COLOR"

    const/16 v2, 0xf

    const-string v3, "textColor"

    const-string v4, "layers.textColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->TEXT_COLOR:Lcom/layar/provider/LayerAlias;

    .line 33
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "BIW_BG_COLOR"

    const/16 v2, 0x10

    const-string v3, "biwBgColor"

    const-string v4, "layers.biwBgColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/LayerAlias;

    .line 34
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "HAS_BIW_BG"

    const/16 v2, 0x11

    const-string v3, "hasBiwBG"

    const-string v4, "layers.hasBiwBG"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->HAS_BIW_BG:Lcom/layar/provider/LayerAlias;

    .line 35
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "STATUS"

    const/16 v2, 0x12

    const-string v3, "status"

    const-string v4, "layers.status"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->STATUS:Lcom/layar/provider/LayerAlias;

    .line 36
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "MODIFIED"

    const/16 v2, 0x13

    const-string v3, "modified"

    const-string v4, "layers.modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->MODIFIED:Lcom/layar/provider/LayerAlias;

    .line 37
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "SHOW_FILTER_ON_LAUNCH"

    const/16 v2, 0x14

    const-string v3, "showFilterOnLaunch"

    const-string v4, "layers.showFilterOnLaunch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/LayerAlias;

    .line 38
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "COUNTRY_CODE"

    const/16 v2, 0x15

    const-string v3, "countryCode"

    const-string v4, "layers.countryCode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->COUNTRY_CODE:Lcom/layar/provider/LayerAlias;

    .line 39
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "FILTERS"

    const/16 v2, 0x16

    const-string v3, "filters"

    const-string v4, "layers.filters"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->FILTERS:Lcom/layar/provider/LayerAlias;

    .line 40
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "CUSTOM_CIWS"

    const/16 v2, 0x17

    const-string v3, "customCiws"

    const-string v4, "layers.customCiws"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/LayerAlias;

    .line 41
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "SHOW_TAKE_ME_THERE"

    const/16 v2, 0x18

    const-string v3, "showTakeMeThere"

    const-string v4, "layers.showTakeMeThere"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->SHOW_TAKE_ME_THERE:Lcom/layar/provider/LayerAlias;

    .line 42
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "REPLACE_FILTERS"

    const/16 v2, 0x19

    const-string v3, "replaceFilters"

    const-string v4, "layers.replaceFilters"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->REPLACE_FILTERS:Lcom/layar/provider/LayerAlias;

    .line 43
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "AUTH_REQUIRED"

    const/16 v2, 0x1a

    const-string v3, "authRequired"

    const-string v4, "layers.authRequired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/LayerAlias;

    .line 44
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "AUTH_DESCRIPTION"

    const/16 v2, 0x1b

    const-string v3, "authDescription"

    const-string v4, "layers.authDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->AUTH_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    .line 45
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "AUTH_LABEL"

    const/16 v2, 0x1c

    const-string v3, "authLabel"

    const-string v4, "layers.authLabel"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->AUTH_LABEL:Lcom/layar/provider/LayerAlias;

    .line 46
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "AUTH_URL"

    const/16 v2, 0x1d

    const-string v3, "authURL"

    const-string v4, "layers.authURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->AUTH_URL:Lcom/layar/provider/LayerAlias;

    .line 47
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "AUTH_PARAMS"

    const/16 v2, 0x1e

    const-string v3, "authParams"

    const-string v4, "layers.authParams"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->AUTH_PARAMS:Lcom/layar/provider/LayerAlias;

    .line 48
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "POI_DOMAIN_URL"

    const/16 v2, 0x1f

    const-string v3, "poiDomainURL"

    const-string v4, "layers.poiDomainURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/LayerAlias;

    .line 49
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "PREMIUM_PRICE"

    const/16 v2, 0x20

    const-string v3, "premium_price"

    const-string v4, "layers.premium_price"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    .line 50
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "PREMIUM_CCY"

    const/16 v2, 0x21

    const-string v3, "premium_ccy"

    const-string v4, "layers.premium_ccy"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->PREMIUM_CCY:Lcom/layar/provider/LayerAlias;

    .line 51
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "PREMIUM_PURCHASED"

    const/16 v2, 0x22

    const-string v3, "premium_purchased"

    const-string v4, "layers.premium_purchased"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    .line 52
    new-instance v0, Lcom/layar/provider/LayerAlias;

    const-string v1, "LINK_URL"

    const/16 v2, 0x23

    const-string v3, "link_url"

    const-string v4, "layers.link_url"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/LayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/LayerAlias;->LINK_URL:Lcom/layar/provider/LayerAlias;

    const/16 v0, 0x24

    new-array v0, v0, [Lcom/layar/provider/LayerAlias;

    sget-object v1, Lcom/layar/provider/LayerAlias;->_ID:Lcom/layar/provider/LayerAlias;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layar/provider/LayerAlias;->TYPE:Lcom/layar/provider/LayerAlias;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layar/provider/LayerAlias;->TITLE:Lcom/layar/provider/LayerAlias;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layar/provider/LayerAlias;->PUBLISHER:Lcom/layar/provider/LayerAlias;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/layar/provider/LayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layar/provider/LayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layar/provider/LayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layar/provider/LayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layar/provider/LayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layar/provider/LayerAlias;->INNER_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layar/provider/LayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layar/provider/LayerAlias;->OUTER_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layar/provider/LayerAlias;->SPOT_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layar/provider/LayerAlias;->TITLE_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layar/provider/LayerAlias;->TEXT_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layar/provider/LayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layar/provider/LayerAlias;->HAS_BIW_BG:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layar/provider/LayerAlias;->STATUS:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layar/provider/LayerAlias;->MODIFIED:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/layar/provider/LayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/layar/provider/LayerAlias;->COUNTRY_CODE:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/layar/provider/LayerAlias;->FILTERS:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/layar/provider/LayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/layar/provider/LayerAlias;->SHOW_TAKE_ME_THERE:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/layar/provider/LayerAlias;->REPLACE_FILTERS:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_LABEL:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_URL:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_PARAMS:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/layar/provider/LayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_CCY:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/layar/provider/LayerAlias;->LINK_URL:Lcom/layar/provider/LayerAlias;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layar/provider/LayerAlias;->ENUM$VALUES:[Lcom/layar/provider/LayerAlias;

    .line 66
    const-class v0, Lcom/layar/provider/LayerAlias;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/provider/LayerAlias;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "column"
    .parameter "fullColumn"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/layar/provider/LayerAlias;->fullColumn:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static aliases()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 142
    sget-object v2, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 143
    sget-object v2, Lcom/layar/provider/LayerAlias;->TYPE:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 144
    sget-object v2, Lcom/layar/provider/LayerAlias;->TITLE:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 145
    sget-object v2, Lcom/layar/provider/LayerAlias;->PUBLISHER:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 146
    sget-object v2, Lcom/layar/provider/LayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 147
    sget-object v2, Lcom/layar/provider/LayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 148
    sget-object v2, Lcom/layar/provider/LayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 149
    sget-object v2, Lcom/layar/provider/LayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 150
    sget-object v2, Lcom/layar/provider/LayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 151
    sget-object v2, Lcom/layar/provider/LayerAlias;->INNER_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 152
    sget-object v2, Lcom/layar/provider/LayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 153
    sget-object v2, Lcom/layar/provider/LayerAlias;->OUTER_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 154
    sget-object v2, Lcom/layar/provider/LayerAlias;->SPOT_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 155
    sget-object v2, Lcom/layar/provider/LayerAlias;->TITLE_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 156
    sget-object v2, Lcom/layar/provider/LayerAlias;->TEXT_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 157
    sget-object v2, Lcom/layar/provider/LayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 158
    sget-object v2, Lcom/layar/provider/LayerAlias;->HAS_BIW_BG:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 159
    sget-object v2, Lcom/layar/provider/LayerAlias;->STATUS:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 160
    sget-object v2, Lcom/layar/provider/LayerAlias;->MODIFIED:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 161
    sget-object v2, Lcom/layar/provider/LayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 162
    sget-object v2, Lcom/layar/provider/LayerAlias;->COUNTRY_CODE:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 163
    sget-object v2, Lcom/layar/provider/LayerAlias;->FILTERS:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 164
    sget-object v2, Lcom/layar/provider/LayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 165
    sget-object v2, Lcom/layar/provider/LayerAlias;->SHOW_TAKE_ME_THERE:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 166
    sget-object v2, Lcom/layar/provider/LayerAlias;->REPLACE_FILTERS:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 167
    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 168
    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_LABEL:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 169
    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 170
    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_URL:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 171
    sget-object v2, Lcom/layar/provider/LayerAlias;->AUTH_PARAMS:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 172
    sget-object v2, Lcom/layar/provider/LayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 173
    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 174
    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_CCY:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 175
    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 176
    sget-object v2, Lcom/layar/provider/LayerAlias;->LINK_URL:Lcom/layar/provider/LayerAlias;

    invoke-virtual {v2}, Lcom/layar/provider/LayerAlias;->alias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    return-object v0
.end method

.method public static createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;
    .locals 13
    .parameter "c"

    .prologue
    .line 188
    new-instance v6, Lcom/layar/data/layer/Layer20;

    invoke-direct {v6}, Lcom/layar/data/layer/Layer20;-><init>()V

    .line 189
    .local v6, result:Lcom/layar/data/layer/Layer20;
    sget-object v8, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 190
    sget-object v8, Lcom/layar/provider/LayerAlias;->TYPE:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->layerType:I

    .line 191
    sget-object v8, Lcom/layar/provider/LayerAlias;->TITLE:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    .line 192
    sget-object v8, Lcom/layar/provider/LayerAlias;->PUBLISHER:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    .line 193
    sget-object v8, Lcom/layar/provider/LayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->shortDescription:Ljava/lang/String;

    .line 194
    sget-object v8, Lcom/layar/provider/LayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->detailDescription:Ljava/lang/String;

    .line 196
    sget-object v8, Lcom/layar/provider/LayerAlias;->LINK_URL:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->linkUrl:Ljava/lang/String;

    .line 198
    sget-object v8, Lcom/layar/provider/LayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    .line 199
    sget-object v8, Lcom/layar/provider/LayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    .line 200
    sget-object v8, Lcom/layar/provider/LayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->hasBannerIcon:Z

    .line 202
    sget-object v8, Lcom/layar/provider/LayerAlias;->INNER_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->innerColor:I

    .line 203
    sget-object v8, Lcom/layar/provider/LayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->middleColor:I

    .line 204
    sget-object v8, Lcom/layar/provider/LayerAlias;->OUTER_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->outerColor:I

    .line 205
    sget-object v8, Lcom/layar/provider/LayerAlias;->SPOT_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->spotColor:I

    .line 207
    sget-object v8, Lcom/layar/provider/LayerAlias;->TITLE_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->titleColor:I

    .line 208
    sget-object v8, Lcom/layar/provider/LayerAlias;->TEXT_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->textColor:I

    .line 209
    sget-object v8, Lcom/layar/provider/LayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 210
    sget-object v8, Lcom/layar/provider/LayerAlias;->HAS_BIW_BG:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->hasBiwBg:Z

    .line 212
    sget-object v8, Lcom/layar/provider/LayerAlias;->STATUS:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/layar/data/layer/Layer20;->status:I

    .line 213
    sget-object v8, Lcom/layar/provider/LayerAlias;->MODIFIED:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/layar/data/layer/Layer20;->modified:J

    .line 214
    sget-object v8, Lcom/layar/provider/LayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    .line 215
    sget-object v8, Lcom/layar/provider/LayerAlias;->COUNTRY_CODE:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->countryCode:Ljava/lang/String;

    .line 218
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    sget-object v8, Lcom/layar/provider/LayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, ciwJson:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/layar/data/layer/Layer20;->parseCustomCIWs(Lorg/json/JSONArray;)[[Z

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->custom_ciws:[[Z

    .line 221
    new-instance v3, Lorg/json/JSONArray;

    sget-object v8, Lcom/layar/provider/LayerAlias;->FILTERS:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, filterJson:Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/layar/data/layer/Layer20;->parseFilters(Lorg/json/JSONArray;)[Lcom/layar/data/Filter;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, hasRangeSlider:Z
    iget-object v8, v6, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v9, :cond_2

    .line 241
    if-nez v4, :cond_0

    .line 242
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->supportsFlexibleRadius:Z

    .line 243
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v0           #ciwJson:Lorg/json/JSONArray;
    .end local v3           #filterJson:Lorg/json/JSONArray;
    .end local v4           #hasRangeSlider:Z
    :cond_0
    :goto_1
    sget-object v8, Lcom/layar/provider/LayerAlias;->SHOW_TAKE_ME_THERE:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    .line 252
    sget-object v8, Lcom/layar/provider/LayerAlias;->REPLACE_FILTERS:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    .line 253
    sget-object v8, Lcom/layar/provider/LayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/layar/data/layer/Layer20;->authRequired:Z

    .line 254
    sget-object v8, Lcom/layar/provider/LayerAlias;->AUTH_LABEL:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    .line 255
    sget-object v8, Lcom/layar/provider/LayerAlias;->AUTH_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->authDescription:Ljava/lang/String;

    .line 256
    sget-object v8, Lcom/layar/provider/LayerAlias;->AUTH_URL:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    .line 257
    sget-object v8, Lcom/layar/provider/LayerAlias;->AUTH_PARAMS:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->authParams:Ljava/lang/String;

    .line 258
    sget-object v8, Lcom/layar/provider/LayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    .line 260
    sget-object v8, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    iget-object v8, v8, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, premium_price:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 262
    new-instance v8, Lcom/layar/data/layer/Layer20$Premium;

    invoke-direct {v8}, Lcom/layar/data/layer/Layer20$Premium;-><init>()V

    iput-object v8, v6, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    .line 263
    iget-object v8, v6, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iput-object v5, v8, Lcom/layar/data/layer/Layer20$Premium;->price:Ljava/lang/String;

    .line 264
    iget-object v8, v6, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    sget-object v9, Lcom/layar/provider/LayerAlias;->PREMIUM_CCY:Lcom/layar/provider/LayerAlias;

    iget-object v9, v9, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/layar/data/layer/Layer20$Premium;->currency:Ljava/lang/String;

    .line 265
    iget-object v8, v6, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    sget-object v9, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    iget-object v9, v9, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/layar/provider/ResolverHelper;->getColumnBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    .line 268
    :cond_1
    return-object v6

    .line 225
    .end local v5           #premium_price:Ljava/lang/String;
    .restart local v0       #ciwJson:Lorg/json/JSONArray;
    .restart local v3       #filterJson:Lorg/json/JSONArray;
    .restart local v4       #hasRangeSlider:Z
    :cond_2
    :try_start_1
    aget-object v1, v8, v10

    .line 226
    .local v1, filter:Lcom/layar/data/Filter;
    iget-object v2, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .line 227
    .local v2, filterDetails:Lorg/json/JSONObject;
    if-nez v2, :cond_4

    .line 225
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 228
    :cond_4
    const-string v11, "type"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, type:Ljava/lang/String;
    const-string v11, "RANGE_SLIDER"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 230
    const/4 v4, 0x1

    .line 231
    const-string v11, "value"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ""

    const-string v12, "value"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 232
    const-string v11, "value"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/layar/data/layer/Layer20;->scope:I

    goto :goto_2

    .line 245
    .end local v0           #ciwJson:Lorg/json/JSONArray;
    .end local v1           #filter:Lcom/layar/data/Filter;
    .end local v2           #filterDetails:Lorg/json/JSONObject;
    .end local v3           #filterJson:Lorg/json/JSONArray;
    .end local v4           #hasRangeSlider:Z
    .end local v7           #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 234
    .restart local v0       #ciwJson:Lorg/json/JSONArray;
    .restart local v1       #filter:Lcom/layar/data/Filter;
    .restart local v2       #filterDetails:Lorg/json/JSONObject;
    .restart local v3       #filterJson:Lorg/json/JSONArray;
    .restart local v4       #hasRangeSlider:Z
    .restart local v7       #type:Ljava/lang/String;
    :cond_5
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/layar/data/layer/Layer20;->supportsFlexibleRadius:Z

    .line 235
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    .line 236
    const-string v11, "minvalue"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/layar/data/layer/Layer20;->scope:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 247
    .end local v0           #ciwJson:Lorg/json/JSONArray;
    .end local v1           #filter:Lcom/layar/data/Filter;
    .end local v2           #filterDetails:Lorg/json/JSONObject;
    .end local v3           #filterJson:Lorg/json/JSONArray;
    .end local v4           #hasRangeSlider:Z
    .end local v7           #type:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method

.method public static generateValues(Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    .line 82
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, result:Landroid/content/ContentValues;
    sget-object v1, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/layar/provider/LayerAlias;->TYPE:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->layerType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    sget-object v1, Lcom/layar/provider/LayerAlias;->TITLE:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/layar/provider/LayerAlias;->PUBLISHER:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/layar/provider/LayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/layar/provider/LayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->detailDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/layar/provider/LayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    sget-object v1, Lcom/layar/provider/LayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    sget-object v1, Lcom/layar/provider/LayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20;->hasBannerIcon:Z

    if-eqz v2, :cond_1

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    sget-object v1, Lcom/layar/provider/LayerAlias;->INNER_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->innerColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    sget-object v1, Lcom/layar/provider/LayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->middleColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    sget-object v1, Lcom/layar/provider/LayerAlias;->OUTER_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->outerColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    sget-object v1, Lcom/layar/provider/LayerAlias;->SPOT_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->spotColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    sget-object v1, Lcom/layar/provider/LayerAlias;->TITLE_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->titleColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    sget-object v1, Lcom/layar/provider/LayerAlias;->TEXT_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->textColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    sget-object v1, Lcom/layar/provider/LayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    sget-object v1, Lcom/layar/provider/LayerAlias;->HAS_BIW_BG:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20;->hasBiwBg:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    sget-object v1, Lcom/layar/provider/LayerAlias;->STATUS:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget v2, p0, Lcom/layar/data/layer/Layer20;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    sget-object v1, Lcom/layar/provider/LayerAlias;->MODIFIED:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-wide v2, p0, Lcom/layar/data/layer/Layer20;->modified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    sget-object v1, Lcom/layar/provider/LayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    if-eqz v2, :cond_3

    move v2, v5

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    sget-object v1, Lcom/layar/provider/LayerAlias;->COUNTRY_CODE:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_0
    sget-object v1, Lcom/layar/provider/LayerAlias;->FILTERS:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/layar/data/layer/Layer20;->getFiltersJsonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/layar/provider/LayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/layar/data/layer/Layer20;->getCustomCIWsJsonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_4
    iget-object v1, p0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v1, :cond_5

    .line 117
    sget-object v1, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20$Premium;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/layar/provider/LayerAlias;->PREMIUM_CCY:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20$Premium;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v2, v2, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-eqz v2, :cond_4

    move v2, v5

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    :goto_6
    sget-object v1, Lcom/layar/provider/LayerAlias;->SHOW_TAKE_ME_THERE:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    if-eqz v2, :cond_6

    move v2, v5

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    sget-object v1, Lcom/layar/provider/LayerAlias;->REPLACE_FILTERS:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    if-eqz v2, :cond_7

    move v2, v5

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    sget-object v1, Lcom/layar/provider/LayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/layar/data/layer/Layer20;->authRequired:Z

    if-eqz v2, :cond_8

    move v2, v5

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    sget-object v1, Lcom/layar/provider/LayerAlias;->AUTH_LABEL:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/layar/provider/LayerAlias;->AUTH_DESCRIPTION:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->authDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/layar/provider/LayerAlias;->AUTH_URL:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/layar/provider/LayerAlias;->AUTH_PARAMS:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->authParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/layar/provider/LayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/layar/provider/LayerAlias;->LINK_URL:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 137
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 92
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 102
    goto/16 :goto_2

    :cond_3
    move v2, v4

    .line 106
    goto/16 :goto_3

    :cond_4
    move v2, v4

    .line 119
    goto :goto_5

    .line 121
    :cond_5
    sget-object v1, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/layar/provider/LayerAlias;->PREMIUM_CCY:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    move v2, v4

    .line 126
    goto/16 :goto_7

    :cond_7
    move v2, v4

    .line 127
    goto :goto_8

    :cond_8
    move v2, v4

    .line 128
    goto :goto_9

    .line 112
    :catch_0
    move-exception v1

    goto/16 :goto_4
.end method

.method public static hasValue(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-static {}, Lcom/layar/provider/LayerAlias;->values()[Lcom/layar/provider/LayerAlias;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-lt v3, v2, :cond_0

    move v1, v5

    .line 75
    :goto_1
    return v1

    .line 71
    :cond_0
    aget-object v0, v1, v3

    .line 72
    .local v0, item:Lcom/layar/provider/LayerAlias;
    invoke-virtual {v0}, Lcom/layar/provider/LayerAlias;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const/4 v1, 0x1

    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static selection(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;
    .locals 1
    .parameter "layer"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/layar/provider/LayerAlias;->selection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LayerAlias;->fullColumn:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layar/provider/LayerAlias;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/provider/LayerAlias;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/provider/LayerAlias;

    return-object p0
.end method

.method public static values()[Lcom/layar/provider/LayerAlias;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/provider/LayerAlias;->ENUM$VALUES:[Lcom/layar/provider/LayerAlias;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/provider/LayerAlias;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/provider/LayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
