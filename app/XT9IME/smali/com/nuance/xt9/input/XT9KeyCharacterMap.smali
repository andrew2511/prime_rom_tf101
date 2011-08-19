.class public Lcom/nuance/xt9/input/XT9KeyCharacterMap;
.super Lcom/nuance/xt9/input/XT9KCMNative;
.source "XT9KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/XT9KeyCharacterMap$FallbackAction;,
        Lcom/nuance/xt9/input/XT9KeyCharacterMap$UnavailableException;,
        Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACUTE:I = 0xb40000

.field private static final ACUTE_SUPPLE:I = 0x270000

.field public static final ALPHA:I = 0x3

.field private static final BREVE:I = 0x2d80000

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CARON:I = 0x2c70000

.field private static final CEDILLA:I = 0xb80000

.field private static final CIRCUMFLEX:I = 0x5e0000

.field private static COMBINING:Landroid/util/SparseIntArray; = null

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field private static DEAD:Landroid/util/SparseIntArray; = null

.field private static final DIALYTIKA:I = 0x3850000

.field private static final DOT:I = 0x2d90000

.field private static final DOUBLE_ACUTE:I = 0x2dd0000

.field public static final FULL:I = 0x4

.field private static final GRAVE:I = 0x600000

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field private static final OGONEK:I = 0x2db0000

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field private static final RING:I = 0xb00000

.field public static final SPECIAL_FUNCTION:I = 0x5

.field private static final TILDE:I = 0x7e0000

.field private static final TONOS:I = 0x3840000

.field private static final UMLAUT:I = 0xa80000

.field private static final UMLAUT_SUPPLE:I = 0x220000

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/xt9/input/XT9KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeviceId:I

