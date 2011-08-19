.class public Lorg/ccil/cowan/tagsoup/HTMLScanner;
.super Ljava/lang/Object;
.source "HTMLScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final A_ADUP:I = 0x1

.field private static final A_ADUP_SAVE:I = 0x2

.field private static final A_ADUP_STAGC:I = 0x3

.field private static final A_ANAME:I = 0x4

.field private static final A_ANAME_ADUP:I = 0x5

.field private static final A_ANAME_ADUP_STAGC:I = 0x6

.field private static final A_AVAL:I = 0x7

.field private static final A_AVAL_STAGC:I = 0x8

.field private static final A_CDATA:I = 0x9

.field private static final A_CMNT:I = 0xa

.field private static final A_DECL:I = 0xb

.field private static final A_EMPTYTAG:I = 0xc

.field private static final A_ENTITY:I = 0xd

.field private static final A_ENTITY_START:I = 0xe

.field private static final A_ETAG:I = 0xf

.field private static final A_GI:I = 0x10

.field private static final A_GI_STAGC:I = 0x11

.field private static final A_LT:I = 0x12

.field private static final A_LT_PCDATA:I = 0x13

.field private static final A_MINUS:I = 0x14

.field private static final A_MINUS2:I = 0x15

.field private static final A_MINUS3:I = 0x16

.field private static final A_PCDATA:I = 0x17

.field private static final A_PI:I = 0x18

.field private static final A_PITARGET:I = 0x19

.field private static final A_PITARGET_PI:I = 0x1a

.field private static final A_SAVE:I = 0x1b

.field private static final A_SKIP:I = 0x1c

.field private static final A_SP:I = 0x1d

.field private static final A_STAGC:I = 0x1e

.field private static final A_UNGET:I = 0x1f

.field private static final A_UNSAVE_PCDATA:I = 0x20

.field private static final S_ANAME:I = 0x1

.field private static final S_APOS:I = 0x2

.field private static final S_AVAL:I = 0x3

.field private static final S_BB:I = 0x4

.field private static final S_BBC:I = 0x5

.field private static final S_BBCD:I = 0x6

.field private static final S_BBCDA:I = 0x7

.field private static final S_BBCDAT:I = 0x8

.field private static final S_BBCDATA:I = 0x9

.field private static final S_CDATA:I = 0xa

.field private static final S_CDATA2:I = 0xb

.field private static final S_CDSECT:I = 0xc

.field private static final S_CDSECT1:I = 0xd

.field private static final S_CDSECT2:I = 0xe

.field private static final S_COM:I = 0xf

.field private static final S_COM2:I = 0x10

.field private static final S_COM3:I = 0x11

.field private static final S_COM4:I = 0x12

.field private static final S_DECL:I = 0x13

.field private static final S_DECL2:I = 0x14

.field private static final S_DONE:I = 0x15

.field private static final S_EMPTYTAG:I = 0x16

.field private static final S_ENT:I = 0x17

.field private static final S_EQ:I = 0x18

.field private static final S_ETAG:I = 0x19

.field private static final S_GI:I = 0x1a

.field private static final S_NCR:I = 0x1b

.field private static final S_PCDATA:I = 0x1c

.field private static final S_PI:I = 0x1d

.field private static final S_PITARGET:I = 0x1e

.field private static final S_QUOT:I = 0x1f

.field private static final S_STAGC:I = 0x20

.field private static final S_TAG:I = 0x21

.field private static final S_TAGWS:I = 0x22

.field private static final S_XNCR:I = 0x23

