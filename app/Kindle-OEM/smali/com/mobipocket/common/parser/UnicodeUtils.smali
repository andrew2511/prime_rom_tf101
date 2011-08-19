.class public Lcom/mobipocket/common/parser/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field private static final AELIG_LC:C = '\u00e6'

.field private static final AELIG_UC:C = '\u00c6'

.field private static final A_KANA_LONG_VOW:C = '\u3095'

.field private static final A_LC_LIGATURE:C = '\u0004'

.field private static final A_UC_LIGATURE:C = '\u0003'

.field private static final E_KANA_LONG_VOW:C = '\u3098'

.field private static final HW_A_KANA_LONG_VOW:C = '\u0010'

.field private static final HW_E_KANA_LONG_VOW:C = '\u0013'

.field private static final HW_I_KANA_LONG_VOW:C = '\u0011'

.field private static final HW_KANA_LONG_VOWEL:C = '\uff70'

.field private static final HW_O_KANA_LONG_VOW:C = '\u0014'

.field private static final HW_U_KANA_LONG_VOW:C = '\u0012'

.field private static final I_KANA_LONG_VOW:C = '\u3096'

.field private static final KANA_LONG_VOWEL:C = '\u30fc'

.field private static final MAX_LIGATURE_PARTS:I = 0x2

.field private static final MAX_UTF16_SIZE:I = 0x2

.field private static final MAX_UTF8_SIZE:I = 0x6

.field private static final OELIG_LC:C = '\u0153'

.field private static final OELIG_UC:C = '\u0152'

.field private static final O_KANA_LONG_VOW:C = '\u309f'

.field private static final O_LC_LIGATURE:C = '\u0002'

.field private static final O_UC_LIGATURE:C = '\u0001'

.field private static final SIZE_UNICODE_ALT_WIDTH_SORTORDER:I = 0xa0

.field private static final SIZE_UNICODE_FULL_WIDTH_LATIN_SORTORDER:I = 0x60

.field private static final SIZE_UNICODE_HALF_WIDTH_KANA_SORTORDER:I = 0x40

.field private static final SIZE_UNICODE_HANGUL_COMPAJAMO_SORTORDER:I = 0x5e

.field private static final SIZE_UNICODE_HANGUL_JAMO_SORTORDER:I = 0xfa

.field private static final SIZE_UNICODE_HANGUL_SYLLABLES_SORTORDER:I = 0x2ba4

.field private static final SIZE_UNICODE_KANA_SORTORDER:I = 0x100

.field private static final SIZE_UNICODE_LATIN_SORTORDER:I = 0x300