.field private mKCMFile:Ljava/lang/String;

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xcd

    const/16 v6, 0xcb

    const/16 v5, 0xc9

    const/16 v4, 0xc4

    const/16 v3, 0xc1

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    .line 543
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    .line 549
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    .line 596
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x300

    const v2, -0x7fffffa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x301

    const v2, -0x7fffff4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x302

    const v2, -0x7fffffa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x303

    const v2, -0x7fffff82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x308

    const v2, -0x7fffff58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 603
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x327

    const v2, -0x7fffff48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x30c

    const v2, -0x7ffffd39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x306

    const v2, -0x7ffffd28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x30a

    const v2, -0x7fffff50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x328

    const v2, -0x7ffffd25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x307

    const v2, -0x7ffffd27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x30b

    const v2, -0x7ffffd23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x1df0

    const v2, -0x7fffffd9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 611
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x1df1

    const v2, -0x7fffffde

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x384

    const v2, -0x7ffffc7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x385

    const v2, -0x7ffffc7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40041

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40043

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40045

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40049

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004c

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004d

    const/16 v2, 0x1e3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004e

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004f

    const/16 v2, 0xd3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40052

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40053

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40055

    const/16 v2, 0xda

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40057

    const/16 v2, 0x1e82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40059

    const/16 v2, 0xdd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4005a

    const/16 v2, 0x179

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40061

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40063

    const/16 v2, 0x107

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40065

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40069

    const/16 v2, 0xed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006c

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006d

    const/16 v2, 0x1e3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006e

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006f

    const/16 v2, 0xf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40072

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40073

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40075

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40077

    const/16 v2, 0x1e83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40079

    const/16 v2, 0xfd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4007a

    const/16 v2, 0x17a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 655
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0041

    const/16 v2, 0xc2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0043

    const/16 v2, 0x108

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0045

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0047

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0048

    const/16 v2, 0x124

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0049

    const/16 v2, 0xce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e004a

    const/16 v2, 0x134

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e004f

    const/16 v2, 0xd4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0053

    const/16 v2, 0x15c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0055

    const/16 v2, 0xdb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0057

    const/16 v2, 0x174

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 666
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0059

    const/16 v2, 0x176

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0061

    const/16 v2, 0xe2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0063

    const/16 v2, 0x109

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0065

    const/16 v2, 0xea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 671
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0067

    const/16 v2, 0x11d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 672
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0068

    const/16 v2, 0x125

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 673
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0069

    const/16 v2, 0xee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 674
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e006a

    const/16 v2, 0x135

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e006f

    const/16 v2, 0xf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 676
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0073

    const/16 v2, 0x15d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 677
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0075

    const/16 v2, 0xfb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0077

    const/16 v2, 0x175

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0079

    const/16 v2, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 681
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600041

    const/16 v2, 0xc0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600045

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600049

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60004f

    const/16 v2, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600055

    const/16 v2, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600057

    const/16 v2, 0x1e80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600059

    const/16 v2, 0x1ef2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600061

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600065

    const/16 v2, 0xe8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600069

    const/16 v2, 0xec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60006f

    const/16 v2, 0xf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600075

    const/16 v2, 0xf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600077

    const/16 v2, 0x1e81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600079

    const/16 v2, 0x1ef3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0041

    const/16 v2, 0xc3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0045

    const/16 v2, 0x1ebc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0049

    const/16 v2, 0x128

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e004e

    const/16 v2, 0xd1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e004f

    const/16 v2, 0xd5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 702
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0055

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 704
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0059

    const/16 v2, 0x1ef8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0061

    const/16 v2, 0xe3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 706
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0065

    const/16 v2, 0x1ebd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0069

    const/16 v2, 0x129

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 708
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e006e

    const/16 v2, 0xf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 709
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e006f

    const/16 v2, 0xf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0075

    const/16 v2, 0x169

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 712
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0079

    const/16 v2, 0x1ef9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80041

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80045

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80049

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa8004f

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80055

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80057

    const/16 v2, 0x1e84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80059

    const/16 v2, 0x178

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80061

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 723
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80065

    const/16 v2, 0xeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80069

    const/16 v2, 0xef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa8006f

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 727
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80074

    const/16 v2, 0x1e97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80075

    const/16 v2, 0xfc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80077

    const/16 v2, 0x1e85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 731
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80079

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb80043

    const/16 v2, 0xc7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 735
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb80063

    const/16 v2, 0xe7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 736
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70043

    const/16 v2, 0x10c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 737
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70044

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 738
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70045

    const/16 v2, 0x11a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 739
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c7004c

    const/16 v2, 0x13d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c7004e

    const/16 v2, 0x147

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 741
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70052

    const/16 v2, 0x158

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 742
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70053

    const/16 v2, 0x160

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 743
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70054

    const/16 v2, 0x164

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 744
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c7005a

    const/16 v2, 0x17d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 745
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70063

    const/16 v2, 0x10d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 746
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70064

    const/16 v2, 0x10f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 747
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70065

    const/16 v2, 0x11b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c7006c

    const/16 v2, 0x13e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 749
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c7006e

    const/16 v2, 0x148

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 750
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70072

    const/16 v2, 0x159

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70073

    const/16 v2, 0x161

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 752
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c70074

    const/16 v2, 0x165

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2c7007a

    const/16 v2, 0x17e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2d80041

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2d80061

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 756
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb00055

    const/16 v2, 0x16e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 757
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb00075

    const/16 v2, 0x16f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 758
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2db0041

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2db0045

    const/16 v2, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2db0061

    const/16 v2, 0x105

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 761
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2db0065

    const/16 v2, 0x119

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 762
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2d9005a

    const/16 v2, 0x17b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 763
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2d9007a

    const/16 v2, 0x17c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 764
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2dd004f

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2dd0055

    const/16 v2, 0x170

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2dd006f

    const/16 v2, 0x151

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x2dd0075

    const/16 v2, 0x171

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 768
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270041

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 769
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270043

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 770
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270045

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270049

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27004c

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27004d

    const/16 v2, 0x1e3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27004e

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27004f

    const/16 v2, 0xd3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270052

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270053

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270055

    const/16 v2, 0xda

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270057

    const/16 v2, 0x1e82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270059

    const/16 v2, 0xdd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27005a

    const/16 v2, 0x179

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270061

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270063

    const/16 v2, 0x107

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270065

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270069

    const/16 v2, 0xed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27006c

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27006d

    const/16 v2, 0x1e3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 793
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27006e

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27006f

    const/16 v2, 0xf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 796
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270072

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270073

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 798
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270075

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 799
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270077

    const/16 v2, 0x1e83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x270079

    const/16 v2, 0xfd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x27007a

    const/16 v2, 0x17a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220041

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220045

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220049

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x22004f

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220055

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 808
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220057

    const/16 v2, 0x1e84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 810
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220059

    const/16 v2, 0x178

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 811
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220061

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 812
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220065

    const/16 v2, 0xeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220069

    const/16 v2, 0xef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 815
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x22006f

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 816
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220074

    const/16 v2, 0x1e97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 817
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220075

    const/16 v2, 0xfc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220077

    const/16 v2, 0x1e85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x220079

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 846
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x3840391

    const/16 v2, 0x386

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 847
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x3840395

    const/16 v2, 0x388

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 848
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x3840397

    const/16 v2, 0x389

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 849
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x3840399

    const/16 v2, 0x38a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 850
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x384039f

    const/16 v2, 0x38c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 851
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403a9

    const/16 v2, 0x38f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 852
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403a5

    const/16 v2, 0x38e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 853
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403b1

    const/16 v2, 0x3ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403b5

    const/16 v2, 0x3ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 855
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403b7

    const/16 v2, 0x3ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 856
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403b9

    const/16 v2, 0x3af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 857
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403bf

    const/16 v2, 0x3cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 858
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403c9

    const/16 v2, 0x3ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 859
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38403c5

    const/16 v2, 0x3cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 860
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38503b9

    const/16 v2, 0x390

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 861
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x38503c5

    const/16 v2, 0x3b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 862
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80399

    const/16 v2, 0x3aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 863
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa803a5

    const/16 v2, 0x3ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 864
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa803b9

    const/16 v2, 0x3ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 865
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa803c5

    const/16 v2, 0x3cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 866
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "kcmFile"
    .parameter "ptr"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/nuance/xt9/input/XT9KCMNative;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mKCMFile:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mKCMFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mKCMFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mDeviceId:I

    .line 148
    iput p2, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    .line 149
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deviceHasKey(I)Z
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 512
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 513
    .local v0, codeArray:[I
    aput p0, v0, v3

    .line 514
    invoke-static {v0}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v1

    .line 515
    .local v1, ret:[Z
    aget-boolean v2, v1, v3

    return v2
.end method

.method public static deviceHasKeys([I)[Z
    .locals 3
    .parameter "keyCodes"

    .prologue
    .line 529
    array-length v2, p0

    new-array v0, v2, [Z

    .line 530
    .local v0, ret:[Z
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 532
    .local v1, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->hasKeys([I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-object v0

    .line 533
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDeadChar(II)I
    .locals 2
    .parameter "accent"
    .parameter "c"

    .prologue
    .line 326
    sget-object v0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/String;)Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    .locals 5
    .parameter "kcmFile"

    .prologue
    .line 169
    sget-object v3, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    monitor-enter v3

    .line 170
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    .line 181
    :goto_0
    return-object v3

    .line 172
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 173
    .local v0, deviceId:I
    sget-object v4, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    .line 174
    .local v1, map:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    if-nez v1, :cond_2

    .line 175
    invoke-static {p0}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeLoad(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, ptr:I
    if-eqz v2, :cond_2

    .line 177
    new-instance v1, Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    .end local v1           #map:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    invoke-direct {v1, p0, v2}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;-><init>(Ljava/lang/String;I)V

    .line 178
    .restart local v1       #map:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    sget-object v4, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    .end local v2           #ptr:I
    :cond_2
    monitor-exit v3

    move-object v3, v1

    goto :goto_0

    .line 182
    .end local v0           #deviceId:I
    .end local v1           #map:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetCharacter(III)C
.end method

.method private static native nativeGetDisplayLabel(II)C
.end method

.method private static native nativeGetEvents(II[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(IIILcom/nuance/xt9/input/XT9KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(I)I
.end method

.method private static native nativeGetMatch(II[CI)C
.end method

.method private static native nativeGetNumber(II)C
.end method

.method private static native nativeLoad(Ljava/lang/String;)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    if-eqz v0, :cond_0

    .line 154
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v0}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeDispose(I)V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    .line 157
    :cond_0
    return-void
.end method

.method public get(II)I
    .locals 3
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 207
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 208
    iget v2, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, p2}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v0

    .line 210
    .local v0, ch:C
    sget-object v2, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 211
    .local v1, map:I
    if-eqz v1, :cond_0

    move v2, v1

    .line 214
    :goto_0
    return v2

    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method public getDisplayLabel(I)C
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 314
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v0

    return v0
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 2
    .parameter "chars"

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    iget v1, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mDeviceId:I

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetEvents(II[C)[Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackAction(IILcom/nuance/xt9/input/XT9KeyCharacterMap$FallbackAction;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "metaState"
    .parameter "outFallbackAction"

    .prologue
    .line 238
    if-nez p3, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fallbackAction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 243
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetFallbackAction(IIILcom/nuance/xt9/input/XT9KeyCharacterMap$FallbackAction;)Z

    move-result v0

    return v0
.end method

.method public getKCMFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mKCMFile:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyData(ILcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "results"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    iget-object v1, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->meta:[C

    array-length v1, v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 375
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "results.meta.length must be >= 4"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    iget v1, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v1, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v0

    .line 380
    .local v0, displayLabel:C
    if-nez v0, :cond_1

    move v1, v3

    .line 391
    :goto_0
    return v1

    .line 384
    :cond_1
    iput-char v0, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->displayLabel:C

    .line 385
    iget v1, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v1, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetNumber(II)C

    move-result v1

    iput-char v1, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->number:C

    .line 386
    iget-object v1, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->meta:[C

    iget v2, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, v3}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v2

    aput-char v2, v1, v3

    .line 387
    iget-object v1, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->meta:[C

    iget v2, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, v4}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v2

    aput-char v2, v1, v4

    .line 388
    iget-object v1, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->meta:[C

    iget v2, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, v5}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v2

    aput-char v2, v1, v5

    .line 389
    iget-object v1, p2, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->meta:[C

    iget v2, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, v6}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v2

    aput-char v2, v1, v6

    move v1, v4

    .line 391
    goto :goto_0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v0}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetKeyboardType(I)I

    move-result v0

    return v0
.end method

.method public getMatch(I[C)C
    .locals 1
    .parameter "keyCode"
    .parameter "chars"

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public getMatch(I[CI)C
    .locals 2
    .parameter "keyCode"
    .parameter "chars"
    .parameter "metaState"

    .prologue
    .line 298
    if-nez p2, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 303
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetMatch(II[CI)C

    move-result v0

    return v0
.end method

.method public getModifierBehavior()I
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->getKeyboardType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 498
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getNumber(I)C
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 268
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetNumber(II)C

    move-result v0

    return v0
.end method

.method public isPrintingKey(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 429
    iget v1, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->mPtr:I

    invoke-static {v1, p1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 431
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 440
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 438
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
