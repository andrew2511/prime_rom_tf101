.class public Lcom/asus/reader/vibe2/VibeAPIBase;
.super Ljava/lang/Object;
.source "VibeAPIBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/vibe2/VibeAPIBase$X509UnTrustManager;
    }
.end annotation


# static fields
.field public static AUTH_FAIL:Ljava/lang/String;

.field public static NO_RESP:Ljava/lang/String;

.field static Orderlink:Ljava/lang/String;

.field public static SERVER_ERR:Ljava/lang/String;

.field static TAG:Ljava/lang/String;

.field public static contentrelay:Ljava/lang/String;

.field public static filerelay:Ljava/lang/String;

.field public static inforelay:Ljava/lang/String;

.field public static locale:Ljava/lang/String;

.field static m_strClientUrl:Ljava/lang/String;

.field static m_strServiceGatewayUrl:Ljava/lang/String;

.field public static mediarelay:Ljava/lang/String;

.field public static region:Ljava/lang/String;

.field public static rssrelay:Ljava/lang/String;

.field public static serverurl:Ljava/lang/String;

.field public static webrelay:Ljava/lang/String;

.field private static x_application:Ljava/lang/String;

.field private static x_manufact:Ljava/lang/String;

.field private static x_os:Ljava/lang/String;

.field private static x_preview:Ljava/lang/String;

.field private static x_product:Ljava/lang/String;

.field private static x_spkey:Ljava/lang/String;

.field private static x_spname:Ljava/lang/String;

.field private static x_token:Ljava/lang/String;

.field private static x_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "https://sp.yostore.net/member/requestservicegateway/"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->m_strServiceGatewayUrl:Ljava/lang/String;

    .line 50
    const-string v0, "http://s01.asusvibe.com/client/ipinfo/"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->m_strClientUrl:Ljava/lang/String;

    .line 51
    const-string v0, "ASUS@VIBE"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, "AuthenticationFail"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->AUTH_FAIL:Ljava/lang/String;

    .line 55
    const-string v0, "NoResponse"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->NO_RESP:Ljava/lang/String;

    .line 56
    const-string v0, "ServerError"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->SERVER_ERR:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->inforelay:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->rssrelay:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->filerelay:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->contentrelay:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->webrelay:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->mediarelay:Ljava/lang/String;

    .line 64
    const-string v0, "en_US"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->locale:Ljava/lang/String;

    .line 65
    const-string v0, "IFA"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->region:Ljava/lang/String;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->serverurl:Ljava/lang/String;

    .line 68
    const-string v0, "9"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_application:Ljava/lang/String;

    .line 69
    const-string v0, "1.0"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_version:Ljava/lang/String;

    .line 71
    const-string v0, "windows-xp"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_os:Ljava/lang/String;

    .line 72
    const-string v0, "asus"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_manufact:Ljava/lang/String;

    .line 74
    const-string v0, "T91"

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_product:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_token:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_spname:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_spkey:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->x_preview:Ljava/lang/String;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->Orderlink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    return-void
.end method

