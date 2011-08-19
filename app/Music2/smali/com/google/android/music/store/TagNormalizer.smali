.class public Lcom/google/android/music/store/TagNormalizer;
.super Ljava/lang/Object;
.source "TagNormalizer.java"


# static fields
.field private static TO_LOWER_LATIN:[C = null

.field private static final YYEOF:I = -0x1

.field private static final YYINITIAL:I = 0x0

.field private static final ZEROS:Ljava/lang/String; = "0000000000"

.field private static final ZZ_ACTION:[I = null

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0002\u0002\u0001\u0003\u0001\u0001\u0001\u0004\u0001\u0002\u0001\u0001\u0007\u0002\u0001\u0003\u0001\u0001\u0001\u0002\u0007\u0000\u0001\u0005\u000b\u0000\u0002\u0002\u0004\u0006\u0004\u0002\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0007\u0002\u0000\u0002\u0008\u0003\u0000\u0001\t\u0001\u0002\u0004\u0000\u0001\u0003\u0006\u0000\u0001\n\u0001\u0007\u0001\u0000\u0003\u0008\u0002\u0000\u0001\u000b\u0001\u0000\u0001\n"

.field private static final ZZ_ATTRIBUTE:[I = null

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0012\u0001\u0007\u0000\u0001\u0001\u000b\u0000\u0002\u0001\u0001\t\u0007\u0001\u0001\u0000\u0001\t\u0001\u0000\u0001\u0001\u0002\u0000\u0002\u0001\u0003\u0000\u0002\u0001\u0004\u0000\u0001\u0001\u0006\u0000\u0002\u0001\u0001\u0000\u0001\t\u0002\u0001\u0002\u0000\u0001\u0001\u0001\u0000\u0001\u0001"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C = null

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0002\u0001\u0017\u0015\u0000\u0001\u0016\u0001\u001b\u0001\u0006\u0001\u0018\u0002\u0006\u0001\u0013\u0005\u0006\u0001\u0015\u0001\u0006\u0001\u0004\u0001\u0006\n\u0019\u0002\u0001\u0005\u0006\u001a\u0003\u0006\u0006\u0001\n\u0002\u0003\u0001\u000f\u0001\t\u0002\u0003\u0001\u0008\u0001\u0011\u0001\u0003\u0001\u001c\u0001\u000c\u0001\u0010\u0001\u000b\u0001\u0012\u0001\u001a\u0001\u0003\u0001\u0010\u0001\r\u0001\u0007\u0001\u000e\u0003\u0003\u0001\u0014\u0001\u0003\u0004\u0006+\u0000\u0001\u0003\n\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0005\u0000\u0017\u0003\u0001\u0000\u001f\u0003\u0001\u0000\u013f\u0003\u0019\u0000r\u0003\u0004\u0000\u000c\u0003\u000e\u0000\u0005\u0003\t\u0000\u0001\u0003\u008b\u0000\u0001\u0003\u000b\u0000\u0001\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0014\u0003\u0001\u0000,\u0003\u0001\u0000&\u0003\u0001\u0000\u0005\u0003\u0004\u0000\u0082\u0003\u0008\u0000E\u0003\u0001\u0000&\u0003\u0002\u0000\u0002\u0003\u0006\u0000\u0010\u0003!\u0000&\u0003\u0002\u0000\u0001\u0003\u0007\u0000\'\u0003H\u0000\u001b\u0003\u0005\u0000\u0003\u0003.\u0000\u001a\u0003\u0005\u0000\u000b\u0003\u0015\u0000\n\u0005\u0004\u0000\u0002\u0003\u0001\u0000c\u0003\u0001\u0000\u0001\u0003\u000f\u0000\u0002\u0003\u0007\u0000\u0002\u0003\n\u0005\u0003\u0003\u0002\u0000\u0001\u0003\u0010\u0000\u0001\u0003\u0001\u0000\u001e\u0003\u001d\u0000\u0003\u00030\u0000&\u0003\u000b\u0000\u0001\u0003\u0152\u00006\u0003\u0003\u0000\u0001\u0003\u0012\u0000\u0001\u0003\u0007\u0000\n\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0002\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0004\u0003\u0003\u0000\u0001\u0003\u001e\u0000\u0002\u0003\u0001\u0000\u0003\u0003\u0004\u0000\n\u0005\u0002\u0003\u0013\u0000\u0006\u0003\u0004\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u001f\u0000\u0004\u0003\u0001\u0000\u0001\u0003\u0007\u0000\n\u0005\u0002\u0000\u0003\u0003\u0010\u0000\t\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003\u0012\u0000\u0001\u0003\u000f\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0002\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003\u001e\u0000\u0002\u0003\u0001\u0000\u0003\u0003\u0004\u0000\n\u0005\u0001\u0000\u0001\u0003\u0011\u0000\u0001\u0003\u0001\u0000\u0006\u0003\u0003\u0000\u0003\u0003\u0001\u0000\u0004\u0003\u0003\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0003\u0000\u0002\u0003\u0003\u0000\u0003\u0003\u0003\u0000\u0008\u0003\u0001\u0000\u0003\u0003-\u0000\t\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\n\u0003\u0001\u0000\u0005\u0003&\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\n\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003 \u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\u0010\u0003&\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0012\u0003\u0003\u0000\u0018\u0003\u0001\u0000\t\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0007\u0003:\u00000\u0003\u0001\u0000\u0002\u0003\u000c\u0000\u0007\u0003\t\u0000\n\u0005\'\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0001\u0003\u0006\u0000\u0004\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0002\u0003\u0001\u0000\u0004\u0003\u0001\u0000\u0002\u0003\t\u0000\u0001\u0003\u0002\u0000\u0005\u0003\u0001\u0000\u0001\u0003\t\u0000\n\u0005\u0002\u0000\u0002\u0003\"\u0000\u0001\u0003\u001f\u0000\n\u0005\u0016\u0000\u0008\u0003\u0001\u0000\"\u0003\u001d\u0000\u0004\u0003t\u0000\"\u0003\u0001\u0000\u0005\u0003\u0001\u0000\u0002\u0003\u0015\u0000\n\u0005\u0006\u0000\u0006\u0003J\u0000&\u0003\n\u0000)\u0003\u0007\u0000Z\u0003\u0005\u0000D\u0003\u0005\u0000R\u0003\u0006\u0000\u0007\u0003\u0001\u0000?\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\'\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u001f\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0017\u0003\u0001\u0000\u001f\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\'\u0003\u0001\u0000\u0013\u0003\u000e\u0000\t\u0005.\u0000U\u0003\u000c\u0000\u026c\u0003\u0002\u0000\u0008\u0003\n\u0000\u001a\u0003\u0005\u0000K\u0003\u0015\u0000\r\u0003\u0001\u0000\u0004\u0003\u000e\u0000\u0012\u0003\u000e\u0000\u0012\u0003\u000e\u0000\r\u0003\u0001\u0000\u0003\u0003\u000f\u00004\u0003#\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0003\u0000\n\u0005&\u0000\n\u0005\u0006\u0000X\u0003\u0008\u0000)\u0003W\u0000\u001d\u0003)\u0000\n\u0005\u001e\u0003\u0002\u0000\u0005\u0003\u038b\u0000l\u0003\u0094\u0000\u009c\u0003\u0004\u0000Z\u0003\u0006\u0000\u0016\u0003\u0002\u0000\u0006\u0003\u0002\u0000&\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0008\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u001f\u0003\u0002\u00005\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0003\u0003\u0001\u0000\u0007\u0003\u0003\u0000\u0004\u0003\u0002\u0000\u0006\u0003\u0004\u0000\r\u0003\u0005\u0000\u0003\u0003\u0001\u0000\u0007\u0003t\u0000\u0001\u0003\r\u0000\u0001\u0003\u0082\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0002\u0000\n\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0005\u0003\u0006\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0007\u0003\u0003\u0000\u0003\u0003\u0005\u0000\u0005\u0003\u0ebb\u0000\u0002\u0003*\u0000\u0005\u0003\u0005\u0000\u0002\u0003\u0004\u0000V\u0003\u0006\u0000\u0003\u0003\u0001\u0000Z\u0003\u0001\u0000\u0004\u0003\u0005\u0000(\u0003\u0004\u0000^\u0003\u0011\u0000\u0018\u00038\u0000\u0010\u0003\u0200\u0000\u19b6\u0003J\u0000\u51a6\u0003Z\u0000\u048d\u0003\u0773\u0000\u2ba4\u0003\u215c\u0000\u012e\u0003\u0002\u0000;\u0003\u0095\u0000\u0007\u0003\u000c\u0000\u0005\u0003\u0005\u0000\u0001\u0003\u0001\u0000\n\u0003\u0001\u0000\r\u0003\u0001\u0000\u0005\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u0001\u0000l\u0003!\u0000\u016b\u0003\u0012\u0000@\u0003\u0002\u00006\u0003(\u0000\u000c\u0003t\u0000\u0005\u0003\u0001\u0000\u0087\u0003\u0013\u0000\n\u0005\u0007\u0000\u001a\u0003\u0006\u0000\u001a\u0003\u000b\u0000Y\u0003\u0003\u0000\u0006\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0003\u0003#\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String; = null

.field private static final ZZ_LEXSTATE:[I = null

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I = null

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001d\u0000:\u0000W\u0000t\u0000\u0091\u0000W\u0000\u00ae\u0000\u00cb\u0000\u00e8\u0000\u0105\u0000\u0122\u0000\u013f\u0000\u015c\u0000\u0179\u0000\u0196\u0000\u01b3\u0000\u01d0\u0000\u0105\u0000\u01ed\u0000\u020a\u0000\u0227\u0000\u0244\u0000\u0261\u0000\u027e\u0000\u029b\u0000\u02b8\u0000\u02d5\u0000\u02f2\u0000\u030f\u0000\u032c\u0000\u0349\u0000\u0366\u0000\u0383\u0000\u03a0\u0000\u03bd\u0000\u03da\u0000\u03f7\u0000\u0414\u0000\u0431\u0000\u044e\u0000\u046b\u0000:\u0000\u0431\u0000\u029b\u0000\u02b8\u0000\u0488\u0000\u04a5\u0000\u04c2\u0000\u04df\u0000\u04fc\u0000:\u0000\u0519\u0000\u0536\u0000\u0553\u0000\u0570\u0000\u058d\u0000\u05aa\u0000\u05c7\u0000\u05e4\u0000\u0601\u0000\u02d5\u0000\u061e\u0000\u063b\u0000\u0658\u0000\u0675\u0000\u0692\u0000\u0431\u0000\u06af\u0000\u06cc\u0000\u06e9\u0000\u0706\u0000\u0723\u0000\u0740\u0000\u075d\u0000\u027e\u0000\u077a\u0000:\u0000\u0797\u0000\u077a\u0000\u07b4\u0000\u0797\u0000\u0091\u0000\u07d1\u0000\u0431"

.field private static final ZZ_TRANS:[I = null

.field private static final ZZ_TRANS_PACKED_0:Ljava/lang/String; = "\u0001\u0003\u0002\u0004\u0001\u0005\u0001\u0004\u0001\u0006\u0001\u0004\u000c\u0005\u0001\u0007\u0001\u0005\u0002\u0004\u0001\u0000\u0001\u0008\u0001\t\u0001\n\u0001\u0004\u0001\u0005\u0001\u0003\u0002\u000b\u0001\u000c\u0001\u000b\u0001\u0006\u0001\u000b\u0001\r\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u000c\u0001\u0010\u0001\u000c\u0001\u0011\u0001\u0012\u0003\u000c\u0001\u0013\u0001\u000c\u0002\u000b\u0001\u0000\u0001\u0014\u0001\t\u0001\u0015\u0001\u000b\u0001\u000c&\u0000\u0001\u0016\u0001\u0017\u0003\u0000\u0001\u0017\u0005\u0000\u0001\u0018\u000b\u0000\u0001\u0006\u0001\u0019\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0002\u0000\u0001\u001c\u0006\u0000\u0001\u0016\u0001\u0017\u0003\u0000\u0001\u0017\u0005\u0000\u0001\u0018\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0001\t\u0001\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0019\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001e\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001\"\u0001#\u0001 \u0001$\u0001 \u0001%\u0001&\u0003 \u0001\u001f\u0001\'\u0002\u001f\u0001\u0000\u0001\u001f\u0001\u0000\u0001 \u0001\u001f\u0001 \u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0001\u0006\u0001)\n\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0005\u0006\u0001*\u0006\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001,\u0001\u0006\u0001-\u0004\u0006\u0001*\u0007\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001,\u0001\u0006\u0001-\u0002\u0006\u0002/\u0006\u0006\u0001*\u0001/\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0004\u0006\u00010\u0007\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0002\u0006\u00011\u00012\u0006\u0006\u0001)\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0001\u001f\u00013\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001\"\u0001#\u0001 \u0001$\u0001 \u0001%\u0001&\u0003 \u0001\u001f\u0001\'\u0001\u001f\u00013\u0001\u0000\u0001\u001f\u0001\u001d\u0001 \u0001\u001f\u0001 \u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001e\u0001\u0006\u0001\u0000\u00024\u0001\u0000\u00014\u0001\u0000\u00014\u0001\u0018\u000b\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u000c\u0000\u00015\u0012\u0000\u00024\u0001\u0000\u00014\u0001\u0000\u00014\u000c\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0004\u0000\u00016\u0003\u0000\u000c6\u0001\u0000\u00016\u0005\u0000\u00016\u0001\u0000\u00016\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0007\u0000\u00017\u0001\u0000\u00018\u00019\u0001\u0000\u0001:\u0001\u0000\u0001;\u0001<\u0006\u0000\u0001=\u001f\u0000\u0001>\u001c\u0000\u0001\u001d\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0004\u0006\u0001?\u0007\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001@\u0001A\u0001 \u0001$\u0001 \u0001B\u0001&\u0003 \u0001\u001f\u0001 \u0002\u001f\u0001\u0000\u0001\u001f\u0001\u0000\u0001 \u0001\u001f\u0001 \u0004\u0000\u0001(\u001c\u0000\u0001(\u0003\u0000\u0001C\u0015\u0000\u00024\u0001\u0000\u0001D\u0001\u0000\u00014\u0001\u0018\u0004\u0000\u0001E\u0006\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0002\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0004\u0000\u0001F\u0007\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0002\u0000\u0002G\u0006\u0000\u0001E\u0001G\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0005\u0000\u0001(\u0006\u0000\u0001H\u0015\u0000\u0001(\u0004\u0000\u0001I\u0001J\u0006\u0000\u0001C\u000c\u0000\u00024\u0001\u0000\u0001D\u0001\u0000\u00014\u000c\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0004\u0000\u0001K\u0003\u0000\u000cK\u0001\u0000\u0001K\u0005\u0000\u0001K\u0001\u0000\u0001K\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0002\u0006\u0001*\t\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u000c\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u0006\u0006\u0001*\u0005\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u0002\u0006\u0001*\t\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0004\u0006\u0001*\u0001\u0006\u0001*\u0002\u0006\u0001*\u0002\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0006\u0006\u0001*\u0005\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001@\u0001A\u0001 \u0001$\u0001 \u0001B\u0001&\u0003 \u0001\u001f\u0001 \u0002\u001f\u0001\u0000\u0001\u001f\u0001>\u0001 \u0001\u001f\u0001 \u000f\u0000\u0001\u0018\u0011\u0000\u0001L \u0000\u0001M \u0000\u0001N\u001b\u0000\u0001N\u001a\u0000\u0002O\u0006\u0000\u0001N\u0001O\u0015\u0000\u0001P\u001a\u0000\u0001Q\u0001R\u0006\u0000\u0001M\u0012\u0000\u00017\u0001\u0000\u00018\u00019\u0001\u0000\u0001:\u0001\u0000\u0001;\u0001<\u0010\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001S\u0004\u0000\u0001(\u0007\u0000\u0001E\u0011\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0004\u0000\u0001E\u0007\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0005\u0000\u0001(\u0006\u0000\u0001T\u001a\u0000\u0001E\u0014\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u000c\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0008\u0000\u0001\u0018\u0003\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0006\u0000\u0001E\u0005\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0002\u0000\u0001E\u0005\u0000\u0001\u0018\u0003\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u000c\u0000\u0001E\u0001\u0000\u0001E\u0002\u0000\u0001E\u0019\u0000\u0001E\u0013\u0000\u0001U!\u0000\u0001N \u0000\u0001N\u001a\u0000\u0001N\u0001\u0000\u0001N\u0002\u0000\u0001N\r\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0002\u0000\u0001E\t\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0001\u0000"

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private mResult:Ljava/lang/StringBuffer;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEOFDone:Z

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_LEXSTATE:[I

    .line 113
    const-string v0, "\t\u0000\u0001\u0002\u0001\u0017\u0015\u0000\u0001\u0016\u0001\u001b\u0001\u0006\u0001\u0018\u0002\u0006\u0001\u0013\u0005\u0006\u0001\u0015\u0001\u0006\u0001\u0004\u0001\u0006\n\u0019\u0002\u0001\u0005\u0006\u001a\u0003\u0006\u0006\u0001\n\u0002\u0003\u0001\u000f\u0001\t\u0002\u0003\u0001\u0008\u0001\u0011\u0001\u0003\u0001\u001c\u0001\u000c\u0001\u0010\u0001\u000b\u0001\u0012\u0001\u001a\u0001\u0003\u0001\u0010\u0001\r\u0001\u0007\u0001\u000e\u0003\u0003\u0001\u0014\u0001\u0003\u0004\u0006+\u0000\u0001\u0003\n\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0005\u0000\u0017\u0003\u0001\u0000\u001f\u0003\u0001\u0000\u013f\u0003\u0019\u0000r\u0003\u0004\u0000\u000c\u0003\u000e\u0000\u0005\u0003\t\u0000\u0001\u0003\u008b\u0000\u0001\u0003\u000b\u0000\u0001\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0014\u0003\u0001\u0000,\u0003\u0001\u0000&\u0003\u0001\u0000\u0005\u0003\u0004\u0000\u0082\u0003\u0008\u0000E\u0003\u0001\u0000&\u0003\u0002\u0000\u0002\u0003\u0006\u0000\u0010\u0003!\u0000&\u0003\u0002\u0000\u0001\u0003\u0007\u0000\'\u0003H\u0000\u001b\u0003\u0005\u0000\u0003\u0003.\u0000\u001a\u0003\u0005\u0000\u000b\u0003\u0015\u0000\n\u0005\u0004\u0000\u0002\u0003\u0001\u0000c\u0003\u0001\u0000\u0001\u0003\u000f\u0000\u0002\u0003\u0007\u0000\u0002\u0003\n\u0005\u0003\u0003\u0002\u0000\u0001\u0003\u0010\u0000\u0001\u0003\u0001\u0000\u001e\u0003\u001d\u0000\u0003\u00030\u0000&\u0003\u000b\u0000\u0001\u0003\u0152\u00006\u0003\u0003\u0000\u0001\u0003\u0012\u0000\u0001\u0003\u0007\u0000\n\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0002\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0004\u0003\u0003\u0000\u0001\u0003\u001e\u0000\u0002\u0003\u0001\u0000\u0003\u0003\u0004\u0000\n\u0005\u0002\u0003\u0013\u0000\u0006\u0003\u0004\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u001f\u0000\u0004\u0003\u0001\u0000\u0001\u0003\u0007\u0000\n\u0005\u0002\u0000\u0003\u0003\u0010\u0000\t\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003\u0012\u0000\u0001\u0003\u000f\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0002\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003\u001e\u0000\u0002\u0003\u0001\u0000\u0003\u0003\u0004\u0000\n\u0005\u0001\u0000\u0001\u0003\u0011\u0000\u0001\u0003\u0001\u0000\u0006\u0003\u0003\u0000\u0003\u0003\u0001\u0000\u0004\u0003\u0003\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0003\u0000\u0002\u0003\u0003\u0000\u0003\u0003\u0003\u0000\u0008\u0003\u0001\u0000\u0003\u0003-\u0000\t\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\n\u0003\u0001\u0000\u0005\u0003&\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\n\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003 \u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\u0010\u0003&\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0012\u0003\u0003\u0000\u0018\u0003\u0001\u0000\t\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0007\u0003:\u00000\u0003\u0001\u0000\u0002\u0003\u000c\u0000\u0007\u0003\t\u0000\n\u0005\'\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0001\u0003\u0006\u0000\u0004\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0002\u0003\u0001\u0000\u0004\u0003\u0001\u0000\u0002\u0003\t\u0000\u0001\u0003\u0002\u0000\u0005\u0003\u0001\u0000\u0001\u0003\t\u0000\n\u0005\u0002\u0000\u0002\u0003\"\u0000\u0001\u0003\u001f\u0000\n\u0005\u0016\u0000\u0008\u0003\u0001\u0000\"\u0003\u001d\u0000\u0004\u0003t\u0000\"\u0003\u0001\u0000\u0005\u0003\u0001\u0000\u0002\u0003\u0015\u0000\n\u0005\u0006\u0000\u0006\u0003J\u0000&\u0003\n\u0000)\u0003\u0007\u0000Z\u0003\u0005\u0000D\u0003\u0005\u0000R\u0003\u0006\u0000\u0007\u0003\u0001\u0000?\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\'\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u001f\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0017\u0003\u0001\u0000\u001f\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\'\u0003\u0001\u0000\u0013\u0003\u000e\u0000\t\u0005.\u0000U\u0003\u000c\u0000\u026c\u0003\u0002\u0000\u0008\u0003\n\u0000\u001a\u0003\u0005\u0000K\u0003\u0015\u0000\r\u0003\u0001\u0000\u0004\u0003\u000e\u0000\u0012\u0003\u000e\u0000\u0012\u0003\u000e\u0000\r\u0003\u0001\u0000\u0003\u0003\u000f\u00004\u0003#\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0003\u0000\n\u0005&\u0000\n\u0005\u0006\u0000X\u0003\u0008\u0000)\u0003W\u0000\u001d\u0003)\u0000\n\u0005\u001e\u0003\u0002\u0000\u0005\u0003\u038b\u0000l\u0003\u0094\u0000\u009c\u0003\u0004\u0000Z\u0003\u0006\u0000\u0016\u0003\u0002\u0000\u0006\u0003\u0002\u0000&\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0008\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u001f\u0003\u0002\u00005\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0003\u0003\u0001\u0000\u0007\u0003\u0003\u0000\u0004\u0003\u0002\u0000\u0006\u0003\u0004\u0000\r\u0003\u0005\u0000\u0003\u0003\u0001\u0000\u0007\u0003t\u0000\u0001\u0003\r\u0000\u0001\u0003\u0082\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0002\u0000\n\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0005\u0003\u0006\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0007\u0003\u0003\u0000\u0003\u0003\u0005\u0000\u0005\u0003\u0ebb\u0000\u0002\u0003*\u0000\u0005\u0003\u0005\u0000\u0002\u0003\u0004\u0000V\u0003\u0006\u0000\u0003\u0003\u0001\u0000Z\u0003\u0001\u0000\u0004\u0003\u0005\u0000(\u0003\u0004\u0000^\u0003\u0011\u0000\u0018\u00038\u0000\u0010\u0003\u0200\u0000\u19b6\u0003J\u0000\u51a6\u0003Z\u0000\u048d\u0003\u0773\u0000\u2ba4\u0003\u215c\u0000\u012e\u0003\u0002\u0000;\u0003\u0095\u0000\u0007\u0003\u000c\u0000\u0005\u0003\u0005\u0000\u0001\u0003\u0001\u0000\n\u0003\u0001\u0000\r\u0003\u0001\u0000\u0005\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u0001\u0000l\u0003!\u0000\u016b\u0003\u0012\u0000@\u0003\u0002\u00006\u0003(\u0000\u000c\u0003t\u0000\u0005\u0003\u0001\u0000\u0087\u0003\u0013\u0000\n\u0005\u0007\u0000\u001a\u0003\u0006\u0000\u001a\u0003\u000b\u0000Y\u0003\u0003\u0000\u0006\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0003\u0003#\u0000"

    invoke-static {v0}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_CMAP:[C

    .line 118
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ACTION:[I

    .line 150
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ROWMAP:[I

    .line 186
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackTrans()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_TRANS:[I

    .line 318
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unkown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const-string v1, "Error: pushback value was too large"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ATTRIBUTE:[I

    .line 408
    const/16 v0, 0x100

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->TO_LOWER_LATIN:[C

    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 408
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
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
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
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
        0x5bt 0x0t
        0x2ft 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x27t 0x0t
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
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
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
        0x20t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x73t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
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
        0x20t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/io/StringReader;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/store/TagNormalizer;-><init>(Ljava/io/Reader;)V

    .line 478
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 609
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/store/TagNormalizer;-><init>(Ljava/io/Reader;)V

    .line 610
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    .line 365
    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    .line 404
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    .line 599
    iput-object p1, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    .line 600
    return-void
.end method

.method private appendAcronym()V
    .locals 3

    .prologue
    .line 559
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    if-ge v0, v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 561
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 559
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 566
    return-void
.end method

.method private appendLetters()V
    .locals 3

    .prologue
    .line 549
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    if-ge v0, v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 549
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 556
    return-void
.end method

.method private appendNameArticle()V
    .locals 3

    .prologue
    .line 569
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    return-void

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private appendSortableNumberFromOffset(I)V
    .locals 9
    .parameter "offset"

    .prologue
    .line 527
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    add-int/2addr v6, p1

    iget v7, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v8, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, p1

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    .line 530
    .local v3, numberString:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 531
    .local v2, number:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, normalizedNumberStr:Ljava/lang/String;
    const-string v5, "0000000000"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v4, v5, v6

    .line 533
    .local v4, zerosToAdd:I
    if-lez v4, :cond_0

    .line 534
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const-string v6, "0000000000"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 536
    :cond_0
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v1           #normalizedNumberStr:Ljava/lang/String;
    .end local v2           #number:I
    .end local v4           #zerosToAdd:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    return-void

    .line 537
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 538
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private appendToken()V
    .locals 5

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 546
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "argv"

    .prologue
    .line 581
    array-length v5, p0

    if-nez v5, :cond_1

    .line 582
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Usage : java TagNormalizer <string1>...<stringN>\n\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    :cond_0
    return-void

    .line 584
    :cond_1
    new-instance v3, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v3}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 585
    .local v3, normalizer:Lcom/google/android/music/store/TagNormalizer;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 586
    .local v4, s:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"->\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final yybegin(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 733
    iput p1, p0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    .line 734
    return-void
.end method

.method private final yycharat(I)C
    .locals 2
    .parameter "pos"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method private final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    .line 690
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iput v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 692
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 694
    :cond_0
    return-void
.end method

.method private final yylength()I
    .locals 2

    .prologue
    .line 765
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private yylex()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    move v10, v0

    .line 827
    .local v10, zzEndReadL:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    move-object v6, v0

    .line 828
    .local v6, zzBufferL:[C
    sget-object v7, Lcom/google/android/music/store/TagNormalizer;->ZZ_CMAP:[C

    .line 830
    .local v7, zzCMapL:[C
    sget-object v15, Lcom/google/android/music/store/TagNormalizer;->ZZ_TRANS:[I

    .line 831
    .local v15, zzTransL:[I
    sget-object v14, Lcom/google/android/music/store/TagNormalizer;->ZZ_ROWMAP:[I

    .line 832
    .local v14, zzRowMapL:[I
    sget-object v4, Lcom/google/android/music/store/TagNormalizer;->ZZ_ATTRIBUTE:[I

    .line 835
    .local v4, zzAttrL:[I
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    move v12, v0

    .line 837
    .local v12, zzMarkedPosL:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 838
    const/16 v16, 0x1

    sub-int v16, v12, v16

    aget-char v16, v6, v16

    sparse-switch v16, :sswitch_data_0

    .line 864
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    .line 867
    :cond_0
    :goto_1
    const/4 v3, -0x1

    .line 869
    .local v3, zzAction:I
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    move v8, v12

    .line 871
    .local v8, zzCurrentPosL:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 872
    sget-object v16, Lcom/google/android/music/store/TagNormalizer;->ZZ_LEXSTATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move v9, v8

    .line 880
    .end local v8           #zzCurrentPosL:I
    .local v9, zzCurrentPosL:I
    :goto_2
    if-ge v9, v10, :cond_8

    .line 881
    add-int/lit8 v8, v9, 0x1

    .end local v9           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    aget-char v11, v6, v9

    .line 904
    .local v11, zzInput:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move/from16 v16, v0

    aget v16, v14, v16

    aget-char v17, v7, v11

    add-int v16, v16, v17

    aget v13, v15, v16

    .line 905
    .local v13, zzNext:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 919
    .end local v13           #zzNext:I
    :cond_1
    :goto_4
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 921
    if-gez v3, :cond_d

    move/from16 v16, v3

    :goto_5
    packed-switch v16, :pswitch_data_0

    .line 967
    const/16 v16, -0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 968
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    .line 969
    const/16 v16, -0x1

    return v16

    .line 845
    .end local v3           #zzAction:I
    .end local v8           #zzCurrentPosL:I
    .end local v11           #zzInput:I
    :sswitch_0
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto :goto_1

    .line 848
    :sswitch_1
    if-ge v12, v10, :cond_3

    .line 849
    aget-char v16, v6, v12

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    const/16 v16, 0x1

    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto/16 :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_6

    .line 850
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 851
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto/16 :goto_1

    .line 853
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->zzRefill()Z

    move-result v2

    .line 854
    .local v2, eof:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    move v12, v0

    .line 855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    move v10, v0

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    move-object v6, v0

    .line 857
    if-eqz v2, :cond_5

    .line 858
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto/16 :goto_1

    .line 860
    :cond_5
    aget-char v16, v6, v12

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/16 v16, 0x1

    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 874
    .end local v2           #eof:Z
    .restart local v3       #zzAction:I
    .restart local v8       #zzCurrentPosL:I
    :cond_7
    sget-object v16, Lcom/google/android/music/store/TagNormalizer;->ZZ_LEXSTATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    move/from16 v17, v0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move v9, v8

    .end local v8           #zzCurrentPosL:I
    .restart local v9       #zzCurrentPosL:I
    goto/16 :goto_2

    .line 882
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 883
    const/4 v11, -0x1

    .restart local v11       #zzInput:I
    move v8, v9

    .line 884
    .end local v9           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    goto/16 :goto_4

    .line 888
    .end local v8           #zzCurrentPosL:I
    .end local v11           #zzInput:I
    .restart local v9       #zzCurrentPosL:I
    :cond_9
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 889
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->zzRefill()Z

    move-result v2

    .line 892
    .restart local v2       #eof:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    move v8, v0

    .line 893
    .end local v9           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    move v12, v0

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    move-object v6, v0

    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    move v10, v0

    .line 896
    if-eqz v2, :cond_a

    .line 897
    const/4 v11, -0x1

    .line 898
    .restart local v11       #zzInput:I
    goto/16 :goto_4

    .line 901
    .end local v11           #zzInput:I
    :cond_a
    add-int/lit8 v9, v8, 0x1

    .end local v8           #zzCurrentPosL:I
    .restart local v9       #zzCurrentPosL:I
    aget-char v11, v6, v8

    .restart local v11       #zzInput:I
    move v8, v9

    .end local v9           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    goto/16 :goto_3

    .line 906
    .end local v2           #eof:Z
    .restart local v13       #zzNext:I
    :cond_b
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move/from16 v16, v0

    aget v5, v4, v16

    .line 909
    .local v5, zzAttributes:I
    and-int/lit8 v16, v5, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move v3, v0

    .line 911
    move v12, v8

    .line 912
    and-int/lit8 v16, v5, 0x8

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    :cond_c
    move v9, v8

    .line 915
    .end local v8           #zzCurrentPosL:I
    .restart local v9       #zzCurrentPosL:I
    goto/16 :goto_2

    .line 921
    .end local v5           #zzAttributes:I
    .end local v9           #zzCurrentPosL:I
    .end local v13           #zzNext:I
    .restart local v8       #zzCurrentPosL:I
    :cond_d
    sget-object v16, Lcom/google/android/music/store/TagNormalizer;->ZZ_ACTION:[I

    aget v16, v16, v3

    goto/16 :goto_5

    .line 923
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    const-string v17, "pink "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 927
    :pswitch_2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/music/store/TagNormalizer;->appendSortableNumberFromOffset(I)V

    goto/16 :goto_0

    .line 931
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendToken()V

    goto/16 :goto_0

    .line 935
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendAcronym()V

    goto/16 :goto_0

    .line 939
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendLetters()V

    goto/16 :goto_0

    .line 947
    :pswitch_6
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/music/store/TagNormalizer;->appendSortableNumberFromOffset(I)V

    goto/16 :goto_0

    .line 951
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendNameArticle()V

    goto/16 :goto_0

    .line 955
    :pswitch_8
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/music/store/TagNormalizer;->appendSortableNumberFromOffset(I)V

    goto/16 :goto_0

    .line 963
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    move-object/from16 v16, v0

    const-string v17, "& "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 972
    :cond_e
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzScanError(I)V

    goto/16 :goto_0

    .line 838
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x85 -> :sswitch_0
        0x2028 -> :sswitch_0
        0x2029 -> :sswitch_0
    .end sparse-switch

    .line 921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private yypushback(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/google/android/music/store/TagNormalizer;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 806
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/store/TagNormalizer;->zzScanError(I)V

    .line 808
    :cond_0
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 809
    return-void
.end method

.method private final yyreset(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"

    .prologue
    const/4 v1, 0x0

    .line 708
    iput-object p1, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    .line 710
    iput-boolean v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    .line 711
    iput-boolean v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzEOFDone:Z

    .line 712
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 713
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 714
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->yycolumn:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->yychar:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->yyline:I

    .line 715
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    .line 716
    return-void
.end method

.method private final yystate()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    return v0
.end method

.method private final yytext()Ljava/lang/String;
    .locals 5

    .prologue
    .line 741
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private zzRefill()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 641
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    if-lez v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    iget v7, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 648
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 649
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 650
    iput v8, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .line 654
    :cond_0
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    iget-object v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 656
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 657
    .local v1, newBuffer:[C
    iget-object v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget-object v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    array-length v4, v4

    invoke-static {v3, v8, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    iput-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 662
    .end local v1           #newBuffer:[C
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    array-length v6, v6

    iget v7, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 665
    .local v2, numRead:I
    if-lez v2, :cond_2

    .line 666
    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    move v3, v8

    .line 681
    :goto_0
    return v3

    .line 670
    :cond_2
    if-nez v2, :cond_4

    .line 671
    iget-object v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v0

    .line 672
    .local v0, c:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v3, v9

    .line 673
    goto :goto_0

    .line 675
    :cond_3
    iget-object v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    int-to-char v5, v0

    aput-char v5, v3, v4

    move v3, v8

    .line 676
    goto :goto_0

    .end local v0           #c:I
    :cond_4
    move v3, v9

    .line 681
    goto :goto_0
.end method

.method private zzScanError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 786
    :try_start_0
    sget-object v2, Lcom/google/android/music/store/TagNormalizer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v1, v2, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .local v1, message:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 788
    .end local v1           #message:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 789
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v2, Lcom/google/android/music/store/TagNormalizer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 7
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, i:I
    move v3, p1

    .line 137
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v2, v1

    .line 138
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 139
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 141
    .local v6, value:I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 142
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0

    .line 143
    .end local v0           #count:I
    .end local v6           #value:I
    :cond_0
    return v3

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:I
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method

.method private static zzUnpackAction()[I
    .locals 3

    .prologue
    .line 128
    const/16 v2, 0x55

    new-array v1, v2, [I

    .line 129
    .local v1, result:[I
    const/4 v0, 0x0

    .line 130
    .local v0, offset:I
    const-string v2, "\u0002\u0000\u0002\u0001\u0002\u0002\u0001\u0003\u0001\u0001\u0001\u0004\u0001\u0002\u0001\u0001\u0007\u0002\u0001\u0003\u0001\u0001\u0001\u0002\u0007\u0000\u0001\u0005\u000b\u0000\u0002\u0002\u0004\u0006\u0004\u0002\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0007\u0002\u0000\u0002\u0008\u0003\u0000\u0001\t\u0001\u0002\u0004\u0000\u0001\u0003\u0006\u0000\u0001\n\u0001\u0007\u0001\u0000\u0003\u0008\u0002\u0000\u0001\u000b\u0001\u0000\u0001\n"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v0

    .line 131
    return-object v1
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 7
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, i:I
    move v3, p1

    .line 345
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v2, v1

    .line 346
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 347
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 349
    .local v6, value:I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 350
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0

    .line 351
    .end local v0           #count:I
    .end local v6           #value:I
    :cond_0
    return v3

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:I
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method

.method private static zzUnpackAttribute()[I
    .locals 3

    .prologue
    .line 336
    const/16 v2, 0x55

    new-array v1, v2, [I

    .line 337
    .local v1, result:[I
    const/4 v0, 0x0

    .line 338
    .local v0, offset:I
    const-string v2, "\u0002\u0000\u0001\t\u0012\u0001\u0007\u0000\u0001\u0001\u000b\u0000\u0002\u0001\u0001\t\u0007\u0001\u0001\u0000\u0001\t\u0001\u0000\u0001\u0001\u0002\u0000\u0002\u0001\u0003\u0000\u0002\u0001\u0004\u0000\u0001\u0001\u0006\u0000\u0002\u0001\u0001\u0000\u0001\t\u0002\u0001\u0002\u0000\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v0

    .line 339
    return-object v1
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .locals 8
    .parameter "packed"

    .prologue
    .line 619
    const/high16 v7, 0x1

    new-array v5, v7, [C

    .line 620
    .local v5, map:[C
    const/4 v1, 0x0

    .line 621
    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v2, v1

    .line 622
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/16 v7, 0x4e8

    if-ge v2, v7, :cond_0

    .line 623
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 624
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 625
    .local v6, value:C
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput-char v6, v5, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 626
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0

    .line 627
    .end local v0           #count:I
    .end local v6           #value:C
    :cond_0
    return-object v5

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:C
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 7
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, i:I
    move v3, p1

    .line 175
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .line 176
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 177
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v0, v6, 0x10

    .line 178
    .local v0, high:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v0

    aput v6, p2, v4

    move v4, v3

    .line 179
    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .line 180
    .end local v0           #high:I
    :cond_0
    return v4
.end method

.method private static zzUnpackRowMap()[I
    .locals 3

    .prologue
    .line 166
    const/16 v2, 0x55

    new-array v1, v2, [I

    .line 167
    .local v1, result:[I
    const/4 v0, 0x0

    .line 168
    .local v0, offset:I
    const-string v2, "\u0000\u0000\u0000\u001d\u0000:\u0000W\u0000t\u0000\u0091\u0000W\u0000\u00ae\u0000\u00cb\u0000\u00e8\u0000\u0105\u0000\u0122\u0000\u013f\u0000\u015c\u0000\u0179\u0000\u0196\u0000\u01b3\u0000\u01d0\u0000\u0105\u0000\u01ed\u0000\u020a\u0000\u0227\u0000\u0244\u0000\u0261\u0000\u027e\u0000\u029b\u0000\u02b8\u0000\u02d5\u0000\u02f2\u0000\u030f\u0000\u032c\u0000\u0349\u0000\u0366\u0000\u0383\u0000\u03a0\u0000\u03bd\u0000\u03da\u0000\u03f7\u0000\u0414\u0000\u0431\u0000\u044e\u0000\u046b\u0000:\u0000\u0431\u0000\u029b\u0000\u02b8\u0000\u0488\u0000\u04a5\u0000\u04c2\u0000\u04df\u0000\u04fc\u0000:\u0000\u0519\u0000\u0536\u0000\u0553\u0000\u0570\u0000\u058d\u0000\u05aa\u0000\u05c7\u0000\u05e4\u0000\u0601\u0000\u02d5\u0000\u061e\u0000\u063b\u0000\u0658\u0000\u0675\u0000\u0692\u0000\u0431\u0000\u06af\u0000\u06cc\u0000\u06e9\u0000\u0706\u0000\u0723\u0000\u0740\u0000\u075d\u0000\u027e\u0000\u077a\u0000:\u0000\u0797\u0000\u077a\u0000\u07b4\u0000\u0797\u0000\u0091\u0000\u07d1\u0000\u0431"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v0

    .line 169
    return-object v1
.end method

.method private static zzUnpackTrans(Ljava/lang/String;I[I)I
    .locals 7
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, i:I
    move v3, p1

    .line 301
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v2, v1

    .line 302
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 303
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 305
    .local v6, value:I
    add-int/lit8 v6, v6, -0x1

    .line 306
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 307
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_0

    .line 308
    .end local v0           #count:I
    .end local v6           #value:I
    :cond_0
    return v3

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:I
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method

.method private static zzUnpackTrans()[I
    .locals 3

    .prologue
    .line 292
    const/16 v2, 0x7ee

    new-array v1, v2, [I

    .line 293
    .local v1, result:[I
    const/4 v0, 0x0

    .line 294
    .local v0, offset:I
    const-string v2, "\u0001\u0003\u0002\u0004\u0001\u0005\u0001\u0004\u0001\u0006\u0001\u0004\u000c\u0005\u0001\u0007\u0001\u0005\u0002\u0004\u0001\u0000\u0001\u0008\u0001\t\u0001\n\u0001\u0004\u0001\u0005\u0001\u0003\u0002\u000b\u0001\u000c\u0001\u000b\u0001\u0006\u0001\u000b\u0001\r\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u000c\u0001\u0010\u0001\u000c\u0001\u0011\u0001\u0012\u0003\u000c\u0001\u0013\u0001\u000c\u0002\u000b\u0001\u0000\u0001\u0014\u0001\t\u0001\u0015\u0001\u000b\u0001\u000c&\u0000\u0001\u0016\u0001\u0017\u0003\u0000\u0001\u0017\u0005\u0000\u0001\u0018\u000b\u0000\u0001\u0006\u0001\u0019\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0002\u0000\u0001\u001c\u0006\u0000\u0001\u0016\u0001\u0017\u0003\u0000\u0001\u0017\u0005\u0000\u0001\u0018\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0001\t\u0001\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0019\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001e\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001\"\u0001#\u0001 \u0001$\u0001 \u0001%\u0001&\u0003 \u0001\u001f\u0001\'\u0002\u001f\u0001\u0000\u0001\u001f\u0001\u0000\u0001 \u0001\u001f\u0001 \u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0001\u0006\u0001)\n\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0005\u0006\u0001*\u0006\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001,\u0001\u0006\u0001-\u0004\u0006\u0001*\u0007\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001,\u0001\u0006\u0001-\u0002\u0006\u0002/\u0006\u0006\u0001*\u0001/\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0004\u0006\u00010\u0007\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0002\u0006\u00011\u00012\u0006\u0006\u0001)\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0001\u001f\u00013\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001\"\u0001#\u0001 \u0001$\u0001 \u0001%\u0001&\u0003 \u0001\u001f\u0001\'\u0001\u001f\u00013\u0001\u0000\u0001\u001f\u0001\u001d\u0001 \u0001\u001f\u0001 \u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001e\u0001\u0006\u0001\u0000\u00024\u0001\u0000\u00014\u0001\u0000\u00014\u0001\u0018\u000b\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u000c\u0000\u00015\u0012\u0000\u00024\u0001\u0000\u00014\u0001\u0000\u00014\u000c\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0004\u0000\u00016\u0003\u0000\u000c6\u0001\u0000\u00016\u0005\u0000\u00016\u0001\u0000\u00016\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0007\u0000\u00017\u0001\u0000\u00018\u00019\u0001\u0000\u0001:\u0001\u0000\u0001;\u0001<\u0006\u0000\u0001=\u001f\u0000\u0001>\u001c\u0000\u0001\u001d\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0004\u0006\u0001?\u0007\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001@\u0001A\u0001 \u0001$\u0001 \u0001B\u0001&\u0003 \u0001\u001f\u0001 \u0002\u001f\u0001\u0000\u0001\u001f\u0001\u0000\u0001 \u0001\u001f\u0001 \u0004\u0000\u0001(\u001c\u0000\u0001(\u0003\u0000\u0001C\u0015\u0000\u00024\u0001\u0000\u0001D\u0001\u0000\u00014\u0001\u0018\u0004\u0000\u0001E\u0006\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0002\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0004\u0000\u0001F\u0007\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0002\u0000\u0002G\u0006\u0000\u0001E\u0001G\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0005\u0000\u0001(\u0006\u0000\u0001H\u0015\u0000\u0001(\u0004\u0000\u0001I\u0001J\u0006\u0000\u0001C\u000c\u0000\u00024\u0001\u0000\u0001D\u0001\u0000\u00014\u000c\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0004\u0000\u0001K\u0003\u0000\u000cK\u0001\u0000\u0001K\u0005\u0000\u0001K\u0001\u0000\u0001K\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0002\u0006\u0001*\t\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u000c\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u0006\u0006\u0001*\u0005\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u0002\u0006\u0001*\t\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0004\u0006\u0001*\u0001\u0006\u0001*\u0002\u0006\u0001*\u0002\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0006\u0006\u0001*\u0005\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001@\u0001A\u0001 \u0001$\u0001 \u0001B\u0001&\u0003 \u0001\u001f\u0001 \u0002\u001f\u0001\u0000\u0001\u001f\u0001>\u0001 \u0001\u001f\u0001 \u000f\u0000\u0001\u0018\u0011\u0000\u0001L \u0000\u0001M \u0000\u0001N\u001b\u0000\u0001N\u001a\u0000\u0002O\u0006\u0000\u0001N\u0001O\u0015\u0000\u0001P\u001a\u0000\u0001Q\u0001R\u0006\u0000\u0001M\u0012\u0000\u00017\u0001\u0000\u00018\u00019\u0001\u0000\u0001:\u0001\u0000\u0001;\u0001<\u0010\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001S\u0004\u0000\u0001(\u0007\u0000\u0001E\u0011\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0004\u0000\u0001E\u0007\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0005\u0000\u0001(\u0006\u0000\u0001T\u001a\u0000\u0001E\u0014\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u000c\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0008\u0000\u0001\u0018\u0003\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0006\u0000\u0001E\u0005\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0002\u0000\u0001E\u0005\u0000\u0001\u0018\u0003\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u000c\u0000\u0001E\u0001\u0000\u0001E\u0002\u0000\u0001E\u0019\u0000\u0001E\u0013\u0000\u0001U!\u0000\u0001N \u0000\u0001N\u001a\u0000\u0001N\u0001\u0000\u0001N\u0002\u0000\u0001N\r\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0002\u0000\u0001E\t\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0001\u0000"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackTrans(Ljava/lang/String;I[I)I

    move-result v0

    .line 295
    return-object v1
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "stringToNormalize"

    .prologue
    .line 487
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 488
    :cond_0
    const-string v6, ""

    .line 519
    :goto_0
    return-object v6

    .line 495
    :cond_1
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 496
    .local v0, chars:[C
    array-length v4, v0

    .line 497
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 498
    aget-char v6, v0, v2

    const v7, 0xffff

    and-int v3, v6, v7

    .line 499
    .local v3, index:I
    const/16 v6, 0x100

    if-ge v3, v6, :cond_2

    .line 500
    sget-object v6, Lcom/google/android/music/store/TagNormalizer;->TO_LOWER_LATIN:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v2

    .line 497
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    .end local v3           #index:I
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/store/TagNormalizer;->yyclose()V

    .line 505
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 506
    new-instance v6, Ljava/io/CharArrayReader;

    invoke-direct {v6, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {p0, v6}, Lcom/google/android/music/store/TagNormalizer;->yyreset(Ljava/io/Reader;)V

    .line 508
    :goto_2
    iget-boolean v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    if-nez v6, :cond_4

    .line 509
    invoke-direct {p0}, Lcom/google/android/music/store/TagNormalizer;->yylex()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 521
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 522
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 512
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 513
    .local v5, resultLength:I
    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    .line 514
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 519
    :goto_3
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 517
    :cond_5
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/4 v7, 0x1

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