.field private static final debug_actionnames:[Ljava/lang/String;

.field private static final debug_statenames:[Ljava/lang/String;

.field private static statetable:[I


# instance fields
.field private theCurrentColumn:I

.field private theCurrentLine:I

.field private theLastColumn:I

.field private theLastLine:I

.field theNextState:I

.field theOutputBuffer:[C

.field private thePublicid:Ljava/lang/String;

.field theSize:I

.field theState:I

.field private theSystemid:Ljava/lang/String;

.field theWinMap:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const/16 v0, 0x250

    new-array v0, v0, [I

    fill-array-data v0, :array_1a0

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    .line 248
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "A_ADUP"

    aput-object v1, v0, v4

    const-string v1, "A_ADUP_SAVE"

    aput-object v1, v0, v5

    const-string v1, "A_ADUP_STAGC"

    aput-object v1, v0, v6

    const-string v1, "A_ANAME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "A_ANAME_ADUP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "A_ANAME_ADUP_STAGC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "A_AVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "A_AVAL_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "A_CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "A_CMNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "A_DECL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "A_EMPTYTAG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "A_ENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "A_ENTITY_START"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "A_ETAG"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "A_GI"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "A_GI_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "A_LT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "A_LT_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "A_MINUS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "A_MINUS2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "A_MINUS3"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "A_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "A_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "A_PITARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "A_PITARGET_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "A_SAVE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "A_SKIP"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "A_SP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "A_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "A_UNGET"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "A_UNSAVE_PCDATA"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_actionnames:[Ljava/lang/String;

    .line 249
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "S_ANAME"

    aput-object v1, v0, v4

    const-string v1, "S_APOS"

    aput-object v1, v0, v5

    const-string v1, "S_AVAL"

    aput-object v1, v0, v6

    const-string v1, "S_BB"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "S_BBC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S_BBCD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "S_BBCDA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "S_BBCDAT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "S_BBCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "S_CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "S_CDATA2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "S_CDSECT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S_CDSECT1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "S_CDSECT2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "S_COM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "S_COM2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "S_COM3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S_COM4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S_DECL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S_DECL2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "S_DONE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "S_EMPTYTAG"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "S_ENT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "S_EQ"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "S_ETAG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "S_GI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "S_NCR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "S_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "S_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "S_PITARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "S_QUOT"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "S_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "S_TAG"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "S_TAGWS"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "S_XNCR"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_statenames:[Ljava/lang/String;

    return-void

    .line 97
    nop

    :array_1a0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x6t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x17t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xft 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x17t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1at 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1et 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    .line 265
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    return-void

    nop

    :array_14
    .array-data 0x4
        0xact 0x20t 0x0t 0x0t
        0xfdt 0xfft 0x0t 0x0t
        0x1at 0x20t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x1et 0x20t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x21t 0x20t 0x0t 0x0t
        0xc6t 0x2t 0x0t 0x0t
        0x30t 0x20t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x39t 0x20t 0x0t 0x0t
        0x52t 0x1t 0x0t 0x0t
        0xfdt 0xfft 0x0t 0x0t
        0x7dt 0x1t 0x0t 0x0t
        0xfdt 0xfft 0x0t 0x0t
        0xfdt 0xfft 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0x22t 0x20t 0x0t 0x0t
        0x13t 0x20t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0xdct 0x2t 0x0t 0x0t
        0x22t 0x21t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
        0x3at 0x20t 0x0t 0x0t
        0x53t 0x1t 0x0t 0x0t
        0xfdt 0xfft 0x0t 0x0t
        0x7et 0x1t 0x0t 0x0t
        0x78t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    .line 634
    .local v2, s:Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 635
    .local v1, r:Ljava/io/Reader;
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 636
    .local v3, w:Ljava/io/Writer;
    new-instance v0, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v0, v3}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    .line 637
    .local v0, pw:Lorg/ccil/cowan/tagsoup/PYXWriter;
    invoke-interface {v2, v1, v0}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 638
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 639
    return-void
.end method

.method private mark()V
    .registers 2

    .prologue
    .line 598
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    .line 599
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 600
    return-void
.end method

.method private static nicechar(I)Ljava/lang/String;
    .registers 3
    .parameter "in"

    .prologue
    .line 643
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    const-string v0, "\\n"

    .line 645
    :goto_6
    return-object v0

    .line 644
    :cond_7
    const/16 v0, 0x20

    if-ge p0, v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 645
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V
    .registers 8
    .parameter "ch"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 611
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v2, v2

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_20

    .line 612
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_17

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2c

    .line 614
    :cond_17
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v1, v4, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 615
    iput v4, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 624
    :cond_20
    :goto_20
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 625
    return-void

    .line 619
    :cond_2c
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 620
    .local v0, newOutputBuffer:[C
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    goto :goto_20
.end method

.method private unread(Ljava/io/PushbackReader;I)V
    .registers 4
    .parameter "r"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    .line 275
    :cond_6
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    return-object v0
.end method

.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "publicid"
    .parameter "systemid"

    .prologue
    .line 302
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 305
    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .registers 15
    .parameter "r0"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 314
    const/16 v8, 0x1c

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    .line 316
    instance-of v8, p1, Ljava/io/PushbackReader;

    if-eqz v8, :cond_8c

    .line 317
    move-object v0, p1

    check-cast v0, Ljava/io/PushbackReader;

    move-object v7, v0

    .line 326
    .local v7, r:Ljava/io/PushbackReader;
    :goto_c
    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v5

    .line 327
    .local v5, firstChar:I
    const v8, 0xfeff

    if-eq v5, v8, :cond_18

    invoke-direct {p0, v7, v5}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 329
    :cond_18
    :goto_18
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x15

    if-eq v8, v9, :cond_3c7

    .line 330
    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v2

    .line 333
    .local v2, ch:I
    const/16 v8, 0x80

    if-lt v2, v8, :cond_32

    const/16 v8, 0x9f

    if-gt v2, v8, :cond_32

    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    const/16 v9, 0x80

    sub-int v9, v2, v9

    aget v2, v8, v9

    .line 335
    :cond_32
    const/16 v8, 0xd

    if-ne v2, v8, :cond_43

    .line 336
    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v2

    .line 337
    const/16 v8, 0xa

    if-eq v2, v8, :cond_43

    .line 338
    invoke-direct {p0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 339
    const/16 v2, 0xa

    .line 343
    :cond_43
    const/16 v8, 0xa

    if-ne v2, v8, :cond_a5

    .line 344
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    .line 345
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 351
    :goto_50
    const/16 v8, 0x20

    if-ge v2, v8, :cond_5f

    const/16 v8, 0xa

    if-eq v2, v8, :cond_5f

    const/16 v8, 0x9

    if-eq v2, v8, :cond_5f

    const/4 v8, -0x1

    if-ne v2, v8, :cond_18

    .line 354
    :cond_5f
    const/4 v1, 0x0

    .line 355
    .local v1, action:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_61
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    array-length v8, v8

    if-ge v6, v8, :cond_70

    .line 356
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    sget-object v9, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v9, v9, v6

    if-eq v8, v9, :cond_ac

    .line 357
    if-eqz v1, :cond_c2

    .line 371
    :cond_70
    :goto_70
    packed-switch v1, :pswitch_data_3d0

    .line 585
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t process state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 319
    .end local v1           #action:I
    .end local v2           #ch:I
    .end local v5           #firstChar:I
    .end local v6           #i:I
    .end local v7           #r:Ljava/io/PushbackReader;
    :cond_8c
    instance-of v8, p1, Ljava/io/BufferedReader;

    if-eqz v8, :cond_97

    .line 320
    new-instance v7, Ljava/io/PushbackReader;

    invoke-direct {v7, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .restart local v7       #r:Ljava/io/PushbackReader;
    goto/16 :goto_c

    .line 323
    .end local v7           #r:Ljava/io/PushbackReader;
    :cond_97
    new-instance v7, Ljava/io/PushbackReader;

    new-instance v8, Ljava/io/BufferedReader;

    const/16 v9, 0xc8

    invoke-direct {v8, p1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v7, v8}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .restart local v7       #r:Ljava/io/PushbackReader;
    goto/16 :goto_c

    .line 348
    .restart local v2       #ch:I
    .restart local v5       #firstChar:I
    :cond_a5
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_50

    .line 360
    .restart local v1       #action:I
    .restart local v6       #i:I
    :cond_ac
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    if-nez v8, :cond_c5

    .line 361
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v6, 0x2

    aget v1, v8, v9

    .line 362
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v6, 0x3

    aget v8, v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 355
    :cond_c2
    add-int/lit8 v6, v6, 0x4

    goto :goto_61

    .line 364
    :cond_c5
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    if-ne v8, v2, :cond_c2

    .line 365
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v6, 0x2

    aget v1, v8, v9

    .line 366
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v9, v6, 0x3

    aget v8, v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    goto :goto_70

    .line 373
    :pswitch_dc
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTMLScanner can\'t cope with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 377
    :pswitch_109
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 378
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 587
    :goto_114
    :pswitch_114
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    goto/16 :goto_18

    .line 381
    :pswitch_11a
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 382
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 383
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_114

    .line 386
    :pswitch_129
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 387
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 388
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_114

    .line 391
    :pswitch_13d
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 392
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto :goto_114

    .line 395
    :pswitch_149
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 396
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 397
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    goto :goto_114

    .line 400
    :pswitch_15d
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 401
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 402
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 403
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto :goto_114

    .line 406
    :pswitch_179
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 407
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto :goto_114

    .line 410
    :pswitch_185
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 411
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 412
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto/16 :goto_114

    .line 415
    :pswitch_19a
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 417
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1a8

    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 418
    :cond_1a8
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 419
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 422
    :pswitch_1b5
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 423
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 424
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 427
    :pswitch_1c5
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 428
    int-to-char v3, v2

    .line 430
    .local v3, ch1:C
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_1dc

    const/16 v8, 0x23

    if-ne v3, v8, :cond_1dc

    .line 431
    const/16 v8, 0x1b

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 432
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 435
    :cond_1dc
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_1f3

    const/16 v8, 0x78

    if-eq v3, v8, :cond_1ea

    const/16 v8, 0x58

    if-ne v3, v8, :cond_1f3

    .line 436
    :cond_1ea
    const/16 v8, 0x23

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 437
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 440
    :cond_1f3
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_204

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_204

    .line 441
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 444
    :cond_204
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_215

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_215

    .line 445
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 448
    :cond_215
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v9, 0x23

    if-ne v8, v9, :cond_22f

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_22a

    const-string v8, "abcdefABCDEF"

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_22f

    .line 449
    :cond_22a
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 455
    :cond_22f
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x1

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    .line 456
    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->getEntity()I

    move-result v4

    .line 458
    .local v4, ent:I
    if-eqz v4, :cond_296

    .line 459
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 460
    const/16 v8, 0x80

    if-lt v4, v8, :cond_252

    const/16 v8, 0x9f

    if-gt v4, v8, :cond_252

    .line 461
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    const/16 v9, 0x80

    sub-int v9, v4, v9

    aget v4, v8, v9

    .line 463
    :cond_252
    const/16 v8, 0x20

    if-ge v4, v8, :cond_26b

    .line 465
    const/16 v4, 0x20

    .line 481
    :goto_258
    const/16 v8, 0x3b

    if-eq v2, v8, :cond_265

    .line 482
    invoke-direct {p0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 483
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 490
    :cond_265
    :goto_265
    const/16 v8, 0x1c

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    goto/16 :goto_114

    .line 467
    :cond_26b
    const v8, 0xd800

    if-lt v4, v8, :cond_277

    const v8, 0xdfff

    if-gt v4, v8, :cond_277

    .line 469
    const/4 v4, 0x0

    goto :goto_258

    .line 471
    :cond_277
    const v8, 0xffff

    if-gt v4, v8, :cond_280

    .line 473
    invoke-direct {p0, v4, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_258

    .line 477
    :cond_280
    const/high16 v8, 0x1

    sub-int/2addr v4, v8

    .line 478
    shr-int/lit8 v8, v4, 0xa

    const v9, 0xd800

    add-int/2addr v8, v9

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 479
    and-int/lit16 v8, v4, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_258

    .line 487
    :cond_296
    invoke-direct {p0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 488
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_265

    .line 493
    .end local v3           #ch1:C
    .end local v4           #ent:I
    :pswitch_2a0
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    .line 494
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 497
    :pswitch_2ad
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->decl([CII)V

    .line 498
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 501
    :pswitch_2ba
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 502
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 505
    :pswitch_2c7
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 506
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 507
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    goto/16 :goto_114

    .line 510
    :pswitch_2dc
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 511
    const/16 v8, 0x3c

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 512
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 515
    :pswitch_2e9
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 516
    const/16 v8, 0x3c

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 517
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 518
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 521
    :pswitch_2fe
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 522
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 523
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 526
    :pswitch_30e
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 527
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->cmnt([CII)V

    .line 528
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 531
    :pswitch_31e
    const/16 v8, 0x2d

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 532
    const/16 v8, 0x20

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 535
    :pswitch_32a
    const/16 v8, 0x2d

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 536
    const/16 v8, 0x20

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 539
    :pswitch_334
    const/16 v8, 0x2d

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 540
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 543
    :pswitch_33e
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 544
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    .line 545
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 548
    :pswitch_34e
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 549
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 552
    :pswitch_35b
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 553
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 554
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    goto/16 :goto_114

    .line 557
    :pswitch_370
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 562
    :pswitch_375
    const/16 v8, 0x20

    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_114

    .line 565
    :pswitch_37c
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 566
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 569
    :pswitch_389
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 571
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v8, :cond_398

    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 572
    :cond_398
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 573
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stage([CII)V

    goto/16 :goto_114

    .line 576
    :pswitch_3a5
    invoke-direct {p0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 577
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto/16 :goto_114

    .line 580
    :pswitch_3b0
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v8, :cond_3ba

    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 581
    :cond_3ba
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 582
    const/4 v8, 0x0

    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    goto/16 :goto_114

    .line 589
    .end local v1           #action:I
    .end local v2           #ch:I
    .end local v6           #i:I
    :cond_3c7
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    .line 590
    return-void

    .line 371
    nop

    :pswitch_data_3d0
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_109
        :pswitch_11a
        :pswitch_129
        :pswitch_13d
        :pswitch_149
        :pswitch_15d
        :pswitch_179
        :pswitch_185
        :pswitch_19a
        :pswitch_30e
        :pswitch_2ad
        :pswitch_389
        :pswitch_1c5
        :pswitch_1b5
        :pswitch_2a0
        :pswitch_2ba
        :pswitch_2c7
        :pswitch_2dc
        :pswitch_2e9
        :pswitch_334
        :pswitch_32a
        :pswitch_31e
        :pswitch_2fe
        :pswitch_33e
        :pswitch_34e
        :pswitch_35b
        :pswitch_370
        :pswitch_114
        :pswitch_375
        :pswitch_37c
        :pswitch_3a5
        :pswitch_3b0
    .end packed-switch
.end method

.method public startCDATA()V
    .registers 2

    .prologue
    .line 608
    const/16 v0, 0xa

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    return-void
.end method