.method public static Authorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .parameter "CMSurl"
    .parameter "version_vibeauth"
    .parameter "appid"
    .parameter "type"
    .parameter "model"
    .parameter "osset"
    .parameter "username"
    .parameter "locale"
    .parameter "region"

    .prologue
    const/4 v5, 0x0

    .line 291
    if-nez p0, :cond_0

    move-object v3, v5

    .line 330
    :goto_0
    return-object v3

    .line 299
    :cond_0
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vibeauthresp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?><vibeauthreq Version=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"><clientappid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</clientappid><productname>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</productname><model>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</model><osset>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</osset><username>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</username><locale>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</locale><region>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</region></vibeauthreq>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, request:Ljava/lang/String;
    const/4 v0, 0x0

    .line 318
    .local v0, buf:[B
    :try_start_0
    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/asus/reader/vibe2/VibeAPIBase;->doPost4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 319
    if-nez v0, :cond_2

    move-object v3, v5

    .line 320
    goto/16 :goto_0

    .line 302
    .end local v0           #buf:[B
    .end local v2           #request:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vibeauthresp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 321
    .restart local v0       #buf:[B
    .restart local v2       #request:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v3, v0

    .line 330
    goto/16 :goto_0

    .line 324
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 325
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 326
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 327
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method public static LoadPickedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 12
    .parameter "CMSurl"
    .parameter "version_getcontentdetail"
    .parameter "username"
    .parameter "locale"
    .parameter "region"
    .parameter "spcontentid"
    .parameter "maincategory"
    .parameter "maincategoryid"
    .parameter "subcategoryid"
    .parameter "headermode"

    .prologue
    .line 490
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 492
    :cond_0
    const/4 p0, 0x0

    .line 531
    .end local p0
    .end local p1
    .end local p2
    .end local p5
    :goto_0
    return-object p0

    .line 498
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p5
    :cond_1
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v2, "getcontentdetail/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 503
    .restart local p0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?><getcontentdetailrequest Version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v2, "\"><username>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</username><locale>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</locale><region>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</region><spcontentid>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</spcontentid><maincategory>"

    .end local p5
    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</maincategory></getcontentdetailrequest>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, request:Ljava/lang/String;
    const/4 p1, 0x0

    .line 518
    .local p1, buf:[B
    :try_start_0
    const-string v4, ""

    move-object v2, p0

    move/from16 v5, p9

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Lcom/asus/reader/vibe2/VibeAPIBase;->doPost3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 520
    .end local p1           #buf:[B
    .local p0, buf:[B
    if-nez p0, :cond_3

    .line 521
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 501
    .end local v3           #request:Ljava/lang/String;
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, version_getcontentdetail:Ljava/lang/String;
    .restart local p5
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #CMSurl:Ljava/lang/String;
    const-string v2, "getcontentdetail/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #CMSurl:Ljava/lang/String;
    goto/16 :goto_1

    .line 522
    .end local p1           #version_getcontentdetail:Ljava/lang/String;
    .end local p5
    .restart local v3       #request:Ljava/lang/String;
    .local p0, buf:[B
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    .end local p2
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 525
    :catch_0
    move-exception p1

    .line 526
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 527
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_1
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    .line 528
    .end local p2
    .local p1, e:Ljava/lang/NullPointerException;
    :goto_3
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 527
    .end local p1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception p1

    goto :goto_3

    .line 525
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_3
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    goto :goto_2
.end method

.method public static LoadPickedPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 10
    .parameter "CMSurl"
    .parameter "version_getpackage"
    .parameter "locale"
    .parameter "region"
    .parameter "spcontentid"
    .parameter "maincategory"
    .parameter "username"
    .parameter "maincategoryid"
    .parameter "subcategoryid"
    .parameter "headermode"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 591
    :cond_0
    const/4 p0, 0x0

    .line 634
    .end local p0
    .end local p1
    .end local p2
    .end local p4
    :goto_0
    return-object p0

    .line 598
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_1
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v0, "getpackages/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 603
    .restart local p0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?><getpackagerequest Version=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v0, "\"><spcontentid>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "</spcontentid><locale>"

    .end local p4
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "</locale><region>"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "</region><maincategory>"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "</maincategory></getpackagerequest>"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, request:Ljava/lang/String;
    const/4 p1, 0x0

    .line 616
    .local p1, buf:[B
    :try_start_0
    const-string v2, ""

    move-object v0, p0

    move/from16 v3, p9

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/asus/reader/vibe2/VibeAPIBase;->doPost3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 619
    .end local p1           #buf:[B
    .local p0, buf:[B
    if-nez p0, :cond_3

    .line 621
    :try_start_1
    sget-object p1, Lcom/asus/reader/vibe2/VibeAPIBase;->TAG:Ljava/lang/String;

    const-string p2, "error: no data available"

    .end local p2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 622
    const/4 p0, 0x0

    goto :goto_0

    .line 601
    .end local v1           #request:Ljava/lang/String;
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, version_getpackage:Ljava/lang/String;
    .restart local p2
    .restart local p4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #CMSurl:Ljava/lang/String;
    const-string v0, "getpackages/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #CMSurl:Ljava/lang/String;
    goto :goto_1

    .line 625
    .end local p1           #version_getpackage:Ljava/lang/String;
    .end local p4
    .restart local v1       #request:Ljava/lang/String;
    .local p0, buf:[B
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    .end local p2
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 628
    :catch_0
    move-exception p1

    .line 629
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 630
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_1
    move-exception p0

    move-object v9, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v9

    .line 631
    .end local p2
    .local p1, e:Ljava/lang/NullPointerException;
    :goto_3
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 630
    .end local p1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception p1

    goto :goto_3

    .line 628
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_3
    move-exception p0

    move-object v9, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v9

    goto :goto_2
.end method

.method public static LoadPickedSubcategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 12
    .parameter "CMSurl"
    .parameter "version_getcontent"
    .parameter "username"
    .parameter "maincategoryid"
    .parameter "subcategoryid"
    .parameter "firstcontent"
    .parameter "lastcontent"
    .parameter "locale"
    .parameter "region"
    .parameter "subscribed"
    .parameter "product"
    .parameter "contenttype"
    .parameter "searchkey"
    .parameter "maincategory"
    .parameter "headermode"

    .prologue
    .line 380
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p11, :cond_0

    if-nez p13, :cond_1

    .line 382
    :cond_0
    const/4 p0, 0x0

    .line 431
    .end local p0
    .end local p1
    .end local p2
    .end local p5
    :goto_0
    return-object p0

    .line 388
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p5
    :cond_1
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v2, "getcontent/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 395
    .restart local p0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?><getcontentrequest Version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v2, "\"><username>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</username><subcategoryid>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</subcategoryid><firstcontent>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</firstcontent><lastcontent>"

    .end local p5
    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</lastcontent><locale>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</locale><region>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</region><subscribed>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</subscribed><product>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</product><contenttype>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</contenttype><searchkey>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</searchkey><maincategory>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</maincategory></getcontentrequest>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, request:Ljava/lang/String;
    const/4 p1, 0x0

    .line 417
    .local p1, buf:[B
    :try_start_0
    const-string v4, ""

    move-object v2, p0

    move/from16 v5, p14

    move-object v6, p3

    move-object/from16 v7, p4

    move-object v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/asus/reader/vibe2/VibeAPIBase;->doPost3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 419
    .end local p1           #buf:[B
    .local p0, buf:[B
    if-nez p0, :cond_3

    .line 420
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 391
    .end local v3           #request:Ljava/lang/String;
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, version_getcontent:Ljava/lang/String;
    .restart local p5
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #CMSurl:Ljava/lang/String;
    const-string v2, "getcontent/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #CMSurl:Ljava/lang/String;
    goto/16 :goto_1

    .line 422
    .end local p1           #version_getcontent:Ljava/lang/String;
    .end local p5
    .restart local v3       #request:Ljava/lang/String;
    .local p0, buf:[B
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    .end local p2
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 425
    :catch_0
    move-exception p1

    .line 426
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 427
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_1
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    .line 428
    .end local p2
    .local p1, e:Ljava/lang/NullPointerException;
    :goto_3
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 427
    .end local p1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception p1

    goto :goto_3

    .line 425
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_3
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    goto :goto_2
.end method

.method public static LoadPickedSubcategorySearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 12
    .parameter "CMSurl"
    .parameter "version_getcontent"
    .parameter "username"
    .parameter "maincategoryid"
    .parameter "subcategoryid"
    .parameter "firstcontent"
    .parameter "lastcontent"
    .parameter "locale"
    .parameter "region"
    .parameter "subscribed"
    .parameter "product"
    .parameter "contenttype"
    .parameter "searchkey"
    .parameter "maincategory"
    .parameter "headermode"

    .prologue
    .line 438
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p11, :cond_0

    if-nez p13, :cond_1

    .line 440
    :cond_0
    const/4 p0, 0x0

    .line 484
    .end local p0
    .end local p1
    .end local p2
    .end local p5
    :goto_0
    return-object p0

    .line 442
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p5
    :cond_1
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v2, "getcontent/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 449
    .restart local p0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?><getcontentrequest Version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v2, "\"><username>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</username><subcategoryid></subcategoryid><firstcontent>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</firstcontent><lastcontent>"

    .end local p5
    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</lastcontent><locale>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</locale><region>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</region><subscribed>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</subscribed><product>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</product><contenttype>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</contenttype><searchkey>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</searchkey><maincategory>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "</maincategory></getcontentrequest>"

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, request:Ljava/lang/String;
    const/4 p1, 0x0

    .line 470
    .local p1, buf:[B
    :try_start_0
    const-string v4, ""

    move-object v2, p0

    move/from16 v5, p14

    move-object v6, p3

    move-object/from16 v7, p4

    move-object v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/asus/reader/vibe2/VibeAPIBase;->doPost3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 472
    .end local p1           #buf:[B
    .local p0, buf:[B
    if-nez p0, :cond_3

    .line 473
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 445
    .end local v3           #request:Ljava/lang/String;
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, version_getcontent:Ljava/lang/String;
    .restart local p5
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #CMSurl:Ljava/lang/String;
    const-string v2, "getcontent/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #CMSurl:Ljava/lang/String;
    goto/16 :goto_1

    .line 475
    .end local p1           #version_getcontent:Ljava/lang/String;
    .end local p5
    .restart local v3       #request:Ljava/lang/String;
    .local p0, buf:[B
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    .end local p2
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 478
    :catch_0
    move-exception p1

    .line 479
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 480
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_1
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    .line 481
    .end local p2
    .local p1, e:Ljava/lang/NullPointerException;
    :goto_3
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 480
    .end local p1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception p1

    goto :goto_3

    .line 478
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    .restart local p2
    :catch_3
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    goto :goto_2
.end method

.method public static OrderInfoProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 12
    .parameter "CMSurl"
    .parameter "version_orderinfo"
    .parameter "authkey"
    .parameter "ecaremetoken"
    .parameter "model"
    .parameter "packageid"
    .parameter "paymenturl"
    .parameter "packagedes"
    .parameter "locale"
    .parameter "region"
    .parameter "spcontentid"
    .parameter "maincategory"
    .parameter "username"
    .parameter "maincategoryid"
    .parameter "subcategoryid"
    .parameter "headermode"

    .prologue
    .line 642
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p10, :cond_0

    if-eqz p11, :cond_0

    if-eqz p8, :cond_0

    if-nez p9, :cond_1

    .line 644
    :cond_0
    const/4 p0, 0x0

    .line 700
    .end local p0
    .end local p1
    .end local p2
    .end local p11
    :goto_0
    return-object p0

    .line 651
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p11
    :cond_1
    new-instance p11, Ljava/lang/StringBuilder;

    .end local p11
    invoke-direct/range {p11 .. p11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<orderinforeq Version=\""

    move-object/from16 v0, p11

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p11

    move-object/from16 v0, p11

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string p11, "\"><authkey>"

    move-object v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</authkey><username>"

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</username><model>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</model><locale>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</locale><region>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</region><maincategoryid>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</maincategoryid><spcontentid>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</spcontentid><packageid>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</packageid><subcategoryid>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</subcategoryid><paymenturl><![CDATA["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]]></paymenturl><packagedes>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</packagedes><ecaremetoken>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</ecaremetoken></orderinforeq>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, request:Ljava/lang/String;
    :try_start_0
    const-string p1, "UTF-8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_1
    const/4 p1, 0x0

    .line 681
    .local p1, buf:[B
    :try_start_1
    const-string v4, ""

    move-object v2, p0

    move/from16 v5, p15

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p12

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/asus/reader/vibe2/VibeAPIBase;->doPost3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p0

    .line 684
    .end local p1           #buf:[B
    .local p0, buf:[B
    if-nez p0, :cond_2

    .line 685
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 669
    .local p0, CMSurl:Ljava/lang/String;
    :catch_0
    move-exception p1

    .line 671
    .local p1, e:Ljava/io/IOException;
    sget-object p1, Lcom/asus/reader/vibe2/VibeAPIBase;->TAG:Ljava/lang/String;

    .end local p1           #e:Ljava/io/IOException;
    const-string p2, "Exception: get UTF-8 bytes"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    .local p0, buf:[B
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 693
    :catch_1
    move-exception p1

    .line 694
    .local p1, e:Ljava/lang/NullPointerException;
    :goto_2
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 695
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    :catch_2
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    .line 697
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 695
    .end local p1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception p1

    goto :goto_3

    .line 693
    .local p0, CMSurl:Ljava/lang/String;
    .local p1, buf:[B
    :catch_4
    move-exception p0

    move-object v11, p0

    move-object p0, p1

    .end local p1           #buf:[B
    .local p0, buf:[B
    move-object p1, v11

    goto :goto_2
.end method

.method public static doPost3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .parameter "sURL"
    .parameter "data"
    .parameter "setCookie"
    .parameter "headermode"
    .parameter "maincategoryid"
    .parameter "subcategoryid"
    .parameter "username"
    .parameter "locale"
    .parameter "region"

    .prologue
    .line 1037
    const/4 v2, 0x0

    .line 1038
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 1039
    .local v3, dos:Ljava/io/DataOutputStream;
    const/4 p2, 0x0

    .line 1042
    .local p2, byteBuf:[B
    const/4 v1, 0x0

    .line 1047
    .local v1, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAPIBase;->getUnTrustSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1049
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .end local v4           #url:Ljava/net/URL;
    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 1051
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1052
    .end local p0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1053
    const-string p0, "POST"

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1055
    const-string p0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, p0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    if-eqz p3, :cond_0

    .line 1061
    const-string p0, "maincategoryid"

    invoke-virtual {v1, p0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string p0, "subcategoryid"

    invoke-virtual {v1, p0, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string p0, "username"

    invoke-virtual {v1, p0, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string p0, "locale"

    invoke-virtual {v1, p0, p7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string p0, "region"

    invoke-virtual {v1, p0, p8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_0
    const-string p0, "UTF8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 1074
    .local p0, utf8Bytes:[B
    const-string p1, "Content-Length"

    .end local p1
    array-length p3, p0

    .end local p3
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance p4, Ljava/io/DataOutputStream;

    .end local p4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1078
    .end local v3           #dos:Ljava/io/DataOutputStream;
    .local p4, dos:Ljava/io/DataOutputStream;
    const/4 p1, 0x0

    :try_start_1
    array-length p3, p0

    invoke-virtual {p4, p0, p1, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1080
    invoke-virtual {p4}, Ljava/io/DataOutputStream;->close()V

    .line 1082
    new-instance p3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .end local p0           #utf8Bytes:[B
    invoke-direct {p3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1084
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local p3, dis:Ljava/io/DataInputStream;
    const/16 p0, 0x400

    :try_start_2
    new-array p5, p0, [B

    .line 1085
    .local p5, tmpBuf:[B
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 p1, 0x800

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1088
    .end local p6
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p3, p5}, Ljava/io/DataInputStream;->read([B)I

    move-result p1

    .local p1, bytes:I
    const/4 p6, -0x1

    if-eq p1, p6, :cond_3

    .line 1089
    const/4 p6, 0x0

    invoke-virtual {p0, p5, p6, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 1102
    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local p1           #bytes:I
    .end local p5           #tmpBuf:[B
    :catch_0
    move-exception p0

    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .local p1, conn:Ljava/net/HttpURLConnection;
    move-object v5, p0

    move-object p0, p2

    .end local p2           #byteBuf:[B
    .local p0, byteBuf:[B
    move-object p2, p3

    .end local p3           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .local p3, dos:Ljava/io/DataOutputStream;
    move-object p4, v5

    .line 1103
    .local p4, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {p4}, Ljava/io/IOException;->printStackTrace()V

    .line 1104
    if-eqz p3, :cond_1

    .line 1108
    :try_start_3
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1116
    .end local p4           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 1118
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1143
    :cond_2
    :goto_3
    return-object p0

    .line 1096
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .local p1, bytes:I
    .local p2, byteBuf:[B
    .local p3, dis:Ljava/io/DataInputStream;
    .local p4, dos:Ljava/io/DataOutputStream;
    .restart local p5       #tmpBuf:[B
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object p1

    .line 1097
    .end local p2           #byteBuf:[B
    .local p1, byteBuf:[B
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/asus/reader/vibe2/VibeAPIBase;->Orderlink:Ljava/lang/String;

    .line 1099
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1100
    invoke-virtual {p3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_5 .. :try_end_5} :catch_6

    move-object p0, p1

    .end local p1           #byteBuf:[B
    .local p0, byteBuf:[B
    move-object p2, p3

    .end local p3           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .local p3, dos:Ljava/io/DataOutputStream;
    move-object p1, v1

    .line 1140
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .local p1, conn:Ljava/net/HttpURLConnection;
    goto :goto_3

    .line 1121
    .end local p0           #byteBuf:[B
    .end local p1           #conn:Ljava/net/HttpURLConnection;
    .end local p3           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v3       #dos:Ljava/io/DataOutputStream;
    .local p2, byteBuf:[B
    .local p5, subcategoryid:Ljava/lang/String;
    .restart local p6
    :catch_1
    move-exception p0

    move-object p4, p0

    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .restart local p1       #conn:Ljava/net/HttpURLConnection;
    move-object p3, v3

    .end local v3           #dos:Ljava/io/DataOutputStream;
    .restart local p3       #dos:Ljava/io/DataOutputStream;
    move-object p0, p2

    .end local p2           #byteBuf:[B
    .restart local p0       #byteBuf:[B
    move-object p2, v2

    .line 1122
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local p5           #subcategoryid:Ljava/lang/String;
    .end local p6
    .local p2, dis:Ljava/io/DataInputStream;
    .local p4, e:Landroid/os/NetworkOnMainThreadException;
    :goto_4
    invoke-virtual {p4}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V

    .line 1124
    if-eqz p3, :cond_4

    .line 1128
    :try_start_6
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 1136
    .end local p4           #e:Landroid/os/NetworkOnMainThreadException;
    :cond_4
    :goto_5
    if-eqz p1, :cond_2

    .line 1138
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 1110
    .local p4, e:Ljava/io/IOException;
    :catch_2
    move-exception p4

    goto :goto_2

    .line 1130
    .local p4, e:Landroid/os/NetworkOnMainThreadException;
    :catch_3
    move-exception p4

    goto :goto_5

    .line 1121
    .end local p0           #byteBuf:[B
    .end local p1           #conn:Ljava/net/HttpURLConnection;
    .end local p3           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .local p2, byteBuf:[B
    .local p4, dos:Ljava/io/DataOutputStream;
    .restart local p5       #subcategoryid:Ljava/lang/String;
    .restart local p6
    :catch_4
    move-exception p0

    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .restart local p1       #conn:Ljava/net/HttpURLConnection;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .restart local p3       #dos:Ljava/io/DataOutputStream;
    move-object p4, p0

    move-object p0, p2

    .end local p2           #byteBuf:[B
    .restart local p0       #byteBuf:[B
    move-object p2, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    goto :goto_4

    .end local p0           #byteBuf:[B
    .end local p1           #conn:Ljava/net/HttpURLConnection;
    .end local p5           #subcategoryid:Ljava/lang/String;
    .end local p6
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .local p2, byteBuf:[B
    .local p3, dis:Ljava/io/DataInputStream;
    .restart local p4       #dos:Ljava/io/DataOutputStream;
    :catch_5
    move-exception p0

    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .restart local p1       #conn:Ljava/net/HttpURLConnection;
    move-object v5, p0

    move-object p0, p2

    .end local p2           #byteBuf:[B
    .restart local p0       #byteBuf:[B
    move-object p2, p3

    .end local p3           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .local p3, dos:Ljava/io/DataOutputStream;
    move-object p4, v5

    goto :goto_4

    .end local p2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .local p1, byteBuf:[B
    .local p3, dis:Ljava/io/DataInputStream;
    .restart local p4       #dos:Ljava/io/DataOutputStream;
    .local p5, tmpBuf:[B
    :catch_6
    move-exception p0

    move-object p2, p3

    .end local p3           #dis:Ljava/io/DataInputStream;
    .restart local p2       #dis:Ljava/io/DataInputStream;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .local p3, dos:Ljava/io/DataOutputStream;
    move-object p4, p0

    move-object p0, p1

    .end local p1           #byteBuf:[B
    .local p0, byteBuf:[B
    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .local p1, conn:Ljava/net/HttpURLConnection;
    goto :goto_4

    .line 1102
    .end local p0           #byteBuf:[B
    .end local p1           #conn:Ljava/net/HttpURLConnection;
    .end local p3           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v3       #dos:Ljava/io/DataOutputStream;
    .local p2, byteBuf:[B
    .local p5, subcategoryid:Ljava/lang/String;
    .restart local p6
    :catch_7
    move-exception p0

    move-object p4, p0

    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .restart local p1       #conn:Ljava/net/HttpURLConnection;
    move-object p3, v3

    .end local v3           #dos:Ljava/io/DataOutputStream;
    .restart local p3       #dos:Ljava/io/DataOutputStream;
    move-object p0, p2

    .end local p2           #byteBuf:[B
    .restart local p0       #byteBuf:[B
    move-object p2, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    goto :goto_1

    .end local p0           #byteBuf:[B
    .end local p1           #conn:Ljava/net/HttpURLConnection;
    .end local p3           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .local p2, byteBuf:[B
    .restart local p4       #dos:Ljava/io/DataOutputStream;
    :catch_8
    move-exception p0

    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .restart local p1       #conn:Ljava/net/HttpURLConnection;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .restart local p3       #dos:Ljava/io/DataOutputStream;
    move-object p4, p0

    move-object p0, p2

    .end local p2           #byteBuf:[B
    .restart local p0       #byteBuf:[B
    move-object p2, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    goto :goto_1

    .end local p2           #dis:Ljava/io/DataInputStream;
    .end local p6
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .local p1, byteBuf:[B
    .local p3, dis:Ljava/io/DataInputStream;
    .restart local p4       #dos:Ljava/io/DataOutputStream;
    .local p5, tmpBuf:[B
    :catch_9
    move-exception p0

    move-object p2, p3

    .end local p3           #dis:Ljava/io/DataInputStream;
    .restart local p2       #dis:Ljava/io/DataInputStream;
    move-object p3, p4

    .end local p4           #dos:Ljava/io/DataOutputStream;
    .local p3, dos:Ljava/io/DataOutputStream;
    move-object p4, p0

    move-object p0, p1

    .end local p1           #byteBuf:[B
    .local p0, byteBuf:[B
    move-object p1, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .local p1, conn:Ljava/net/HttpURLConnection;
    goto :goto_1
.end method

.method public static doPost4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 14
    .parameter "sURL"
    .parameter "data"
    .parameter "setCookie"

    .prologue
    .line 1149
    const/4 v5, 0x0

    .line 1150
    .local v5, dis:Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .line 1151
    .local v7, dos:Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 1154
    .local v2, byteBuf:[B
    const/4 v4, 0x0

    .line 1159
    .local v4, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAPIBase;->getUnTrustSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-static {v12}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1161
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 1163
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1164
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1165
    const-string v12, "POST"

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1167
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v12, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1174
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .local v8, dos:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 1177
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1179
    .end local v5           #dis:Ljava/io/DataInputStream;
    .local v6, dis:Ljava/io/DataInputStream;
    const/16 v12, 0x400

    :try_start_2
    new-array v10, v12, [B

    .line 1180
    .local v10, tmpBuf:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x800

    invoke-direct {v1, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1183
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v6, v10}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    .local v3, bytes:I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_2

    .line 1184
    const/4 v12, 0x0

    invoke-virtual {v1, v10, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 1195
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bytes:I
    .end local v10           #tmpBuf:[B
    :catch_0
    move-exception v12

    move-object v9, v12

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    move-object v5, v6

    .line 1196
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v11           #url:Ljava/net/URL;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .local v9, e:Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1198
    if-eqz v7, :cond_0

    .line 1202
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1210
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1212
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1254
    .end local v9           #e:Ljava/net/MalformedURLException;
    :cond_1
    :goto_3
    return-object v2

    .line 1190
    .end local v5           #dis:Ljava/io/DataInputStream;
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bytes:I
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    .restart local v10       #tmpBuf:[B
    .restart local v11       #url:Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1193
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    move-object v5, v6

    .line 1252
    .end local v6           #dis:Ljava/io/DataInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1214
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bytes:I
    .end local v10           #tmpBuf:[B
    .end local v11           #url:Ljava/net/URL;
    :catch_1
    move-exception v12

    move-object v9, v12

    .line 1215
    .local v9, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 1216
    if-eqz v7, :cond_3

    .line 1220
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1228
    :cond_3
    :goto_5
    if-eqz v4, :cond_1

    .line 1230
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 1233
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    move-object v9, v12

    .line 1234
    .local v9, e:Landroid/os/NetworkOnMainThreadException;
    :goto_6
    invoke-virtual {v9}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V

    .line 1236
    if-eqz v7, :cond_4

    .line 1240
    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1248
    :cond_4
    :goto_7
    if-eqz v4, :cond_1

    .line 1250
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 1204
    .local v9, e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v12

    goto :goto_2

    .line 1222
    .local v9, e:Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 1242
    .local v9, e:Landroid/os/NetworkOnMainThreadException;
    :catch_5
    move-exception v12

    goto :goto_7

    .line 1233
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .end local v9           #e:Landroid/os/NetworkOnMainThreadException;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catch_6
    move-exception v12

    move-object v9, v12

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    goto :goto_6

    .end local v5           #dis:Ljava/io/DataInputStream;
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v12

    move-object v9, v12

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6           #dis:Ljava/io/DataInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    goto :goto_6

    .line 1214
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v12

    move-object v9, v12

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v5           #dis:Ljava/io/DataInputStream;
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    :catch_9
    move-exception v12

    move-object v9, v12

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6           #dis:Ljava/io/DataInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    goto :goto_4

    .line 1195
    .end local v11           #url:Ljava/net/URL;
    :catch_a
    move-exception v12

    move-object v9, v12

    goto :goto_1

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    .restart local v11       #url:Ljava/net/URL;
    :catch_b
    move-exception v12

    move-object v9, v12

    move-object v7, v8

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static getClientInfo(Lcom/asus/reader/vibe2/ApplicationInfo;)Ljava/lang/String;
    .locals 8
    .parameter "a"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1360
    const/4 v4, 0x0

    .line 1361
    .local v4, serverurl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1362
    .local v1, locale:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1364
    .local v2, region:Ljava/lang/String;
    sget-object v5, Lcom/asus/reader/vibe2/VibeAPIBase;->m_strClientUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/asus/reader/vibe2/VibeAPIBase;->httpCom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1367
    .local v3, responseBody:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    :cond_0
    move-object v5, v7

    .line 1401
    :goto_0
    return-object v5

    .line 1371
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_2

    move-object v5, v7

    .line 1374
    goto :goto_0

    .line 1380
    :cond_2
    :try_start_0
    const-string v5, "<serverurl>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    const-string v6, "</serverurl>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1381
    const-string v5, "<locale>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    const-string v6, "</locale>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1382
    const-string v5, "<region>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    const-string v6, "</region>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1387
    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move-object v5, v7

    .line 1388
    goto :goto_0

    .line 1383
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1384
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1391
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move-object v5, v7

    .line 1392
    goto :goto_0

    .line 1395
    :cond_6
    invoke-virtual {p0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setLocale(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p0, v2}, Lcom/asus/reader/vibe2/ApplicationInfo;->setRegion(Ljava/lang/String;)V

    move-object v5, v4

    .line 1401
    goto :goto_0
.end method

.method public static getURLBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 1259
    const/4 v3, 0x0

    .line 1260
    .local v3, imageurl:Ljava/net/URL;
    const/4 v0, 0x0

    .line 1264
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    .end local v3           #imageurl:Ljava/net/URL;
    .local v4, imageurl:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1274
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1276
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1278
    .local v5, is:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1280
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .end local v4           #imageurl:Ljava/net/URL;
    .restart local v3       #imageurl:Ljava/net/URL;
    move-object v6, v0

    .line 1292
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v5           #is:Ljava/io/InputStream;
    :goto_0
    return-object v6

    .line 1265
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1267
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v6, v7

    .line 1268
    goto :goto_0

    .line 1282
    .end local v2           #e:Ljava/net/MalformedURLException;
    .end local v3           #imageurl:Ljava/net/URL;
    .restart local v4       #imageurl:Ljava/net/URL;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 1284
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #imageurl:Ljava/net/URL;
    .restart local v3       #imageurl:Ljava/net/URL;
    move-object v6, v7

    .line 1285
    goto :goto_0

    .line 1286
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #imageurl:Ljava/net/URL;
    .restart local v4       #imageurl:Ljava/net/URL;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 1287
    .local v2, e:Landroid/os/NetworkOnMainThreadException;
    invoke-virtual {v2}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #imageurl:Ljava/net/URL;
    .restart local v3       #imageurl:Ljava/net/URL;
    move-object v6, v7

    .line 1288
    goto :goto_0
.end method

.method private static getUnTrustSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    .line 1323
    const/4 v2, 0x0

    .line 1325
    .local v2, factory:Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1326
    .local v0, c:Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/asus/reader/vibe2/VibeAPIBase$X509UnTrustManager;

    invoke-direct {v5}, Lcom/asus/reader/vibe2/VibeAPIBase$X509UnTrustManager;-><init>()V

    aput-object v5, v3, v4

    .line 1329
    .local v3, tm:[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1330
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1336
    .end local v0           #c:Ljavax/net/ssl/SSLContext;
    .end local v3           #tm:[Ljavax/net/ssl/TrustManager;
    :goto_0
    return-object v2

    .line 1331
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1332
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 1333
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1334
    .local v1, e:Ljava/security/KeyManagementException;
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0
.end method

.method public static httpCom(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/16 v8, 0x1388

    .line 1407
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1409
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1410
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1412
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 1416
    .local v6, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    const-string v4, ""

    .line 1419
    .local v4, responseBody:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v3, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1445
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v5, v4

    .line 1447
    .end local v4           #responseBody:Ljava/lang/String;
    .local v5, responseBody:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1421
    .end local v5           #responseBody:Ljava/lang/String;
    .restart local v4       #responseBody:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1423
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v5, v4

    .line 1447
    .end local v4           #responseBody:Ljava/lang/String;
    .restart local v5       #responseBody:Ljava/lang/String;
    goto :goto_0

    .line 1425
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #responseBody:Ljava/lang/String;
    .restart local v4       #responseBody:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 1427
    .local v1, e:Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1445
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v5, v4

    .line 1447
    .end local v4           #responseBody:Ljava/lang/String;
    .restart local v5       #responseBody:Ljava/lang/String;
    goto :goto_0

    .line 1429
    .end local v1           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v5           #responseBody:Ljava/lang/String;
    .restart local v4       #responseBody:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 1431
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1445
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v5, v4

    .line 1447
    .end local v4           #responseBody:Ljava/lang/String;
    .restart local v5       #responseBody:Ljava/lang/String;
    goto :goto_0

    .line 1434
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #responseBody:Ljava/lang/String;
    .restart local v4       #responseBody:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v1, v7

    .line 1436
    .local v1, e:Landroid/os/NetworkOnMainThreadException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/NetworkOnMainThreadException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1445
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v5, v4

    .line 1447
    .end local v4           #responseBody:Ljava/lang/String;
    .restart local v5       #responseBody:Ljava/lang/String;
    goto :goto_0

    .line 1445
    .end local v1           #e:Landroid/os/NetworkOnMainThreadException;
    .end local v5           #responseBody:Ljava/lang/String;
    .restart local v4       #responseBody:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v5, v4

    .line 1447
    .end local v4           #responseBody:Ljava/lang/String;
    .restart local v5       #responseBody:Ljava/lang/String;
    goto :goto_0
.end method
