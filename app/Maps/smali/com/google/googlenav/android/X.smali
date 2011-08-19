.class Lcom/google/googlenav/android/X;
.super Lcom/google/googlenav/android/u;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/u;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "q"

    aput-object v1, v0, v3

    const-string v1, "dq"

    aput-object v1, v0, v4

    const-string v1, "near"

    aput-object v1, v0, v5

    const-string v1, "saddr"

    aput-object v1, v0, v6

    const-string v1, "daddr"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "myl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mrad"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "wnm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "wph"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "wadr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "winfo"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "abauth"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "oq"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dirmode"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ttype"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sort"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "noexp"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "noal"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "action"

    aput-object v2, v0, v1

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/X;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "wrsn"

    aput-object v1, v0, v4

    const-string v1, "wdrsn"

    aput-object v1, v0, v5

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/X;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "url"

    aput-object v1, v0, v3

    const-string v1, "wurl"

    aput-object v1, v0, v4

    const-string v1, "rurl"

    aput-object v1, v0, v5

    const-string v1, "screenshot"

    aput-object v1, v0, v6

    const-string v1, "thumbnail"

    aput-object v1, v0, v7

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/X;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    const/16 v0, 0x8a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "client"

    aput-object v1, v0, v3

    const-string v1, "channel"

    aput-object v1, v0, v4

    const-string v1, "hl"

    aput-object v1, v0, v5

    const-string v1, "s"

    aput-object v1, v0, v6

    const-string v1, "lr"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "num"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "latlng"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "output"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "view"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ll"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "spn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "zoom"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "zp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sll"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sspn"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sz"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "vp"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "stat_m"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "mapt"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "async"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "radius"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sidr"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "absince"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ihl"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "reviews"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "wrap"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ad"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ip"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "eip"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "gcs"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "gc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "gpc"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "gr"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "gll"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "attr"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "aattr"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "imgtp"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "adcommercial"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "safe"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "adsafe"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "file"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "dm"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "followup"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "datum"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "iwloc"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "iwstate1"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "iwstate2"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "iwd"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "dtab"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "target"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "llsep"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "svgf"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "filter"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "om"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "rl"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "qmo"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "pw"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "fb"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "wrtyp"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "ftid"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "cxid"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "wvt"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "wllc"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "wllr"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "wss"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "mapswl"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "msa"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "msuid"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "msid"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "mssort"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "uedit"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "mpnum"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "mapprev"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "callback"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "rf"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "csnlr"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "ei"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "sig2"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "cv"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "mrt"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "mc"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "mplurl"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "mplid"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "mplpref"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "mplfid"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "mplhost"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "tldtype"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "layer"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "lyrs"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "las"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "lxa"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "stx"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "capid"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "cbll"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "cbp"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "cbinfo"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "panoid"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "dirflg"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "doflg"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "lci"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "mrcr"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "mrsp"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "mra"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "via"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "lscr"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "lscd"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "numal"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "ottype"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "otcaid"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "otevid"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "oticid"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "otvsid"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "otdef"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "ptab"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "attrid"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "mapclient"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "nav"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "uc"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "georestrict"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "acct"

    aput-object v2, v0, v1

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/X;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    return-void
.end method