.field private static final SORTORDER_unicode_alt_width_latin_and_kana:[C = null

.field private static final SORTORDER_unicode_hangul_compajamo:[C = null

.field private static final SORTORDER_unicode_hangul_jamo:[C = null

.field private static final SORTORDER_unicode_japanese_kana:[C = null

.field private static final SORTORDER_unicode_latin:[C = null

.field private static final START_UNICODE_ALT_WIDTH_SORTORDER:I = 0xff00

.field private static final START_UNICODE_FULL_WIDTH_LATIN_SORTORDER:I = 0xff00

.field private static final START_UNICODE_HALF_WIDTH_KANA_SORTORDER:I = 0xff60

.field private static final START_UNICODE_HANGUL_COMPAJAMO_SORTORDER:I = 0x3131

.field private static final START_UNICODE_HANGUL_JAMO_SORTORDER:I = 0x1100

.field private static final START_UNICODE_HANGUL_SYLLABLES_SORTORDER:I = 0xac00

.field private static final START_UNICODE_KANA_SORTORDER:I = 0x3000

.field private static final START_UNICODE_LATIN_SORTORDER:I = 0x0

.field private static final SZETLIG_LC:C = '\u00df'

.field private static final S_LC_LIGATURE:C = '\u0005'

.field public static final UTF16_BE:I = 0xfdea

.field public static final UTF8:I = 0xfde9

.field public static final UTF8_STRING:Ljava/lang/String; = "UTF-8"

.field private static final U_KANA_LONG_VOW:C = '\u3097'

.field static final VOWEL_japanese_half_width_kana:[C = null

.field private static final VOWEL_japanese_half_width_kana_start:I = 0xff66

.field private static final VOWEL_japanese_kana:[C = null

.field private static final VOWEL_japanese_kana_start:I = 0x3041

.field public static final WINDOWS1252:I = 0x4e4

.field static final cannot_end_line:[C

.field static final cannot_start_line:[C

.field private static ligatureTable:[[C

.field private static mobipocketSpecialCodesLigatureTable:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 165
    const/16 v0, 0xba

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->VOWEL_japanese_kana:[C

    .line 368
    const/16 v0, 0x38

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->VOWEL_japanese_half_width_kana:[C

    .line 468
    const/16 v0, 0x300

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_latin:[C

    .line 1297
    const/16 v0, 0x100

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_japanese_kana:[C

    .line 1577
    const/16 v0, 0xa0

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_alt_width_latin_and_kana:[C

    .line 1750
    const/16 v0, 0xfa

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_hangul_jamo:[C

    .line 2035
    const/16 v0, 0x5e

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_hangul_compajamo:[C

    .line 2149
    const/16 v0, 0x2a

    new-array v0, v0, [C

    fill-array-data v0, :array_7

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->cannot_end_line:[C

    .line 2197
    const/16 v0, 0x35

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->cannot_start_line:[C

    .line 2332
    const/4 v0, 0x5

    new-array v0, v0, [[C

    new-array v1, v2, [C

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [C

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v2, [C

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v2, [C

    fill-array-data v1, :array_c

    aput-object v1, v0, v2

    new-array v1, v2, [C

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->mobipocketSpecialCodesLigatureTable:[[C

    .line 2340
    const/4 v0, 0x5

    new-array v0, v0, [[C

    new-array v1, v2, [C

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [C

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v2, [C

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    new-array v1, v2, [C

    fill-array-data v1, :array_11

    aput-object v1, v0, v2

    new-array v1, v2, [C

    fill-array-data v1, :array_12

    aput-object v1, v0, v6

    sput-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->ligatureTable:[[C

    return-void

    .line 165
    nop

    :array_0
    .array-data 0x2
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x0t 0x0t
        0x46t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x46t 0x0t
        0x46t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x0t 0x0t
        0x46t 0x0t
        0x42t 0x0t
        0x48t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x48t 0x0t
        0x4at 0x0t
    .end array-data

    .line 368
    :array_1
    .array-data 0x2
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x46t 0x0t
        0x4at 0x0t
        0x46t 0x0t
        0x0t 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x46t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x46t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x42t 0x0t
        0x0t 0x0t
    .end array-data

    .line 468
    :array_2
    .array-data 0x2
        0x0t 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x73t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x42t 0x30t
        0x44t 0x30t
        0x46t 0x30t
        0x48t 0x30t
        0x4at 0x30t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x20t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x20t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x0t 0x0t
        0x6dt 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x31t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x0t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x64t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x0t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x0t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x64t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x0t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x79t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6bt 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x77t 0x0t
        0x77t 0x0t
        0x79t 0x0t
        0x79t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x73t 0x0t
        0x62t 0x0t
        0x62t 0x0t
        0x62t 0x0t
        0x62t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x6ft 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x0t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x69t 0x0t
        0x6bt 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x0t 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x70t 0x0t
        0x70t 0x0t
        0x72t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x0t 0x0t
        0x76t 0x0t
        0x79t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x65t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x6bt 0x0t
        0x6bt 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x6at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x0t 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x62t 0x0t
        0x6ft 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x6at 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x0t 0x0t
        0x69t 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x0t 0x0t
        0x6dt 0x0t
        0x6dt 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x0t 0x0t
        0x6at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x0t 0x0t
        0x76t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x79t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x63t 0x0t
        0x0t 0x0t
        0x62t 0x0t
        0x0t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x71t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    .line 1297
    :array_3
    .array-data 0x2
        0x20t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x41t 0x30t
        0x42t 0x30t
        0x43t 0x30t
        0x44t 0x30t
        0x45t 0x30t
        0x46t 0x30t
        0x47t 0x30t
        0x48t 0x30t
        0x49t 0x30t
        0x4at 0x30t
        0x4bt 0x30t
        0x4ct 0x30t
        0x4dt 0x30t
        0x4et 0x30t
        0x4ft 0x30t
        0x50t 0x30t
        0x51t 0x30t
        0x52t 0x30t
        0x53t 0x30t
        0x54t 0x30t
        0x55t 0x30t
        0x56t 0x30t
        0x57t 0x30t
        0x58t 0x30t
        0x59t 0x30t
        0x5at 0x30t
        0x5bt 0x30t
        0x5ct 0x30t
        0x5dt 0x30t
        0x5et 0x30t
        0x5ft 0x30t
        0x60t 0x30t
        0x61t 0x30t
        0x62t 0x30t
        0x63t 0x30t
        0x64t 0x30t
        0x65t 0x30t
        0x66t 0x30t
        0x67t 0x30t
        0x68t 0x30t
        0x69t 0x30t
        0x6at 0x30t
        0x6bt 0x30t
        0x6ct 0x30t
        0x6dt 0x30t
        0x6et 0x30t
        0x6ft 0x30t
        0x70t 0x30t
        0x71t 0x30t
        0x72t 0x30t
        0x73t 0x30t
        0x74t 0x30t
        0x75t 0x30t
        0x76t 0x30t
        0x77t 0x30t
        0x78t 0x30t
        0x79t 0x30t
        0x7at 0x30t
        0x7bt 0x30t
        0x7ct 0x30t
        0x7dt 0x30t
        0x7et 0x30t
        0x7ft 0x30t
        0x80t 0x30t
        0x81t 0x30t
        0x82t 0x30t
        0x83t 0x30t
        0x84t 0x30t
        0x85t 0x30t
        0x86t 0x30t
        0x87t 0x30t
        0x88t 0x30t
        0x89t 0x30t
        0x8at 0x30t
        0x8bt 0x30t
        0x8ct 0x30t
        0x8dt 0x30t
        0x8et 0x30t
        0x8ft 0x30t
        0x90t 0x30t
        0x91t 0x30t
        0x92t 0x30t
        0x93t 0x30t
        0x46t 0x30t
        0x42t 0x30t
        0x44t 0x30t
        0x46t 0x30t
        0x48t 0x30t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x4at 0x30t
        0x0t 0x0t
        0x41t 0x30t
        0x42t 0x30t
        0x43t 0x30t
        0x44t 0x30t
        0x45t 0x30t
        0x46t 0x30t
        0x47t 0x30t
        0x48t 0x30t
        0x49t 0x30t
        0x4at 0x30t
        0x4bt 0x30t
        0x4ct 0x30t
        0x4dt 0x30t
        0x4et 0x30t
        0x4ft 0x30t
        0x50t 0x30t
        0x51t 0x30t
        0x52t 0x30t
        0x53t 0x30t
        0x54t 0x30t
        0x55t 0x30t
        0x56t 0x30t
        0x57t 0x30t
        0x58t 0x30t
        0x59t 0x30t
        0x5at 0x30t
        0x5bt 0x30t
        0x5ct 0x30t
        0x5dt 0x30t
        0x5et 0x30t
        0x5ft 0x30t
        0x60t 0x30t
        0x61t 0x30t
        0x62t 0x30t
        0x63t 0x30t
        0x64t 0x30t
        0x65t 0x30t
        0x66t 0x30t
        0x67t 0x30t
        0x68t 0x30t
        0x69t 0x30t
        0x6at 0x30t
        0x6bt 0x30t
        0x6ct 0x30t
        0x6dt 0x30t
        0x6et 0x30t
        0x6ft 0x30t
        0x70t 0x30t
        0x71t 0x30t
        0x72t 0x30t
        0x73t 0x30t
        0x74t 0x30t
        0x75t 0x30t
        0x76t 0x30t
        0x77t 0x30t
        0x78t 0x30t
        0x79t 0x30t
        0x7at 0x30t
        0x7bt 0x30t
        0x7ct 0x30t
        0x7dt 0x30t
        0x7et 0x30t
        0x7ft 0x30t
        0x80t 0x30t
        0x81t 0x30t
        0x82t 0x30t
        0x83t 0x30t
        0x84t 0x30t
        0x85t 0x30t
        0x86t 0x30t
        0x87t 0x30t
        0x88t 0x30t
        0x89t 0x30t
        0x8at 0x30t
        0x8bt 0x30t
        0x8ct 0x30t
        0x8dt 0x30t
        0x8et 0x30t
        0x8ft 0x30t
        0x90t 0x30t
        0x91t 0x30t
        0x92t 0x30t
        0x93t 0x30t
        0x46t 0x30t
        0x4bt 0x30t
        0x51t 0x30t
        0x8ft 0x30t
        0x90t 0x30t
        0x91t 0x30t
        0x92t 0x30t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    .line 1577
    :array_4
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x92t 0x30t
        0x41t 0x30t
        0x43t 0x30t
        0x45t 0x30t
        0x47t 0x30t
        0x49t 0x30t
        0x83t 0x30t
        0x85t 0x30t
        0x87t 0x30t
        0x63t 0x30t
        0x0t 0x0t
        0x42t 0x30t
        0x44t 0x30t
        0x46t 0x30t
        0x48t 0x30t
        0x4at 0x30t
        0x4bt 0x30t
        0x4dt 0x30t
        0x4ft 0x30t
        0x51t 0x30t
        0x53t 0x30t
        0x55t 0x30t
        0x57t 0x30t
        0x59t 0x30t
        0x5bt 0x30t
        0x5dt 0x30t
        0x5ft 0x30t
        0x61t 0x30t
        0x64t 0x30t
        0x66t 0x30t
        0x68t 0x30t
        0x6at 0x30t
        0x6bt 0x30t
        0x6ct 0x30t
        0x6dt 0x30t
        0x6et 0x30t
        0x6ft 0x30t
        0x72t 0x30t
        0x75t 0x30t
        0x78t 0x30t
        0x7bt 0x30t
        0x7et 0x30t
        0x7ft 0x30t
        0x80t 0x30t
        0x81t 0x30t
        0x82t 0x30t
        0x84t 0x30t
        0x86t 0x30t
        0x88t 0x30t
        0x89t 0x30t
        0x8at 0x30t
        0x8bt 0x30t
        0x8ct 0x30t
        0x8dt 0x30t
        0x8ft 0x30t
        0x93t 0x30t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    .line 1750
    :array_5
    .array-data 0x2
        0x0t 0xact
        0x4et 0xaet
        0xa0t 0xb0t
        0xf8t 0xb2t
        0x48t 0xb5t
        0x98t 0xb7t
        0xfet 0xb9t
        0x57t 0xbct
        0xaat 0xbet
        0x8t 0xc1t
        0x5ft 0xc3t
        0xbet 0xc5t
        0x1ct 0xc8t
        0x6ct 0xcat
        0xbft 0xcct
        0x13t 0xcft
        0x61t 0xd1t
        0xaft 0xd3t
        0x1t 0xd6t
        0xeet 0xb2t
        0xeft 0xb2t
        0xf0t 0xb2t
        0xf1t 0xb2t
        0x46t 0xb5t
        0xe8t 0xb9t
        0xebt 0xb9t
        0xfat 0xb9t
        0xf6t 0xb9t
        0x4et 0xbct
        0x52t 0xbct
        0xa5t 0xbet
        0xa6t 0xbet
        0xa7t 0xbet
        0xf9t 0xc0t
        0xfat 0xc0t
        0xfbt 0xc0t
        0xfct 0xc0t
        0xfdt 0xc0t
        0xfet 0xc0t
        0x0t 0xc1t
        0x1t 0xc1t
        0x2t 0xc1t
        0x3t 0xc1t
        0xfft 0xc0t
        0xf8t 0xc0t
        0x56t 0xc3t
        0x57t 0xc3t
        0x58t 0xc3t
        0x59t 0xc3t
        0x5at 0xc3t
        0x5bt 0xc3t
        0x5ct 0xc3t
        0xadt 0xc5t
        0xaet 0xc5t
        0xaft 0xc5t
        0xb0t 0xc5t
        0xb1t 0xc5t
        0xb2t 0xc5t
        0xb3t 0xc5t
        0xb4t 0xc5t
        0xb7t 0xc5t
        0xb8t 0xc5t
        0xb9t 0xc5t
        0xbat 0xc5t
        0xbct 0xc5t
        0xct 0xc8t
        0xet 0xc8t
        0xft 0xc8t
        0x10t 0xc8t
        0x11t 0xc8t
        0x12t 0xc8t
        0x13t 0xc8t
        0x14t 0xc8t
        0x15t 0xc8t
        0x17t 0xc8t
        0x18t 0xc8t
        0xbet 0xc5t
        0x6at 0xcat
        0xbat 0xcct
        0xbbt 0xcct
        0xbct 0xcct
        0xbdt 0xcct
        0xdt 0xcft
        0xet 0xcft
        0x10t 0xcft
        0x11t 0xcft
        0xfet 0xd5t
        0xfft 0xd5t
        0x53t 0xd8t
        0x55t 0xd8t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0xact
        0x4et 0xaet
        0x9ct 0xb0t
        0xa0t 0xb0t
        0xf3t 0xb2t
        0xf5t 0xb2t
        0xf8t 0xb2t
        0x98t 0xb7t
        0xe6t 0xb9t
        0xect 0xb9t
        0xeft 0xb9t
        0xf3t 0xb9t
        0xf8t 0xb9t
        0xf9t 0xb9t
        0xfat 0xb9t
        0xfet 0xb9t
        0x57t 0xbct
        0xf9t 0xc0t
        0x8t 0xc1t
        0x5ft 0xc3t
        0xbet 0xc5t
        0x1ct 0xc8t
        0xbft 0xcct
        0x13t 0xcft
        0x61t 0xd1t
        0xaft 0xd3t
        0x1t 0xd6t
        0x9dt 0xb0t
        0x9et 0xb0t
        0xeet 0xb2t
        0xf0t 0xb2t
        0xf2t 0xb2t
        0xf6t 0xb2t
        0xf4t 0xb2t
        0x46t 0xb5t
        0x96t 0xb7t
        0xe7t 0xb9t
        0xe8t 0xb9t
        0xe9t 0xb9t
        0xeat 0xb9t
        0xebt 0xb9t
        0xedt 0xb9t
        0xeet 0xb9t
        0xf0t 0xb9t
        0xf1t 0xb9t
        0xf2t 0xb9t
        0xf4t 0xb9t
        0xf5t 0xb9t
        0xf7t 0xb9t
        0xfbt 0xb9t
        0x4ct 0xbct
        0x4dt 0xbct
        0x4et 0xbct
        0x4ft 0xbct
        0x50t 0xbct
        0x51t 0xbct
        0x53t 0xbct
        0x54t 0xbct
        0x52t 0xbct
        0xa8t 0xbet
        0x3t 0xc1t
        0x4t 0xc1t
        0xfft 0xc0t
        0x56t 0xc3t
        0x58t 0xc3t
        0x59t 0xc3t
        0x5bt 0xc3t
        0xbct 0xc5t
        0xct 0xc8t
        0xdt 0xc8t
        0x13t 0xc8t
        0x16t 0xc8t
        0xbet 0xc5t
        0x11t 0xc8t
        0x12t 0xc8t
        0xfet 0xd5t
        0xfft 0xd5t
        0x4ft 0xd8t
        0x50t 0xd8t
        0x51t 0xd8t
        0x52t 0xd8t
        0x55t 0xd8t
    .end array-data

    .line 2035
    :array_6
    .array-data 0x2
        0x0t 0xact
        0x4et 0xaet
        0x9ct 0xb0t
        0xa0t 0xb0t
        0xf3t 0xb2t
        0xf5t 0xb2t
        0xf8t 0xb2t
        0x48t 0xb5t
        0x98t 0xb7t
        0xe6t 0xb9t
        0xect 0xb9t
        0xeft 0xb9t
        0xf3t 0xb9t
        0xf8t 0xb9t
        0xf9t 0xb9t
        0xfat 0xb9t
        0xfet 0xb9t
        0x57t 0xbct
        0xaat 0xbet
        0xf9t 0xc0t
        0x8t 0xc1t
        0x5ft 0xc3t
        0xbet 0xc5t
        0x1ct 0xc8t
        0x6ct 0xcat
        0xbft 0xcct
        0x13t 0xcft
        0x61t 0xd1t
        0xaft 0xd3t
        0x1t 0xd6t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x0t 0x0t
        0xeft 0xb2t
        0xf0t 0xb2t
        0xf2t 0xb2t
        0xf6t 0xb2t
        0xe7t 0xb9t
        0xe9t 0xb9t
        0xf0t 0xb9t
        0xf5t 0xb9t
        0xfbt 0xb9t
        0x4et 0xbct
        0x4ft 0xbct
        0x51t 0xbct
        0x52t 0xbct
        0xa5t 0xbet
        0xa7t 0xbet
        0xfat 0xc0t
        0xfbt 0xc0t
        0x0t 0xc1t
        0x2t 0xc1t
        0xfft 0xc0t
        0xf8t 0xc0t
        0x56t 0xc3t
        0x57t 0xc3t
        0x58t 0xc3t
        0x5bt 0xc3t
        0xaft 0xc5t
        0xbct 0xc5t
        0x13t 0xc8t
        0xbet 0xc5t
        0x11t 0xc8t
        0x12t 0xc8t
        0xfft 0xd5t
        0x53t 0xd8t
        0x55t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
        0x57t 0xd8t
    .end array-data

    .line 2149
    :array_7
    .array-data 0x2
        0x28t 0x0t
        0x5bt 0x0t
        0x7bt 0x0t
        0xa1t 0x0t
        0xabt 0x0t
        0xb6t 0x0t
        0xbft 0x0t
        0x18t 0x20t
        0x1at 0x20t
        0x1ct 0x20t
        0x1et 0x20t
        0x32t 0x20t
        0x33t 0x20t
        0x34t 0x20t
        0x39t 0x20t
        0x3ft 0x20t
        0x45t 0x20t
        0x7dt 0x20t
        0x8dt 0x20t
        0x66t 0x22t
        0x6at 0x22t
        0x8t 0x30t
        0xat 0x30t
        0xct 0x30t
        0xet 0x30t
        0x10t 0x30t
        0x14t 0x30t
        0x16t 0x30t
        0x18t 0x30t
        0x1at 0x30t
        0x1dt 0x30t
        0x2at 0x30t
        0x2ct 0x30t
        0x33t 0x30t
        0x34t 0x30t
        0x9bt 0x30t
        0xfct 0x30t
        0x8t 0xfft
        0x1ct 0xfft
        0x3bt 0xfft
        0x5bt 0xfft
        0x62t 0xfft
    .end array-data

    .line 2197
    :array_8
    .array-data 0x2
        0x21t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2et 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ft 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0xbbt 0x0t
        0x19t 0x20t
        0x1bt 0x20t
        0x1dt 0x20t
        0x1ft 0x20t
        0x27t 0x20t
        0x35t 0x20t
        0x36t 0x20t
        0x37t 0x20t
        0x3at 0x20t
        0x40t 0x20t
        0x46t 0x20t
        0x7et 0x20t
        0x8et 0x20t
        0x67t 0x22t
        0x6bt 0x22t
        0x1t 0x30t
        0x2t 0x30t
        0x9t 0x30t
        0xbt 0x30t
        0xdt 0x30t
        0xft 0x30t
        0x11t 0x30t
        0x15t 0x30t
        0x17t 0x30t
        0x19t 0x30t
        0x1bt 0x30t
        0x1et 0x30t
        0x2bt 0x30t
        0x2dt 0x30t
        0x35t 0x30t
        0x9ct 0x30t
        0xfbt 0x30t
        0x1t 0xfft
        0x9t 0xfft
        0xct 0xfft
        0xet 0xfft
        0x1at 0xfft
        0x1bt 0xfft
        0x1et 0xfft
        0x1ft 0xfft
        0x3dt 0xfft
        0x5dt 0xfft
        0x63t 0xfft
    .end array-data

    .line 2332
    nop

    :array_9
    .array-data 0x2
        0x2t 0x0t
        0x65t 0x0t
        0x53t 0x1t
    .end array-data

    nop

    :array_a
    .array-data 0x2
        0x1t 0x0t
        0x45t 0x0t
        0x52t 0x1t
    .end array-data

    nop

    :array_b
    .array-data 0x2
        0x4t 0x0t
        0x65t 0x0t
        0xe6t 0x0t
    .end array-data

    nop

    :array_c
    .array-data 0x2
        0x3t 0x0t
        0x45t 0x0t
        0xc6t 0x0t
    .end array-data

    nop

    :array_d
    .array-data 0x2
        0x5t 0x0t
        0x73t 0x0t
        0xdft 0x0t
    .end array-data

    .line 2340
    nop

    :array_e
    .array-data 0x2
        0x6ft 0x0t
        0x65t 0x0t
        0x53t 0x1t
    .end array-data

    nop

    :array_f
    .array-data 0x2
        0x4ft 0x0t
        0x45t 0x0t
        0x52t 0x1t
    .end array-data

    nop

    :array_10
    .array-data 0x2
        0x61t 0x0t
        0x65t 0x0t
        0xe6t 0x0t
    .end array-data

    nop

    :array_11
    .array-data 0x2
        0x41t 0x0t
        0x45t 0x0t
        0xc6t 0x0t
    .end array-data

    nop

    :array_12
    .array-data 0x2
        0x73t 0x0t
        0x73t 0x0t
        0xdft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final canBeTrimmed(C)Z
    .locals 2
    .parameter "a"

    .prologue
    const/4 v1, 0x1

    .line 2969
    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    move v0, v1

    .line 2987
    :goto_0
    return v0

    .line 2973
    :cond_0
    const/16 v0, 0x2000

    if-gt p0, v0, :cond_1

    const/16 v0, 0x200d

    if-lt p0, v0, :cond_1

    move v0, v1

    .line 2975
    goto :goto_0

    .line 2979
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 2987
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 2985
    goto :goto_0

    .line 2979
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0x202f -> :sswitch_0
        0x2060 -> :sswitch_0
        0xfeff -> :sswitch_0
    .end sparse-switch
.end method

.method public static final cannotEndLine(C)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 2301
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->cannot_end_line:[C

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->isInTable(C[C)Z

    move-result v0

    return v0
.end method

.method public static final cannotStartLine(C)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 2296
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->cannot_start_line:[C

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->isInTable(C[C)Z

    move-result v0

    return v0
.end method

.method public static charFromBuffer([BIII)[C
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "encoding"

    .prologue
    const/4 v3, 0x0

    .line 2444
    const/4 v0, 0x0

    .line 2445
    .local v0, result:[C
    sparse-switch p3, :sswitch_data_0

    .line 2460
    const/4 v0, 0x0

    .line 2462
    :cond_0
    :goto_0
    return-object v0

    .line 2449
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromUTF8Secure([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2450
    .local v1, temp:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_0

    .line 2452
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    new-array v0, v2, [C

    .line 2453
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 2457
    .end local v1           #temp:Ljava/lang/StringBuffer;
    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/mobipocket/common/parser/UnicodeWestern;->convertToChar([BII)[C

    move-result-object v0

    .line 2458
    goto :goto_0

    .line 2445
    :sswitch_data_0
    .sparse-switch
        0x4e4 -> :sswitch_1
        0xfde9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertFromUnicodeIndexEncoding([BII[CZ)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2721
    if-nez p0, :cond_0

    .line 2723
    const/4 v0, 0x0

    .line 2801
    :goto_0
    return-object v0

    .line 2728
    :cond_0
    if-eqz p4, :cond_2

    move v0, p2

    .line 2736
    :goto_1
    new-array v0, v0, [C

    move v1, v8

    move v2, v8

    .line 2739
    :goto_2
    if-ge v2, p2, :cond_4

    .line 2742
    if-eqz p4, :cond_3

    .line 2743
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 2745
    add-int/lit8 v2, v2, 0x1

    move v10, v3

    move v3, v2

    move v2, v10

    .line 2754
    :goto_3
    if-eqz p3, :cond_1

    .line 2755
    array-length v4, p3

    if-ge v2, v4, :cond_1

    .line 2759
    aget-char v2, p3, v2

    .line 2764
    :cond_1
    invoke-static {v2, v9}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeKanaToLongVowelMark(CZ)C

    move-result v2

    .line 2767
    add-int/lit8 v4, v1, 0x1

    aput-char v2, v0, v1

    move v1, v4

    move v2, v3

    .line 2768
    goto :goto_2

    .line 2732
    :cond_2
    div-int/lit8 v0, p2, 0x2

    goto :goto_1

    .line 2748
    :cond_3
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int v4, p1, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 2751
    add-int/lit8 v2, v2, 0x2

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_3

    .line 2771
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [C

    .line 2772
    aput-char v8, v2, v9

    move v3, v9

    move v4, v8

    move v5, v8

    .line 2777
    :goto_4
    if-ge v5, v1, :cond_6

    .line 2778
    aget-char v6, v2, v9

    aput-char v6, v2, v8

    .line 2779
    aget-char v6, v0, v5

    aput-char v6, v2, v9

    .line 2780
    if-nez v3, :cond_5

    .line 2783
    invoke-static {v2, v9}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeLigature([CZ)Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    move-result-object v3

    .line 2784
    iget v6, v3, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->inSize:I

    .line 2785
    iget-object v3, v3, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    aget-char v3, v3, v8

    .line 2786
    add-int/lit8 v7, v4, 0x1

    aput-char v3, v0, v4

    move v3, v6

    move v4, v7

    .line 2790
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 2777
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2792
    :cond_6
    if-nez v3, :cond_7

    if-lt v1, v9, :cond_7

    .line 2793
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v2, v9

    aput-char v2, v0, v4

    .line 2798
    :goto_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 2801
    goto/16 :goto_0

    :cond_7
    move v1, v4

    goto :goto_5
.end method

.method public static convertIndexEncodingFromWestern([BII[BZ)[B
    .locals 11
    .parameter "src"
    .parameter "begin"
    .parameter "length"
    .parameter "ligTable"
    .parameter "toIndexEnc"

    .prologue
    .line 2646
    if-nez p0, :cond_0

    .line 2648
    const/4 p0, 0x0

    .line 2708
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 2650
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    shl-int/lit8 v0, p2, 0x1

    new-array v3, v0, [B

    .line 2651
    .local v3, dest:[B
    const/4 v0, 0x0

    .line 2659
    .local v0, destLength:I
    array-length v1, p3

    shr-int/lit8 v9, v1, 0x2

    .line 2660
    .local v9, tabSize:I
    add-int v6, p1, p2

    .line 2661
    .local v6, end:I
    move p1, p1

    .local p1, i:I
    move v2, p1

    .end local p1           #i:I
    .local v2, i:I
    move v1, v0

    .end local v0           #destLength:I
    .end local p2
    .local v1, destLength:I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 2663
    aget-byte p1, p0, v2

    .line 2664
    .local p1, c1:B
    add-int/lit8 p2, v2, 0x1

    if-ge p2, v6, :cond_2

    .line 2665
    add-int/lit8 p2, v2, 0x1

    aget-byte p2, p0, p2

    .line 2668
    .local p2, c2:B
    :goto_2
    const/4 v4, 0x0

    .line 2670
    .local v4, used:Z
    const/4 v0, 0x0

    .local v0, ck:I
    move v7, v2

    .end local v2           #i:I
    .local v7, i:I
    move v10, v4

    .end local v4           #used:Z
    .local v10, used:Z
    move v5, v1

    .end local v1           #destLength:I
    .local v5, destLength:I
    :goto_3
    if-ge v0, v9, :cond_5

    .line 2672
    shl-int/lit8 v2, v0, 0x2

    .line 2673
    .local v2, k:I
    if-eqz p4, :cond_3

    .line 2674
    aget-byte v1, p3, v2

    .line 2677
    .local v1, s1:B
    :goto_4
    if-ne v1, p1, :cond_a

    .line 2679
    if-eqz p4, :cond_4

    .line 2681
    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p3, v1

    .line 2682
    .end local v1           #s1:B
    .local v4, s2:B
    add-int/lit8 v1, v2, 0x2

    aget-byte v1, p3, v1

    .line 2683
    .local v1, d1:B
    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p3, v2

    .local v2, d2:B
    move v8, v4

    .line 2691
    .end local v4           #s2:B
    .local v8, s2:B
    :goto_5
    if-eqz v8, :cond_1

    if-ne v8, p2, :cond_a

    .line 2693
    :cond_1
    const/4 v10, 0x1

    .line 2694
    add-int/lit8 v4, v5, 0x1

    .end local v5           #destLength:I
    .local v4, destLength:I
    aput-byte v1, v3, v5

    .line 2695
    if-eqz v2, :cond_9

    .line 2696
    add-int/lit8 v1, v4, 0x1

    .end local v4           #destLength:I
    .local v1, destLength:I
    aput-byte v2, v3, v4

    .line 2697
    :goto_6
    if-ne v8, p2, :cond_8

    if-eqz p2, :cond_8

    .line 2698
    add-int/lit8 v2, v7, 0x1

    .end local v7           #i:I
    .local v2, i:I
    move v4, v10

    .line 2670
    .end local v8           #s2:B
    .end local v10           #used:Z
    .local v4, used:Z
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v7, v2

    .end local v2           #i:I
    .restart local v7       #i:I
    move v10, v4

    .end local v4           #used:Z
    .restart local v10       #used:Z
    move v5, v1

    .end local v1           #destLength:I
    .restart local v5       #destLength:I
    goto :goto_3

    .line 2667
    .end local v0           #ck:I
    .end local v5           #destLength:I
    .end local v7           #i:I
    .end local v10           #used:Z
    .end local p2           #c2:B
    .restart local v1       #destLength:I
    .restart local v2       #i:I
    :cond_2
    const/4 p2, 0x0

    .restart local p2       #c2:B
    goto :goto_2

    .line 2676
    .end local v1           #destLength:I
    .restart local v0       #ck:I
    .local v2, k:I
    .restart local v5       #destLength:I
    .restart local v7       #i:I
    .restart local v10       #used:Z
    :cond_3
    add-int/lit8 v1, v2, 0x2

    aget-byte v1, p3, v1

    .local v1, s1:B
    goto :goto_4

    .line 2687
    :cond_4
    add-int/lit8 v1, v2, 0x3

    aget-byte v4, p3, v1

    .line 2688
    .end local v1           #s1:B
    .local v4, s2:B
    aget-byte v1, p3, v2

    .line 2689
    .local v1, d1:B
    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p3, v2

    .local v2, d2:B
    move v8, v4

    .end local v4           #s2:B
    .restart local v8       #s2:B
    goto :goto_5

    .line 2703
    .end local v1           #d1:B
    .end local v2           #d2:B
    .end local v8           #s2:B
    :cond_5
    if-nez v10, :cond_7

    .line 2704
    add-int/lit8 p2, v5, 0x1

    .end local v5           #destLength:I
    .local p2, destLength:I
    aput-byte p1, v3, v5

    move p1, p2

    .line 2661
    .end local p2           #destLength:I
    .local p1, destLength:I
    :goto_8
    add-int/lit8 p2, v7, 0x1

    .end local v7           #i:I
    .local p2, i:I
    move v2, p2

    .end local p2           #i:I
    .local v2, i:I
    move v1, p1

    .end local p1           #destLength:I
    .local v1, destLength:I
    goto :goto_1

    .line 2706
    .end local v0           #ck:I
    .end local v10           #used:Z
    :cond_6
    new-array p0, v1, [B

    .line 2707
    .local p0, result:[B
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v3, p1, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v1           #destLength:I
    .end local v2           #i:I
    .restart local v0       #ck:I
    .restart local v5       #destLength:I
    .restart local v7       #i:I
    .restart local v10       #used:Z
    .local p0, src:[B
    .local p1, c1:B
    .local p2, c2:B
    :cond_7
    move p1, v5

    .end local v5           #destLength:I
    .local p1, destLength:I
    goto :goto_8

    .restart local v1       #destLength:I
    .local v2, d2:B
    .restart local v8       #s2:B
    .local p1, c1:B
    :cond_8
    move v2, v7

    .end local v7           #i:I
    .local v2, i:I
    move v4, v10

    .end local v10           #used:Z
    .local v4, used:Z
    goto :goto_7

    .local v1, d1:B
    .local v2, d2:B
    .local v4, destLength:I
    .restart local v7       #i:I
    .restart local v10       #used:Z
    :cond_9
    move v1, v4

    .end local v4           #destLength:I
    .local v1, destLength:I
    goto :goto_6

    .end local v1           #destLength:I
    .end local v2           #d2:B
    .end local v8           #s2:B
    .restart local v5       #destLength:I
    :cond_a
    move v2, v7

    .end local v7           #i:I
    .local v2, i:I
    move v4, v10

    .end local v10           #used:Z
    .local v4, used:Z
    move v1, v5

    .end local v5           #destLength:I
    .restart local v1       #destLength:I
    goto :goto_7
.end method

.method public static convertToUnicodeIndexEncoding(Ljava/lang/String;Z[C)[C
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2827
    const/4 v0, 0x0

    .line 2829
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2833
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 2835
    const/4 v2, 0x0

    .line 2836
    const/4 v3, 0x0

    .line 2837
    const/4 v4, 0x0

    .line 2838
    const/4 v5, 0x0

    move v12, v3

    move v3, v4

    move v4, v2

    move v2, v12

    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_6

    .line 2843
    aget-char v6, p0, v5

    .line 2846
    if-lez v6, :cond_5

    .line 2851
    invoke-static {v3}, Lcom/mobipocket/common/parser/UnicodeUtils;->kanaVowel(C)C

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    .line 2857
    :cond_0
    const/4 v3, 0x1

    invoke-static {v6, v2, v3}, Lcom/mobipocket/common/parser/UnicodeUtils;->kanaFromLongVowelMark(CCZ)C

    move-result v3

    .line 2860
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeUnligature(CZ)Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    move-result-object v6

    .line 2863
    const/4 v7, 0x0

    move v12, v7

    move v7, v4

    move v4, v0

    move v0, v12

    :goto_1
    iget-object v8, v6, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    array-length v8, v8

    if-ge v0, v8, :cond_4

    .line 2866
    const/4 v8, 0x0

    .line 2867
    iget-object v9, v6, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    aget-char v9, v9, v0

    .line 2869
    if-eqz p2, :cond_1

    .line 2872
    invoke-static {v9}, Lcom/mobipocket/common/parser/UnicodeUtils;->isOrdered(C)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v9}, Lcom/mobipocket/common/parser/UnicodeUtils;->isHangul(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2874
    invoke-static {v9, p2}, Lcom/mobipocket/common/parser/UnicodeUtils;->findUnicodeIndexChar(C[C)I

    move-result v10

    .line 2877
    const/4 v11, -0x1

    if-ne v10, v11, :cond_9

    .line 2878
    invoke-static {v9}, Lcom/mobipocket/common/parser/UnicodeUtils;->sortOrder(C)C

    move-result v8

    .line 2880
    invoke-static {v8, p2}, Lcom/mobipocket/common/parser/UnicodeUtils;->findUnicodeIndexChar(C[C)I

    move-result v8

    .line 2881
    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v9, 0x1

    .line 2884
    :goto_2
    int-to-char v8, v8

    move v12, v9

    move v9, v8

    move v8, v12

    .line 2902
    :cond_1
    :goto_3
    if-eqz v8, :cond_8

    .line 2903
    const/4 v4, 0x0

    .line 2904
    const/4 v8, 0x1

    move v12, v8

    move v8, v4

    move v4, v12

    .line 2908
    :goto_4
    aput-char v8, v1, v7

    .line 2909
    add-int/lit8 v7, v7, 0x1

    .line 2863
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2881
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    move v8, p1

    .line 2887
    goto :goto_3

    :cond_4
    move v0, v4

    move v4, v7

    .line 2838
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2914
    :cond_6
    if-eqz v0, :cond_7

    .line 2915
    const/4 p0, 0x0

    .line 2921
    :goto_5
    return-object p0

    .line 2918
    :cond_7
    new-array p0, v4, [C

    .line 2919
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v1, p1, p0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_8
    move v8, v9

    goto :goto_4

    :cond_9
    move v9, v8

    move v8, v10

    goto :goto_2
.end method

.method private static final findUnicodeIndexChar(C[C)I
    .locals 2
    .parameter "a"
    .parameter "charTable"

    .prologue
    .line 2808
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2809
    aget-char v1, p1, v0

    if-ne v1, p0, :cond_0

    move v1, v0

    .line 2814
    :goto_1
    return v1

    .line 2808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2814
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isHangul(C)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 465
    const v0, 0xac00

    if-lt p0, v0, :cond_0

    const v0, 0xd7af

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isIdeograph(C)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 2926
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_0

    const v0, 0x9faf

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xf900

    if-lt p0, v0, :cond_1

    const v0, 0xfaff

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_3

    const/16 v0, 0x2fdf

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isIdeographic(C)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 2939
    invoke-static {p0}, Lcom/mobipocket/common/parser/UnicodeUtils;->isIdeograph(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x3000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x32ff

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_1

    const/16 v0, 0x11ff

    if-le p0, v0, :cond_3

    :cond_1
    const v0, 0xac00

    if-lt p0, v0, :cond_2

    const v0, 0xd7af

    if-le p0, v0, :cond_3

    :cond_2
    const v0, 0xff00

    if-lt p0, v0, :cond_4

    const v0, 0xffee

    if-gt p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isInTable(C[C)Z
    .locals 6
    .parameter "a"
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2265
    const/4 v0, 0x0

    .line 2266
    .local v0, left:I
    array-length v3, p1

    sub-int v2, v3, v4

    .line 2268
    .local v2, right:I
    if-lt v0, v2, :cond_1

    move v3, v5

    .line 2282
    :goto_0
    return v3

    .line 2285
    .local v1, middle:I
    :cond_0
    aget-char v3, p1, v1

    if-ge p0, v3, :cond_4

    .line 2286
    move v2, v1

    .line 2274
    .end local v1           #middle:I
    :cond_1
    :goto_1
    add-int v3, v0, v2

    div-int/lit8 v1, v3, 0x2

    .line 2275
    .restart local v1       #middle:I
    aget-char v3, p1, v1

    if-ne v3, p0, :cond_2

    move v3, v4

    .line 2276
    goto :goto_0

    .line 2277
    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-char v3, p1, v3

    if-ne v3, p0, :cond_3

    move v3, v4

    .line 2278
    goto :goto_0

    .line 2280
    :cond_3
    if-ne v1, v0, :cond_0

    move v3, v5

    .line 2282
    goto :goto_0

    .line 2289
    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static isOrdered(C)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 451
    if-ltz p0, :cond_0

    const/16 v0, 0x300

    if-lt p0, v0, :cond_9

    :cond_0
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3100

    if-lt p0, v0, :cond_9

    :cond_1
    const v0, 0xff00

    if-lt p0, v0, :cond_2

    const v0, 0xffa0

    if-lt p0, v0, :cond_9

    :cond_2
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_3

    const/16 v0, 0x11fa

    if-lt p0, v0, :cond_9

    :cond_3
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_4

    const/16 v0, 0x318f

    if-lt p0, v0, :cond_9

    :cond_4
    const v0, 0xac00

    if-lt p0, v0, :cond_5

    const v0, 0xd7a4

    if-lt p0, v0, :cond_9

    :cond_5
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_6

    const/16 v0, 0x206f

    if-le p0, v0, :cond_9

    :cond_6
    const/16 v0, 0x2190

    if-lt p0, v0, :cond_7

    const/16 v0, 0x23ff

    if-le p0, v0, :cond_9

    :cond_7
    const/16 v0, 0x2500

    if-lt p0, v0, :cond_8

    const/16 v0, 0x27ff

    if-le p0, v0, :cond_9

    :cond_8
    const/16 v0, 0x2900

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bff

    if-gt p0, v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static kanaFromLongVowelMark(CCZ)C
    .locals 5
    .parameter "a"
    .parameter "prev_a"
    .parameter "mobipocket_special_codes"

    .prologue
    const v4, 0xff70

    .line 127
    move v1, p0

    .line 128
    .local v1, r:C
    const/16 v3, 0x30fc

    if-eq p0, v3, :cond_0

    if-ne p0, v4, :cond_1

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/parser/UnicodeUtils;->kanaVowel(C)C

    move-result v2

    .line 130
    .local v2, w:C
    if-eqz v2, :cond_1

    .line 131
    if-ne p0, v4, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 133
    .local v0, half_width:Z
    :goto_0
    if-eqz p2, :cond_8

    .line 134
    packed-switch v2, :pswitch_data_0

    .line 157
    .end local v0           #half_width:Z
    .end local v2           #w:C
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    .line 131
    .restart local v2       #w:C
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 136
    .restart local v0       #half_width:Z
    :pswitch_1
    if-eqz v0, :cond_3

    const/16 v3, 0x10

    move v1, v3

    .line 137
    :goto_2
    goto :goto_1

    .line 136
    :cond_3
    const/16 v3, 0x3095

    move v1, v3

    goto :goto_2

    .line 139
    :pswitch_2
    if-eqz v0, :cond_4

    const/16 v3, 0x11

    move v1, v3

    .line 140
    :goto_3
    goto :goto_1

    .line 139
    :cond_4
    const/16 v3, 0x3096

    move v1, v3

    goto :goto_3

    .line 142
    :pswitch_3
    if-eqz v0, :cond_5

    const/16 v3, 0x12

    move v1, v3

    .line 143
    :goto_4
    goto :goto_1

    .line 142
    :cond_5
    const/16 v3, 0x3097

    move v1, v3

    goto :goto_4

    .line 145
    :pswitch_4
    if-eqz v0, :cond_6

    const/16 v3, 0x13

    move v1, v3

    .line 146
    :goto_5
    goto :goto_1

    .line 145
    :cond_6
    const/16 v3, 0x3098

    move v1, v3

    goto :goto_5

    .line 148
    :pswitch_5
    if-eqz v0, :cond_7

    const/16 v3, 0x14

    move v1, v3

    :goto_6
    goto :goto_1

    :cond_7
    const/16 v3, 0x309f

    move v1, v3

    goto :goto_6

    .line 153
    :cond_8
    move v1, v2

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x3042
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static kanaVowel(C)C
    .locals 4
    .parameter "a"

    .prologue
    const/16 v3, 0x3041

    const v2, 0xff66

    .line 434
    if-lt p0, v3, :cond_1

    sget-object v1, Lcom/mobipocket/common/parser/UnicodeUtils;->VOWEL_japanese_kana:[C

    array-length v1, v1

    add-int/lit16 v1, v1, 0x3041

    if-ge p0, v1, :cond_1

    .line 435
    sget-object v1, Lcom/mobipocket/common/parser/UnicodeUtils;->VOWEL_japanese_kana:[C

    sub-int v2, p0, v3

    aget-char v0, v1, v2

    .line 443
    .local v0, vowel:C
    :goto_0
    if-lez v0, :cond_0

    .line 444
    add-int/lit16 v1, v0, 0x3000

    int-to-char v0, v1

    .line 446
    :cond_0
    return v0

    .line 436
    .end local v0           #vowel:C
    :cond_1
    if-lt p0, v2, :cond_2

    sget-object v1, Lcom/mobipocket/common/parser/UnicodeUtils;->VOWEL_japanese_half_width_kana:[C

    array-length v1, v1

    add-int/2addr v1, v2

    if-ge p0, v1, :cond_2

    .line 437
    sget-object v1, Lcom/mobipocket/common/parser/UnicodeUtils;->VOWEL_japanese_half_width_kana:[C

    sub-int v2, p0, v2

    aget-char v0, v1, v2

    .restart local v0       #vowel:C
    goto :goto_0

    .line 439
    .end local v0           #vowel:C
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #vowel:C
    goto :goto_0
.end method

.method public static final sortOrder(C)C
    .locals 5
    .parameter "a"

    .prologue
    const v4, 0xff00

    const/16 v3, 0x3131

    const/16 v2, 0x3000

    const/16 v1, 0x1100

    .line 2306
    if-ltz p0, :cond_0

    const/16 v0, 0x300

    if-ge p0, v0, :cond_0

    .line 2307
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_latin:[C

    aget-char v0, v0, p0

    .line 2326
    :goto_0
    return v0

    .line 2309
    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x3100

    if-ge p0, v0, :cond_1

    .line 2310
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_japanese_kana:[C

    sub-int v1, p0, v2

    aget-char v0, v0, v1

    goto :goto_0

    .line 2312
    :cond_1
    if-lt p0, v4, :cond_2

    const v0, 0xffa0

    if-ge p0, v0, :cond_2

    .line 2313
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_alt_width_latin_and_kana:[C

    sub-int v1, p0, v4

    aget-char v0, v0, v1

    goto :goto_0

    .line 2315
    :cond_2
    if-lt p0, v1, :cond_3

    const/16 v0, 0x11fa

    if-ge p0, v0, :cond_3

    .line 2316
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_hangul_jamo:[C

    sub-int v1, p0, v1

    aget-char v0, v0, v1

    goto :goto_0

    .line 2318
    :cond_3
    if-lt p0, v3, :cond_4

    const/16 v0, 0x318f

    if-ge p0, v0, :cond_4

    .line 2319
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->SORTORDER_unicode_hangul_compajamo:[C

    sub-int v1, p0, v3

    aget-char v0, v0, v1

    goto :goto_0

    .line 2326
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringFromEncoding([BIII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2409
    sparse-switch p3, :sswitch_data_0

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoding not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 2432
    :goto_0
    return-object v0

    .line 2411
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromUTF8Secure([BII)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 2412
    if-eqz v0, :cond_0

    .line 2414
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2420
    goto :goto_0

    .line 2422
    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromWestern([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2425
    :sswitch_2
    invoke-static {p0, p1, p2}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromUTF16BE([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2409
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e4 -> :sswitch_1
        0xfde9 -> :sswitch_0
        0xfdea -> :sswitch_2
    .end sparse-switch
.end method

.method public static stringFromUTF16BE([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 2490
    shr-int/lit8 v0, p2, 0x1

    .line 2491
    .local v0, finalSize:I
    new-array v2, v0, [C

    .line 2493
    .local v2, rep:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2494
    aget-byte v3, p0, p1

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-short v4, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 2497
    add-int/lit8 p1, p1, 0x2

    .line 2493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2499
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static final stringFromUTF8Secure([BII)Ljava/lang/StringBuffer;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2543
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 2544
    :cond_0
    const/4 v0, 0x0

    .line 2600
    :cond_1
    return-object v0

    .line 2546
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2547
    add-int v1, p1, p2

    move v2, p1

    .line 2550
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2552
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4

    .line 2557
    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 2590
    :goto_1
    const/high16 v4, 0x1

    if-lt v2, v4, :cond_7

    .line 2592
    ushr-int/lit8 v4, v2, 0xa

    int-to-char v4, v4

    const v5, 0xd7c0

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2593
    and-int/lit16 v2, v2, 0x3ff

    int-to-char v2, v2

    const v4, 0xdc00

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_0

    .line 2560
    :cond_4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_5

    .line 2563
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    move v3, v4

    goto :goto_1

    .line 2568
    :cond_5
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_6

    .line 2575
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    goto :goto_1

    .line 2582
    :cond_6
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    move v3, v4

    goto :goto_1

    .line 2597
    :cond_7
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    goto/16 :goto_0
.end method

.method public static stringFromWestern([BII)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 2625
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/mobipocket/common/parser/UnicodeWestern;->convertToChar([BII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static stringToEncoding(Ljava/lang/String;I)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2467
    sparse-switch p1, :sswitch_data_0

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoding not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2479
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2469
    :sswitch_0
    invoke-static {p0}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringToUTF8(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 2472
    :sswitch_1
    invoke-static {p0}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringToWestern(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 2475
    :sswitch_2
    invoke-static {p0}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringToUTF16BE(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 2467
    :sswitch_data_0
    .sparse-switch
        0x4e4 -> :sswitch_1
        0xfde9 -> :sswitch_0
        0xfdea -> :sswitch_2
    .end sparse-switch
.end method

.method public static stringToUTF16BE(Ljava/lang/String;)[B
    .locals 8
    .parameter "str"

    .prologue
    .line 2504
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2505
    .local v3, rep:[C
    array-length v7, v3

    mul-int/lit8 v5, v7, 0x2

    .line 2506
    .local v5, size:I
    new-array v4, v5, [B

    .line 2510
    .local v4, result:[B
    const/4 v1, 0x0

    .line 2511
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_0

    .line 2512
    aget-char v6, v3, v0

    .line 2514
    .local v6, value:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #offset:I
    .local v2, offset:I
    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    .line 2515
    add-int/lit8 v1, v2, 0x1

    .end local v2           #offset:I
    .restart local v1       #offset:I
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 2511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2518
    .end local v6           #value:I
    :cond_0
    return-object v4
.end method

.method public static stringToUTF8(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 2607
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2610
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringToWestern(Ljava/lang/String;)[B
    .locals 1
    .parameter "str"

    .prologue
    .line 2630
    invoke-static {p0}, Lcom/mobipocket/common/parser/UnicodeWestern;->convert(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2950
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v3

    .line 2952
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeUtils;->canBeTrimmed(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2955
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2957
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2958
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2959
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2960
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeUtils;->canBeTrimmed(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2962
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2964
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unicodeKanaToLongVowelMark(CZ)C
    .locals 1
    .parameter "a"
    .parameter "mobipocket_special_codes"

    .prologue
    .line 99
    move v0, p0

    .line 100
    .local v0, r:C
    if-eqz p1, :cond_0

    .line 101
    sparse-switch p0, :sswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 107
    :sswitch_0
    const v0, 0xff70

    .line 108
    goto :goto_0

    .line 115
    :sswitch_1
    const/16 v0, 0x30fc

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x3095 -> :sswitch_1
        0x3096 -> :sswitch_1
        0x3097 -> :sswitch_1
        0x3098 -> :sswitch_1
        0x309f -> :sswitch_1
    .end sparse-switch
.end method

.method private static final unicodeLigature([CZ)Lcom/mobipocket/common/parser/UnicodeLigatureResult;
    .locals 1
    .parameter "in"
    .parameter "mobipocket_special_codes"

    .prologue
    .line 2371
    if-eqz p1, :cond_0

    .line 2373
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->mobipocketSpecialCodesLigatureTable:[[C

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeLigatureWithTable([C[[C)Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    move-result-object v0

    .line 2377
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->ligatureTable:[[C

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeLigatureWithTable([C[[C)Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static final unicodeLigatureWithTable([C[[C)Lcom/mobipocket/common/parser/UnicodeLigatureResult;
    .locals 6
    .parameter "in"
    .parameter "table"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2355
    aget-char v1, p0, v3

    aget-object v2, p1, v0

    aget-char v2, v2, v3

    if-ne v1, v2, :cond_0

    aget-char v1, p0, v4

    aget-object v2, p1, v0

    aget-char v2, v2, v4

    if-ne v1, v2, :cond_0

    .line 2357
    new-instance v1, Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    aget-object v2, p1, v0

    aget-char v2, v2, v5

    invoke-direct {v1, v5, v2}, Lcom/mobipocket/common/parser/UnicodeLigatureResult;-><init>(IC)V

    .line 2361
    :goto_1
    return-object v1

    .line 2354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    :cond_1
    new-instance v1, Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    aget-char v2, p0, v3

    invoke-direct {v1, v4, v2}, Lcom/mobipocket/common/parser/UnicodeLigatureResult;-><init>(IC)V

    goto :goto_1
.end method

.method private static final unicodeUnligature(CZ)Lcom/mobipocket/common/parser/UnicodeLigatureResult;
    .locals 1
    .parameter "in"
    .parameter "mobipocket_special_codes"

    .prologue
    .line 2396
    if-eqz p1, :cond_0

    .line 2397
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->mobipocketSpecialCodesLigatureTable:[[C

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeUnligatureWithTable(C[[C)Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    move-result-object v0

    .line 2400
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mobipocket/common/parser/UnicodeUtils;->ligatureTable:[[C

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->unicodeUnligatureWithTable(C[[C)Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static final unicodeUnligatureWithTable(C[[C)Lcom/mobipocket/common/parser/UnicodeLigatureResult;
    .locals 5
    .parameter "in"
    .parameter "table"

    .prologue
    const/4 v4, 0x1

    .line 2385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2386
    aget-object v1, p1, v0

    const/4 v2, 0x2

    aget-char v1, v1, v2

    if-ne p0, v1, :cond_0

    .line 2387
    new-instance v1, Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-char v2, v2, v3

    aget-object v3, p1, v0

    aget-char v3, v3, v4

    invoke-direct {v1, v4, v2, v3}, Lcom/mobipocket/common/parser/UnicodeLigatureResult;-><init>(ICC)V

    .line 2391
    :goto_1
    return-object v1

    .line 2385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2391
    :cond_1
    new-instance v1, Lcom/mobipocket/common/parser/UnicodeLigatureResult;

    invoke-direct {v1, v4, p0}, Lcom/mobipocket/common/parser/UnicodeLigatureResult;-><init>(IC)V

    goto :goto_1
.end method
