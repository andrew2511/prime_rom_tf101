.class public final enum Lcom/layar/provider/NewLayerAlias;
.super Ljava/lang/Enum;
.source "NewLayerAlias.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/provider/NewLayerAlias;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTH_LABEL:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum AUTH_REQUIRED:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum AUTH_URL:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum BANNER_BG_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum BANNER_TXT_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum BIW_BG_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum COUNTRY_CODE:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum CUSTOM_CIWS:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum DETAIL_DESCRIPTION:Lcom/layar/provider/NewLayerAlias; = null

.field private static final synthetic ENUM$VALUES:[Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum FILTERS:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum HAS_BANNER_ICON:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum HAS_BIW_BG:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum INNER_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum LAYER_NAME:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum LINK_URL:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum MIDDLE_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum MODIFIED:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum NAME:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum OUTER_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum POI_DOMAIN_URL:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum PREMIUM_CCY:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum PREMIUM_PRICE:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum PREMIUM_PURCHASED:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum PUBLISHER:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum SHORT_DESCRIPTION:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum SPOT_COLOR:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum STATUS:Lcom/layar/provider/NewLayerAlias; = null

.field public static final enum SUBSECTION:Lcom/layar/provider/NewLayerAlias; = null

.field public static final TABLE:Ljava/lang/String; = "new_layers"

.field private static final TAG:Ljava/lang/String;

.field public static final enum TEXT_COLOR:Lcom/layar/provider/NewLayerAlias;

.field public static final enum TITLE:Lcom/layar/provider/NewLayerAlias;

.field public static final enum TITLE_COLOR:Lcom/layar/provider/NewLayerAlias;

.field public static final enum TYPE:Lcom/layar/provider/NewLayerAlias;

.field public static final enum _ID:Lcom/layar/provider/NewLayerAlias;


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

    .line 12
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "_ID"

    const-string v2, "_id"

    const-string v3, "new_layers._id"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->_ID:Lcom/layar/provider/NewLayerAlias;

    .line 13
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "NAME"

    const-string v2, "name"

    const-string v3, "new_layers.name"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->NAME:Lcom/layar/provider/NewLayerAlias;

    .line 15
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "SUBSECTION"

    const-string v2, "subsection"

    const-string v3, "new_layers.subsection"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->SUBSECTION:Lcom/layar/provider/NewLayerAlias;

    .line 17
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "LAYER_NAME"

    const-string v2, "name"

    const-string v3, "layers.name"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->LAYER_NAME:Lcom/layar/provider/NewLayerAlias;

    .line 18
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "TYPE"

    const-string v2, "layerType"

    const-string v3, "layers.layerType"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->TYPE:Lcom/layar/provider/NewLayerAlias;

    .line 19
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "TITLE"

    const/4 v2, 0x5

    const-string v3, "title"

    const-string v4, "layers.title"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->TITLE:Lcom/layar/provider/NewLayerAlias;

    .line 20
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "PUBLISHER"

    const/4 v2, 0x6

    const-string v3, "publisher"

    const-string v4, "layers.publisher"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->PUBLISHER:Lcom/layar/provider/NewLayerAlias;

    .line 21
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "SHORT_DESCRIPTION"

    const/4 v2, 0x7

    const-string v3, "shortDescription"

    const-string v4, "layers.shortDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/NewLayerAlias;

    .line 22
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "DETAIL_DESCRIPTION"

    const/16 v2, 0x8

    const-string v3, "detailDescription"

    const-string v4, "layers.detailDescription"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/NewLayerAlias;

    .line 23
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "BANNER_BG_COLOR"

    const/16 v2, 0x9

    const-string v3, "bannerBgColor"

    const-string v4, "layers.bannerBgColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 24
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "BANNER_TXT_COLOR"

    const/16 v2, 0xa

    const-string v3, "bannerTxtColor"

    const-string v4, "layers.bannerTxtColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 25
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "HAS_BANNER_ICON"

    const/16 v2, 0xb

    const-string v3, "hasBannerIcon"

    const-string v4, "layers.hasBannerIcon"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/NewLayerAlias;

    .line 26
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "INNER_COLOR"

    const/16 v2, 0xc

    const-string v3, "innerColor"

    const-string v4, "layers.innerColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->INNER_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 27
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "MIDDLE_COLOR"

    const/16 v2, 0xd

    const-string v3, "middleColor"

    const-string v4, "layers.middleColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 28
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "OUTER_COLOR"

    const/16 v2, 0xe

    const-string v3, "outerColor"

    const-string v4, "layers.outerColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->OUTER_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 29
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "SPOT_COLOR"

    const/16 v2, 0xf

    const-string v3, "spotColor"

    const-string v4, "layers.spotColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->SPOT_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 30
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "TITLE_COLOR"

    const/16 v2, 0x10

    const-string v3, "titleColor"

    const-string v4, "layers.titleColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->TITLE_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 31
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "TEXT_COLOR"

    const/16 v2, 0x11

    const-string v3, "textColor"

    const-string v4, "layers.textColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->TEXT_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 32
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "BIW_BG_COLOR"

    const/16 v2, 0x12

    const-string v3, "biwBgColor"

    const-string v4, "layers.biwBgColor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/NewLayerAlias;

    .line 33
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "HAS_BIW_BG"

    const/16 v2, 0x13

    const-string v3, "hasBiwBG"

    const-string v4, "layers.hasBiwBG"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->HAS_BIW_BG:Lcom/layar/provider/NewLayerAlias;

    .line 34
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "STATUS"

    const/16 v2, 0x14

    const-string v3, "status"

    const-string v4, "layers.status"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->STATUS:Lcom/layar/provider/NewLayerAlias;

    .line 35
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "MODIFIED"

    const/16 v2, 0x15

    const-string v3, "modified"

    const-string v4, "layers.modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->MODIFIED:Lcom/layar/provider/NewLayerAlias;

    .line 36
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "SHOW_FILTER_ON_LAUNCH"

    const/16 v2, 0x16

    const-string v3, "showFilterOnLaunch"

    const-string v4, "layers.showFilterOnLaunch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/NewLayerAlias;

    .line 37
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "COUNTRY_CODE"

    const/16 v2, 0x17

    const-string v3, "countryCode"

    const-string v4, "layers.countryCode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->COUNTRY_CODE:Lcom/layar/provider/NewLayerAlias;

    .line 38
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "FILTERS"

    const/16 v2, 0x18

    const-string v3, "filters"

    const-string v4, "layers.filters"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->FILTERS:Lcom/layar/provider/NewLayerAlias;

    .line 39
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "CUSTOM_CIWS"

    const/16 v2, 0x19

    const-string v3, "customCiws"

    const-string v4, "layers.customCiws"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/NewLayerAlias;

    .line 40
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "AUTH_REQUIRED"

    const/16 v2, 0x1a

    const-string v3, "authRequired"

    const-string v4, "layers.authRequired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/NewLayerAlias;

    .line 41
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "AUTH_LABEL"

    const/16 v2, 0x1b

    const-string v3, "authLabel"

    const-string v4, "layers.authLabel"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->AUTH_LABEL:Lcom/layar/provider/NewLayerAlias;

    .line 42
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "AUTH_URL"

    const/16 v2, 0x1c

    const-string v3, "authURL"

    const-string v4, "layers.authURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->AUTH_URL:Lcom/layar/provider/NewLayerAlias;

    .line 43
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "POI_DOMAIN_URL"

    const/16 v2, 0x1d

    const-string v3, "poiDomainURL"

    const-string v4, "layers.poiDomainURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/NewLayerAlias;

    .line 44
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "PREMIUM_PRICE"

    const/16 v2, 0x1e

    const-string v3, "premium_price"

    const-string v4, "layers.premium_price"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/NewLayerAlias;

    .line 45
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "PREMIUM_CCY"

    const/16 v2, 0x1f

    const-string v3, "premium_ccy"

    const-string v4, "layers.premium_ccy"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->PREMIUM_CCY:Lcom/layar/provider/NewLayerAlias;

    .line 46
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "PREMIUM_PURCHASED"

    const/16 v2, 0x20

    const-string v3, "premium_purchased"

    const-string v4, "layers.premium_purchased"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/NewLayerAlias;

    .line 47
    new-instance v0, Lcom/layar/provider/NewLayerAlias;

    const-string v1, "LINK_URL"

    const/16 v2, 0x21

    const-string v3, "link_url"

    const-string v4, "layers.link_url"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/provider/NewLayerAlias;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->LINK_URL:Lcom/layar/provider/NewLayerAlias;

    const/16 v0, 0x22

    new-array v0, v0, [Lcom/layar/provider/NewLayerAlias;

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->_ID:Lcom/layar/provider/NewLayerAlias;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->NAME:Lcom/layar/provider/NewLayerAlias;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->SUBSECTION:Lcom/layar/provider/NewLayerAlias;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->LAYER_NAME:Lcom/layar/provider/NewLayerAlias;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->TYPE:Lcom/layar/provider/NewLayerAlias;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->TITLE:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->PUBLISHER:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->SHORT_DESCRIPTION:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->DETAIL_DESCRIPTION:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->BANNER_BG_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->BANNER_TXT_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->HAS_BANNER_ICON:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->INNER_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->MIDDLE_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->OUTER_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->SPOT_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->TITLE_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->TEXT_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->BIW_BG_COLOR:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->HAS_BIW_BG:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->STATUS:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->MODIFIED:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->SHOW_FILTER_ON_LAUNCH:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->COUNTRY_CODE:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->FILTERS:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->CUSTOM_CIWS:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->AUTH_REQUIRED:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->AUTH_LABEL:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->AUTH_URL:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->POI_DOMAIN_URL:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->PREMIUM_CCY:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/layar/provider/NewLayerAlias;->LINK_URL:Lcom/layar/provider/NewLayerAlias;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->ENUM$VALUES:[Lcom/layar/provider/NewLayerAlias;

    .line 61
    const-class v0, Lcom/layar/provider/NewLayerAlias;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/provider/NewLayerAlias;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "column"
    .parameter "fullColumn"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/layar/provider/NewLayerAlias;->column:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static aliases()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/layar/provider/LayerAlias;->aliases()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter "c"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/layar/provider/LayerAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    return-object v0
.end method

.method public static generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "item"
    .parameter "subsection"

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 77
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v0, result:Landroid/content/ContentValues;
    sget-object v1, Lcom/layar/provider/NewLayerAlias;->NAME:Lcom/layar/provider/NewLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/NewLayerAlias;->column:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/layar/provider/NewLayerAlias;->SUBSECTION:Lcom/layar/provider/NewLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/NewLayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 80
    goto :goto_0
.end method

.method public static hasValue(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-static {}, Lcom/layar/provider/NewLayerAlias;->values()[Lcom/layar/provider/NewLayerAlias;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-lt v3, v2, :cond_0

    move v1, v5

    .line 70
    :goto_1
    return v1

    .line 66
    :cond_0
    aget-object v0, v1, v3

    .line 67
    .local v0, item:Lcom/layar/provider/NewLayerAlias;
    invoke-virtual {v0}, Lcom/layar/provider/NewLayerAlias;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static selection(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;
    .locals 2
    .parameter "item"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->NAME:Lcom/layar/provider/NewLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "layerName"
    .parameter "subsection"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->NAME:Lcom/layar/provider/NewLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/layar/provider/NewLayerAlias;->SUBSECTION:Lcom/layar/provider/NewLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layar/provider/NewLayerAlias;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/provider/NewLayerAlias;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/provider/NewLayerAlias;

    return-object p0
.end method

.method public static values()[Lcom/layar/provider/NewLayerAlias;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/provider/NewLayerAlias;->ENUM$VALUES:[Lcom/layar/provider/NewLayerAlias;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/provider/NewLayerAlias;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/provider/NewLayerAlias;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
