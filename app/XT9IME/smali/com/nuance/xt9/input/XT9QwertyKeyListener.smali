.class public Lcom/nuance/xt9/input/XT9QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "XT9QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;

.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Lcom/nuance/xt9/input/XT9QwertyKeyListener;

.field private static sInstance:[Lcom/nuance/xt9/input/XT9QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    sput-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    .line 31
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 427
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .parameter "cap"
    .parameter "autoText"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .parameter "cap"
    .parameter "autoText"
    .parameter "fullKeyboard"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 39
    iput-boolean p2, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoText:Z

    .line 40
    iput-boolean p3, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mFullKeyboard:Z

    .line 41
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Lcom/nuance/xt9/input/XT9QwertyKeyListener;
    .locals 3
    .parameter "autoText"
    .parameter "cap"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int v0, v1, v2

    .line 54
    .local v0, off:I
    sget-object v1, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 55
    sget-object v1, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    new-instance v2, Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 58
    :cond_0
    sget-object v1, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 52
    .end local v0           #off:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstanceForFullKeyboard()Lcom/nuance/xt9/input/XT9QwertyKeyListener;
    .locals 4

    .prologue
    .line 67
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sFullKeyboardInstance:Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sFullKeyboardInstance:Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    .line 70
    :cond_0
    sget-object v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->sFullKeyboardInstance:Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .parameter "src"
    .parameter "start"
    .parameter "end"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 355
    sub-int v4, p3, p2

    .line 356
    .local v4, len:I
    const/4 v1, 0x0

    .line 358
    .local v1, changecase:Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, replacement:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 361
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, key:Ljava/lang/String;
    sub-int v7, p3, p2

    invoke-static {v3, v8, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 363
    const/4 v1, 0x1

    .line 365
    if-nez v6, :cond_0

    move-object v7, v9

    .line 393
    .end local v3           #key:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 371
    .local v0, caps:I
    if-eqz v1, :cond_2

    .line 372
    move v2, p2

    .local v2, j:I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 373
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 372
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 380
    .end local v2           #j:I
    :cond_2
    if-nez v0, :cond_3

    .line 381
    move-object v5, v6

    .line 389
    .local v5, out:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_6

    invoke-static {p1, p2, v5, v8, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v9

    .line 391
    goto :goto_0

    .line 382
    .end local v5           #out:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 383
    invoke-static {v6}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 384
    .end local v5           #out:Ljava/lang/String;
    :cond_4
    if-ne v0, v4, :cond_5

    .line 385
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 387
    .end local v5           #out:Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    :cond_6
    move-object v7, v5

    .line 393
    goto :goto_0
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "start"
    .parameter "end"
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    .line 411
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    .line 412
    .local v3, repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 413
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 417
    .local v1, len:I
    new-array v2, v1, [C

    .line 418
    .local v2, orig:[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 420
    new-instance v4, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 422
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 46
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
    invoke-static {}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getXT9KeyCharacterMap()Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    move-result-object v32

    .line 81
    .local v32, kmap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    invoke-static {}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getInstance()Lcom/nuance/xt9/input/XT9TextKeyListener;

    move-result-object v31

    .line 82
    .local v31, keyListener:Lcom/nuance/xt9/input/XT9TextKeyListener;
    if-eqz p1, :cond_0

    if-eqz v32, :cond_0

    if-nez v31, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 350
    :goto_0
    return v5

    .line 85
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v36

    .line 88
    .local v36, pref:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 89
    .local v17, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 91
    .local v21, b:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v41

    .line 92
    .local v41, selStart:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 94
    .local v40, selEnd:I
    if-ltz v41, :cond_2

    if-gez v40, :cond_3

    .line 95
    :cond_2
    const/16 v40, 0x0

    move/from16 v41, v40

    .line 96
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 100
    :cond_3
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 101
    .local v20, activeStart:I
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 105
    .local v19, activeEnd:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static/range {p2 .. p2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v6

    or-int/2addr v5, v6

    move-object/from16 v0, v32

    move/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->get(II)I

    move-result v29

    .line 107
    .local v29, i:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mFullKeyboard:Z

    move v5, v0

    if-nez v5, :cond_5

    .line 108
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 109
    .local v10, count:I
    if-lez v10, :cond_5

    move/from16 v0, v41

    move/from16 v1, v40

    if-ne v0, v1, :cond_5

    if-lez v41, :cond_5

    .line 110
    const/4 v5, 0x1

    sub-int v5, v41, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 112
    .local v8, c:C
    move v0, v8

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_5

    if-eqz p1, :cond_5

    .line 113
    :cond_4
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 114
    invoke-static/range {p2 .. p2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 115
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 121
    .end local v8           #c:C
    .end local v10           #count:I
    :cond_5
    const v5, 0xef01

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 122
    if-eqz p1, :cond_6

    .line 123
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 126
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 127
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 130
    :cond_7
    const v5, 0xef00

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 133
    move/from16 v0, v41

    move/from16 v1, v40

    if-ne v0, v1, :cond_8

    .line 134
    move/from16 v43, v40

    .line 137
    .local v43, start:I
    :goto_1
    if-lez v43, :cond_9

    sub-int v5, v40, v43

    const/4 v6, 0x4

    if-ge v5, v6, :cond_9

    const/4 v5, 0x1

    sub-int v5, v43, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_9

    .line 138
    add-int/lit8 v43, v43, -0x1

    goto :goto_1

    .line 141
    .end local v43           #start:I
    :cond_8
    move/from16 v43, v41

    .line 144
    .restart local v43       #start:I
    :cond_9
    const/16 v22, -0x1

    .line 146
    .local v22, ch:I
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    .line 147
    .local v28, hex:Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v28

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 150
    .end local v28           #hex:Ljava/lang/String;
    :goto_2
    if-ltz v22, :cond_13

    .line 151
    move/from16 v41, v43

    .line 152
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 153
    move/from16 v29, v22

    .line 159
    .end local v22           #ch:I
    .end local v43           #start:I
    :cond_a
    :goto_3
    if-eqz v29, :cond_1d

    .line 160
    const/16 v25, 0x0

    .line 162
    .local v25, dead:Z
    const/high16 v5, -0x8000

    and-int v5, v5, v29

    if-eqz v5, :cond_b

    .line 163
    const/16 v25, 0x1

    .line 164
    const v5, 0x7fffffff

    and-int v29, v29, v5

    .line 167
    :cond_b
    move/from16 v0, v20

    move/from16 v1, v41

    if-ne v0, v1, :cond_d

    move/from16 v0, v19

    move/from16 v1, v40

    if-ne v0, v1, :cond_d

    .line 168
    const/16 v39, 0x0

    .line 170
    .local v39, replace:Z
    sub-int v5, v40, v41

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-nez v5, :cond_c

    .line 171
    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 172
    .local v18, accent:C
    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->getDeadChar(II)I

    move-result v23

    .line 174
    .local v23, composed:I
    if-eqz v23, :cond_c

    .line 175
    move/from16 v29, v23

    .line 176
    const/16 v39, 0x1

    .line 180
    .end local v18           #accent:C
    .end local v23           #composed:I
    :cond_c
    if-nez v39, :cond_d

    .line 181
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 182
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 183
    move/from16 v41, v40

    .line 187
    .end local v39           #replace:Z
    :cond_d
    and-int/lit8 v5, v36, 0x1

    if-eqz v5, :cond_e

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/XT9TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 190
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v44

    .line 191
    .local v44, where:I
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    .line 193
    .local v27, flags:I
    move/from16 v0, v44

    move/from16 v1, v41

    if-ne v0, v1, :cond_14

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 194
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 210
    .end local v27           #flags:I
    .end local v44           #where:I
    :cond_e
    :goto_4
    move/from16 v0, v41

    move/from16 v1, v40

    if-eq v0, v1, :cond_f

    .line 211
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 213
    :cond_f
    sget-object v5, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v41

    move/from16 v3, v41

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 216
    move/from16 v0, v29

    int-to-char v0, v0

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v40

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 218
    sget-object v5, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v34

    .line 219
    .local v34, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v40

    .line 221
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_10

    .line 222
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v34

    move/from16 v3, v40

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 226
    if-eqz v25, :cond_10

    .line 227
    move-object/from16 v0, p2

    move/from16 v1, v34

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 228
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v34

    move/from16 v3, v40

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 233
    :cond_10
    invoke-static/range {p2 .. p2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 238
    and-int/lit8 v5, v36, 0x2

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_18

    const/16 v5, 0x20

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0x9

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0xa

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0x2c

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0x2e

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0x21

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0x3f

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    const/16 v5, 0x22

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_11

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_18

    :cond_11
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v34

    if-eq v0, v1, :cond_18

    .line 246
    move/from16 v45, v34

    .local v45, x:I
    :goto_5
    if-lez v45, :cond_12

    .line 247
    const/4 v5, 0x1

    sub-int v5, v45, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 248
    .restart local v8       #c:C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_16

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_16

    .line 253
    .end local v8           #c:C
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v45

    move/from16 v3, v34

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v37

    .line 255
    .local v37, rep:Ljava/lang/String;
    if-eqz v37, :cond_18

    .line 256
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    .line 258
    .local v38, repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, v38

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_17

    .line 259
    aget-object v5, v38, v17

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 155
    .end local v25           #dead:Z
    .end local v34           #oldStart:I
    .end local v37           #rep:Ljava/lang/String;
    .end local v38           #repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    .end local v45           #x:I
    .restart local v22       #ch:I
    .restart local v43       #start:I
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 196
    .end local v22           #ch:I
    .end local v43           #start:I
    .restart local v25       #dead:Z
    .restart local v27       #flags:I
    .restart local v44       #where:I
    :cond_14
    shl-int/lit8 v27, v29, 0x10

    .line 197
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    .line 199
    if-nez v41, :cond_15

    .line 200
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v8, v27, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 203
    :cond_15
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v41, v6

    or-int/lit8 v7, v27, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v41

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 246
    .end local v27           #flags:I
    .end local v44           #where:I
    .restart local v8       #c:C
    .restart local v34       #oldStart:I
    .restart local v45       #x:I
    :cond_16
    add-int/lit8 v45, v45, -0x1

    goto :goto_5

    .line 261
    .end local v8           #c:C
    .restart local v37       #rep:Ljava/lang/String;
    .restart local v38       #repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    :cond_17
    sub-int v5, v34, v45

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v35, v0

    .line 262
    .local v35, orig:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v45

    move/from16 v2, v34

    move-object/from16 v3, v35

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 264
    new-instance v5, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v45

    move/from16 v3, v34

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 266
    move-object/from16 v0, p2

    move/from16 v1, v45

    move/from16 v2, v34

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 272
    .end local v35           #orig:[C
    .end local v37           #rep:Ljava/lang/String;
    .end local v38           #repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    .end local v45           #x:I
    :cond_18
    and-int/lit8 v5, v36, 0x4

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_1c

    .line 273
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v40

    .line 274
    const/4 v5, 0x3

    sub-int v5, v40, v5

    if-ltz v5, :cond_1c

    .line 275
    const/4 v5, 0x1

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1c

    const/4 v5, 0x2

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1c

    .line 277
    const/4 v5, 0x3

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 279
    .restart local v8       #c:C
    const/4 v5, 0x3

    sub-int v30, v40, v5

    .local v30, j:I
    :goto_7
    if-lez v30, :cond_1a

    .line 280
    const/16 v5, 0x22

    if-eq v8, v5, :cond_19

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1a

    .line 282
    :cond_19
    const/4 v5, 0x1

    sub-int v5, v30, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 279
    add-int/lit8 v30, v30, -0x1

    goto :goto_7

    .line 288
    :cond_1a
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 289
    :cond_1b
    const/4 v5, 0x2

    sub-int v5, v40, v5

    const/4 v6, 0x1

    sub-int v6, v40, v6

    const-string v7, "."

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 295
    .end local v8           #c:C
    .end local v30           #j:I
    :cond_1c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 296
    .end local v25           #dead:Z
    .end local v34           #oldStart:I
    :cond_1d
    const/16 v5, 0x43

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_22

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v5, 0x2

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_1e
    move/from16 v0, v41

    move/from16 v1, v40

    if-ne v0, v1, :cond_22

    .line 301
    const/16 v24, 0x1

    .line 308
    .local v24, consider:I
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v41

    if-ne v0, v1, :cond_1f

    .line 309
    const/4 v5, 0x1

    sub-int v5, v41, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1f

    .line 310
    const/16 v24, 0x2

    .line 313
    :cond_1f
    sub-int v5, v41, v24

    const-class v6, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v41

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    .line 316
    .restart local v38       #repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    move-object/from16 v0, v38

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_22

    .line 317
    const/4 v5, 0x0

    aget-object v5, v38, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v42

    .line 318
    .local v42, st:I
    const/4 v5, 0x0

    aget-object v5, v38, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 319
    .local v26, en:I
    new-instance v33, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v38, v5

    invoke-static {v5}, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;->access$000(Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 321
    .local v33, old:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v38, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 327
    move/from16 v0, v41

    move/from16 v1, v26

    if-lt v0, v1, :cond_21

    .line 328
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v26

    move/from16 v3, v26

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 330
    move-object/from16 v0, p2

    move/from16 v1, v42

    move/from16 v2, v26

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 332
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 333
    const/4 v5, 0x1

    sub-int v5, v26, v5

    if-ltz v5, :cond_20

    .line 334
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v26, v6

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v26

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 340
    :goto_8
    invoke-static/range {p2 .. p2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 346
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 338
    :cond_20
    sget-object v5, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_8

    .line 342
    :cond_21
    invoke-static/range {p2 .. p2}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 343
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 350
    .end local v24           #consider:I
    .end local v26           #en:I
    .end local v33           #old:Ljava/lang/String;
    .end local v38           #repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    .end local v42           #st:I
    :cond_22
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 148
    .restart local v22       #ch:I
    .restart local v43       #start:I
    :catch_0
    move-exception v5

    goto/16 :goto_2
.end method
