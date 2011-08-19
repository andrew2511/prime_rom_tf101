.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
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

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 426
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 429
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .registers 4
    .parameter "cap"
    .parameter "autoText"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .registers 4
    .parameter "cap"
    .parameter "autoText"
    .parameter "fullKeyboard"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 42
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 43
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 44
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .registers 5
    .parameter "autoText"
    .parameter "cap"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1f

    const/4 v2, 0x1

    :goto_9
    add-int v0, v1, v2

    .line 57
    .local v0, off:I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_1a

    .line 58
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 61
    :cond_1a
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 55
    .end local v0           #off:I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .registers 4

    .prologue
    .line 70
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_f

    .line 71
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 73
    :cond_f
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 15
    .parameter "src"
    .parameter "start"
    .parameter "end"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 357
    sub-int v4, p3, p2

    .line 358
    .local v4, len:I
    const/4 v1, 0x0

    .line 360
    .local v1, changecase:Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, replacement:Ljava/lang/String;
    if-nez v6, :cond_1e

    .line 363
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, key:Ljava/lang/String;
    sub-int v7, p3, p2

    invoke-static {v3, v8, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 365
    const/4 v1, 0x1

    .line 367
    if-nez v6, :cond_1e

    move-object v7, v9

    .line 395
    .end local v3           #key:Ljava/lang/String;
    :goto_1d
    return-object v7

    .line 371
    :cond_1e
    const/4 v0, 0x0

    .line 373
    .local v0, caps:I
    if-eqz v1, :cond_33

    .line 374
    move v2, p2

    .local v2, j:I
    :goto_22
    if-ge v2, p3, :cond_33

    .line 375
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 374
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 382
    .end local v2           #j:I
    :cond_33
    if-nez v0, :cond_44

    .line 383
    move-object v5, v6

    .line 391
    .local v5, out:Ljava/lang/String;
    :goto_36
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_58

    invoke-static {p1, p2, v5, v8, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_58

    move-object v7, v9

    .line 393
    goto :goto_1d

    .line 384
    .end local v5           #out:Ljava/lang/String;
    :cond_44
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4c

    .line 385
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_36

    .line 386
    .end local v5           #out:Ljava/lang/String;
    :cond_4c
    if-ne v0, v4, :cond_53

    .line 387
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_36

    .line 389
    .end local v5           #out:Ljava/lang/String;
    :cond_53
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_36

    :cond_58
    move-object v7, v5

    .line 395
    goto :goto_1d
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .registers 11
    .parameter "content"
    .parameter "start"
    .parameter "end"
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    .line 413
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 414
    .local v3, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_e
    array-length v4, v3

    if-ge v0, v4, :cond_19

    .line 415
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 418
    :cond_19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 419
    .local v1, len:I
    new-array v2, v1, [C

    .line 420
    .local v2, orig:[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 422
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 424
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .registers 13
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    .line 493
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 494
    .local v4, set:Ljava/lang/String;
    if-nez v4, :cond_d

    .line 495
    const/4 v0, 0x0

    .line 503
    :goto_c
    return v0

    .line 498
    :cond_d
    if-ne p5, v6, :cond_1e

    .line 499
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1e
    move v0, v6

    .line 503
    goto :goto_c
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "src"

    .prologue
    .line 507
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
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 49
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    const/16 v34, 0x0

    .line 85
    .local v34, pref:I
    if-eqz p1, :cond_10

    .line 86
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v34

    .line 90
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 91
    .local v17, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 93
    .local v21, b:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v39

    .line 94
    .local v39, selStart:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 96
    .local v38, selEnd:I
    if-ltz v39, :cond_2c

    if-gez v38, :cond_39

    .line 97
    :cond_2c
    const/16 v38, 0x0

    move/from16 v39, v38

    .line 98
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 102
    :cond_39
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 103
    .local v20, activeStart:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 107
    .local v19, activeEnd:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v6

    or-int/2addr v5, v6

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v29

    .line 109
    .local v29, i:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    move v5, v0

    if-nez v5, :cond_99

    .line 110
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 111
    .local v10, count:I
    if-lez v10, :cond_99

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_99

    if-lez v39, :cond_99

    .line 112
    const/4 v5, 0x1

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 114
    .local v8, c:C
    move v0, v8

    move/from16 v1, v29

    if-eq v0, v1, :cond_87

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_99

    if-eqz p1, :cond_99

    .line 115
    :cond_87
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 116
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 117
    const/4 v5, 0x1

    .line 352
    .end local v8           #c:C
    .end local v10           #count:I
    :goto_98
    return v5

    .line 123
    :cond_99
    const v5, 0xef01

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_b7

    .line 124
    if-eqz p1, :cond_b2

    .line 125
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 128
    :cond_b2
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 129
    const/4 v5, 0x1

    goto :goto_98

    .line 132
    :cond_b7
    const v5, 0xef00

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_109

    .line 135
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_e3

    .line 136
    move/from16 v41, v38

    .line 139
    .local v41, start:I
    :goto_c7
    if-lez v41, :cond_e5

    sub-int v5, v38, v41

    const/4 v6, 0x4

    if-ge v5, v6, :cond_e5

    const/4 v5, 0x1

    sub-int v5, v41, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_e5

    .line 140
    add-int/lit8 v41, v41, -0x1

    goto :goto_c7

    .line 143
    .end local v41           #start:I
    :cond_e3
    move/from16 v41, v39

    .line 146
    .restart local v41       #start:I
    :cond_e5
    const/16 v22, -0x1

    .line 148
    .local v22, ch:I
    :try_start_e7
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    .line 149
    .local v28, hex:Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v28

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_f9} :catch_46c

    move-result v22

    .line 152
    .end local v28           #hex:Ljava/lang/String;
    :goto_fa
    if-ltz v22, :cond_2b2

    .line 153
    move/from16 v39, v41

    .line 154
    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 155
    move/from16 v29, v22

    .line 161
    .end local v22           #ch:I
    .end local v41           #start:I
    :cond_109
    :goto_109
    if-eqz v29, :cond_390

    .line 162
    const/16 v25, 0x0

    .line 164
    .local v25, dead:Z
    const/high16 v5, -0x8000

    and-int v5, v5, v29

    if-eqz v5, :cond_11a

    .line 165
    const/16 v25, 0x1

    .line 166
    const v5, 0x7fffffff

    and-int v29, v29, v5

    .line 169
    :cond_11a
    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_157

    move/from16 v0, v19

    move/from16 v1, v38

    if-ne v0, v1, :cond_157

    .line 170
    const/16 v37, 0x0

    .line 172
    .local v37, replace:Z
    sub-int v5, v38, v39

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-nez v5, :cond_144

    .line 173
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 174
    .local v18, accent:C
    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    .line 176
    .local v23, composed:I
    if-eqz v23, :cond_144

    .line 177
    move/from16 v29, v23

    .line 178
    const/16 v37, 0x1

    .line 182
    .end local v18           #accent:C
    .end local v23           #composed:I
    :cond_144
    if-nez v37, :cond_157

    .line 183
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 184
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 185
    move/from16 v39, v38

    .line 189
    .end local v37           #replace:Z
    :cond_157
    and-int/lit8 v5, v34, 0x1

    if-eqz v5, :cond_19c

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_19c

    .line 192
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v42

    .line 193
    .local v42, where:I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    .line 195
    .local v27, flags:I
    move/from16 v0, v42

    move/from16 v1, v39

    if-ne v0, v1, :cond_2b6

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v29

    if-ne v0, v1, :cond_2b6

    .line 196
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 212
    .end local v27           #flags:I
    .end local v42           #where:I
    :cond_19c
    :goto_19c
    move/from16 v0, v39

    move/from16 v1, v38

    if-eq v0, v1, :cond_1a9

    .line 213
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 215
    :cond_1a9
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v39

    move/from16 v3, v39

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 218
    move/from16 v0, v29

    int-to-char v0, v0

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 220
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v32

    .line 221
    .local v32, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 223
    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_206

    .line 224
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v32

    move/from16 v3, v38

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    if-eqz v25, :cond_206

    .line 229
    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 230
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v32

    move/from16 v3, v38

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 235
    :cond_206
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 240
    and-int/lit8 v5, v34, 0x2

    if-eqz v5, :cond_319

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_319

    const/16 v5, 0x20

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0x9

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0xa

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0x2c

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0x2e

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0x21

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0x3f

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    const/16 v5, 0x22

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_254

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_319

    :cond_254
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v32

    if-eq v0, v1, :cond_319

    .line 248
    move/from16 v43, v32

    .local v43, x:I
    :goto_264
    if-lez v43, :cond_27a

    .line 249
    const/4 v5, 0x1

    sub-int v5, v43, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 250
    .restart local v8       #c:C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_2e2

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2e2

    .line 255
    .end local v8           #c:C
    :cond_27a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v43

    move/from16 v3, v32

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v35

    .line 257
    .local v35, rep:Ljava/lang/String;
    if-eqz v35, :cond_319

    .line 258
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 260
    .local v36, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_29e
    move-object/from16 v0, v36

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2e5

    .line 261
    aget-object v5, v36, v17

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 260
    add-int/lit8 v17, v17, 0x1

    goto :goto_29e

    .line 157
    .end local v25           #dead:Z
    .end local v32           #oldStart:I
    .end local v35           #rep:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43           #x:I
    .restart local v22       #ch:I
    .restart local v41       #start:I
    :cond_2b2
    const/16 v29, 0x0

    goto/16 :goto_109

    .line 198
    .end local v22           #ch:I
    .end local v41           #start:I
    .restart local v25       #dead:Z
    .restart local v27       #flags:I
    .restart local v42       #where:I
    :cond_2b6
    shl-int/lit8 v27, v29, 0x10

    .line 199
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    .line 201
    if-nez v39, :cond_2cf

    .line 202
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v8, v27, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_19c

    .line 205
    :cond_2cf
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v39, v6

    or-int/lit8 v7, v27, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v39

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_19c

    .line 248
    .end local v27           #flags:I
    .end local v42           #where:I
    .restart local v8       #c:C
    .restart local v32       #oldStart:I
    .restart local v43       #x:I
    :cond_2e2
    add-int/lit8 v43, v43, -0x1

    goto :goto_264

    .line 263
    .end local v8           #c:C
    .restart local v35       #rep:Ljava/lang/String;
    .restart local v36       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_2e5
    sub-int v5, v32, v43

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v33, v0

    .line 264
    .local v33, orig:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v33

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 266
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v43

    move/from16 v3, v32

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 268
    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 274
    .end local v33           #orig:[C
    .end local v35           #rep:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43           #x:I
    :cond_319
    and-int/lit8 v5, v34, 0x4

    if-eqz v5, :cond_38d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_38d

    .line 275
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 276
    const/4 v5, 0x3

    sub-int v5, v38, v5

    if-ltz v5, :cond_38d

    .line 277
    const/4 v5, 0x1

    sub-int v5, v38, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_38d

    const/4 v5, 0x2

    sub-int v5, v38, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_38d

    .line 279
    const/4 v5, 0x3

    sub-int v5, v38, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 281
    .restart local v8       #c:C
    const/4 v5, 0x3

    sub-int v30, v38, v5

    .local v30, j:I
    :goto_356
    if-lez v30, :cond_371

    .line 282
    const/16 v5, 0x22

    if-eq v8, v5, :cond_364

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_371

    .line 284
    :cond_364
    const/4 v5, 0x1

    sub-int v5, v30, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 281
    add-int/lit8 v30, v30, -0x1

    goto :goto_356

    .line 290
    :cond_371
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_37d

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_38d

    .line 291
    :cond_37d
    const/4 v5, 0x2

    sub-int v5, v38, v5

    const/4 v6, 0x1

    sub-int v6, v38, v6

    const-string v7, "."

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 297
    .end local v8           #c:C
    .end local v30           #j:I
    :cond_38d
    const/4 v5, 0x1

    goto/16 :goto_98

    .line 298
    .end local v25           #dead:Z
    .end local v32           #oldStart:I
    :cond_390
    const/16 v5, 0x43

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_466

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_3a7

    const/4 v5, 0x2

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_466

    :cond_3a7
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_466

    .line 303
    const/16 v24, 0x1

    .line 310
    .local v24, consider:I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v39

    if-ne v0, v1, :cond_3cd

    .line 311
    const/4 v5, 0x1

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3cd

    .line 312
    const/16 v24, 0x2

    .line 315
    :cond_3cd
    sub-int v5, v39, v24

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v39

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 318
    .restart local v36       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v36

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_466

    .line 319
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 320
    .local v40, st:I
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 321
    .local v26, en:I
    new-instance v31, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v36, v5

    #getter for: Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 323
    .local v31, old:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 329
    move/from16 v0, v39

    move/from16 v1, v26

    if-lt v0, v1, :cond_45d

    .line 330
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v26

    move/from16 v3, v26

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 332
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 334
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 335
    const/4 v5, 0x1

    sub-int v5, v26, v5

    if-ltz v5, :cond_454

    .line 336
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v26, v6

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v26

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 342
    :goto_44e
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 348
    const/4 v5, 0x1

    goto/16 :goto_98

    .line 340
    :cond_454
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_44e

    .line 344
    :cond_45d
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 345
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_98

    .line 352
    .end local v24           #consider:I
    .end local v26           #en:I
    .end local v31           #old:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v40           #st:I
    :cond_466
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_98

    .line 150
    .restart local v22       #ch:I
    .restart local v41       #start:I
    :catch_46c
    move-exception v5

    goto/16 :goto_fa
.end method
