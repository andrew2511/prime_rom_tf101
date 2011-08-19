.class public final Lcom/google/android/common/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/StringUtil$1;,
        Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;,
        Lcom/google/android/common/base/StringUtil$JsEscapingMode;
    }
.end annotation


# static fields
.field private static final CJK_BLOCKS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_MATCHER:Lcom/google/android/common/base/CharMatcher; = null

.field static final ESCAPE_STRINGS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final FANCY_DOUBLE_QUOTE:Lcom/google/android/common/base/CharMatcher; = null

.field private static final FANCY_SINGLE_QUOTE:Lcom/google/android/common/base/CharMatcher; = null

.field private static final HEX_CHARS:[C = null

.field static final HEX_LETTERS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_ESCAPE:Lcom/google/android/common/base/CharEscaper; = null

.field private static final JSON_ESCAPE_CHARS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final JS_ESCAPE_CHARS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final LT_GT_ESCAPE:Lcom/google/android/common/base/CharEscaper; = null

.field private static final NEWLINE_SPLITTER:Lcom/google/android/common/base/Splitter; = null

.field private static final OCTAL_CHARS:[C = null

.field private static final REGEX_ESCAPE:Lcom/google/android/common/base/CharEscaper; = null

.field private static final TO_WORDS:Lcom/google/android/common/base/Splitter; = null

.field public static final WHITE_SPACES:Ljava/lang/String; = " \r\n\t\u3000\u00a0\u2007\u202f"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final characterReferencePattern:Ljava/util/regex/Pattern;

.field private static final dbSpecPattern:Ljava/util/regex/Pattern;

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x3e

    const/16 v6, 0x3c

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 382
    invoke-static {v5}, Lcom/google/android/common/base/Splitter;->on(C)Lcom/google/android/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/Splitter;->omitEmptyStrings()Lcom/google/android/common/base/Splitter;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/android/common/base/Splitter;

    .line 436
    sget-object v1, Lcom/google/android/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    invoke-static {v1}, Lcom/google/android/common/base/Splitter;->on(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/Splitter;->omitEmptyStrings()Lcom/google/android/common/base/Splitter;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->TO_WORDS:Lcom/google/android/common/base/Splitter;

    .line 707
    const-string v1, "\u0091\u0092\u2018\u2019"

    invoke-static {v1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/android/common/base/CharMatcher;

    .line 709
    const-string v1, "\u0093\u0094\u201c\u201d"

    invoke-static {v1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/android/common/base/CharMatcher;

    .line 983
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xfc

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 985
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&nbsp"

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&iexcl"

    const/16 v3, 0xa1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&cent"

    const/16 v3, 0xa2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&pound"

    const/16 v3, 0xa3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&curren"

    const/16 v3, 0xa4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&yen"

    const/16 v3, 0xa5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&brvbar"

    const/16 v3, 0xa6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sect"

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&uml"

    const/16 v3, 0xa8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&copy"

    const/16 v3, 0xa9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ordf"

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&laquo"

    const/16 v3, 0xab

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&not"

    const/16 v3, 0xac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&shy"

    const/16 v3, 0xad

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&reg"

    const/16 v3, 0xae

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&macr"

    const/16 v3, 0xaf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&deg"

    const/16 v3, 0xb0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&plusmn"

    const/16 v3, 0xb1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sup2"

    const/16 v3, 0xb2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sup3"

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&acute"

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&micro"

    const/16 v3, 0xb5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&para"

    const/16 v3, 0xb6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&middot"

    const/16 v3, 0xb7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&cedil"

    const/16 v3, 0xb8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sup1"

    const/16 v3, 0xb9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ordm"

    const/16 v3, 0xba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&raquo"

    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&frac14"

    const/16 v3, 0xbc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&frac12"

    const/16 v3, 0xbd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&frac34"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&iquest"

    const/16 v3, 0xbf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Agrave"

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Aacute"

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Acirc"

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Atilde"

    const/16 v3, 0xc3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Auml"

    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Aring"

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&AElig"

    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ccedil"

    const/16 v3, 0xc7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Egrave"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Eacute"

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ecirc"

    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Euml"

    const/16 v3, 0xcb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Igrave"

    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Iacute"

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Icirc"

    const/16 v3, 0xce

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Iuml"

    const/16 v3, 0xcf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ETH"

    const/16 v3, 0xd0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ntilde"

    const/16 v3, 0xd1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ograve"

    const/16 v3, 0xd2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Oacute"

    const/16 v3, 0xd3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ocirc"

    const/16 v3, 0xd4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Otilde"

    const/16 v3, 0xd5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ouml"

    const/16 v3, 0xd6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&times"

    const/16 v3, 0xd7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Oslash"

    const/16 v3, 0xd8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ugrave"

    const/16 v3, 0xd9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Uacute"

    const/16 v3, 0xda

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Ucirc"

    const/16 v3, 0xdb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Uuml"

    const/16 v3, 0xdc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Yacute"

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&THORN"

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&szlig"

    const/16 v3, 0xdf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&agrave"

    const/16 v3, 0xe0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&aacute"

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&acirc"

    const/16 v3, 0xe2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&atilde"

    const/16 v3, 0xe3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&auml"

    const/16 v3, 0xe4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&aring"

    const/16 v3, 0xe5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&aelig"

    const/16 v3, 0xe6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ccedil"

    const/16 v3, 0xe7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&egrave"

    const/16 v3, 0xe8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&eacute"

    const/16 v3, 0xe9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ecirc"

    const/16 v3, 0xea

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&euml"

    const/16 v3, 0xeb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&igrave"

    const/16 v3, 0xec

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&iacute"

    const/16 v3, 0xed

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&icirc"

    const/16 v3, 0xee

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&iuml"

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&eth"

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ntilde"

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ograve"

    const/16 v3, 0xf2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&oacute"

    const/16 v3, 0xf3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ocirc"

    const/16 v3, 0xf4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&otilde"

    const/16 v3, 0xf5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ouml"

    const/16 v3, 0xf6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&divide"

    const/16 v3, 0xf7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&oslash"

    const/16 v3, 0xf8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ugrave"

    const/16 v3, 0xf9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&uacute"

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ucirc"

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&uuml"

    const/16 v3, 0xfc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&yacute"

    const/16 v3, 0xfd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&thorn"

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&yuml"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&fnof"

    const/16 v3, 0x192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Alpha"

    const/16 v3, 0x391

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Beta"

    const/16 v3, 0x392

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Gamma"

    const/16 v3, 0x393

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Delta"

    const/16 v3, 0x394

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Epsilon"

    const/16 v3, 0x395

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Zeta"

    const/16 v3, 0x396

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Eta"

    const/16 v3, 0x397

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Theta"

    const/16 v3, 0x398

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Iota"

    const/16 v3, 0x399

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Kappa"

    const/16 v3, 0x39a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Lambda"

    const/16 v3, 0x39b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Mu"

    const/16 v3, 0x39c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Nu"

    const/16 v3, 0x39d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Xi"

    const/16 v3, 0x39e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Omicron"

    const/16 v3, 0x39f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Pi"

    const/16 v3, 0x3a0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Rho"

    const/16 v3, 0x3a1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Sigma"

    const/16 v3, 0x3a3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Tau"

    const/16 v3, 0x3a4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Upsilon"

    const/16 v3, 0x3a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Phi"

    const/16 v3, 0x3a6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Chi"

    const/16 v3, 0x3a7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Psi"

    const/16 v3, 0x3a8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Omega"

    const/16 v3, 0x3a9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&alpha"

    const/16 v3, 0x3b1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&beta"

    const/16 v3, 0x3b2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&gamma"

    const/16 v3, 0x3b3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&delta"

    const/16 v3, 0x3b4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&epsilon"

    const/16 v3, 0x3b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&zeta"

    const/16 v3, 0x3b6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&eta"

    const/16 v3, 0x3b7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&theta"

    const/16 v3, 0x3b8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&iota"

    const/16 v3, 0x3b9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&kappa"

    const/16 v3, 0x3ba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lambda"

    const/16 v3, 0x3bb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&mu"

    const/16 v3, 0x3bc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&nu"

    const/16 v3, 0x3bd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&xi"

    const/16 v3, 0x3be

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&omicron"

    const/16 v3, 0x3bf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&pi"

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rho"

    const/16 v3, 0x3c1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sigmaf"

    const/16 v3, 0x3c2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sigma"

    const/16 v3, 0x3c3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&tau"

    const/16 v3, 0x3c4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&upsilon"

    const/16 v3, 0x3c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&phi"

    const/16 v3, 0x3c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&chi"

    const/16 v3, 0x3c7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&psi"

    const/16 v3, 0x3c8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&omega"

    const/16 v3, 0x3c9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&thetasym"

    const/16 v3, 0x3d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&upsih"

    const/16 v3, 0x3d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&piv"

    const/16 v3, 0x3d6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&bull"

    const/16 v3, 0x2022

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&hellip"

    const/16 v3, 0x2026

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&prime"

    const/16 v3, 0x2032

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Prime"

    const/16 v3, 0x2033

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&oline"

    const/16 v3, 0x203e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&frasl"

    const/16 v3, 0x2044

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&weierp"

    const/16 v3, 0x2118

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&image"

    const/16 v3, 0x2111

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&real"

    const/16 v3, 0x211c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&trade"

    const/16 v3, 0x2122

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&alefsym"

    const/16 v3, 0x2135

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&larr"

    const/16 v3, 0x2190

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&uarr"

    const/16 v3, 0x2191

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rarr"

    const/16 v3, 0x2192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&darr"

    const/16 v3, 0x2193

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&harr"

    const/16 v3, 0x2194

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&crarr"

    const/16 v3, 0x21b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lArr"

    const/16 v3, 0x21d0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&uArr"

    const/16 v3, 0x21d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rArr"

    const/16 v3, 0x21d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&dArr"

    const/16 v3, 0x21d3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&hArr"

    const/16 v3, 0x21d4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&forall"

    const/16 v3, 0x2200

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&part"

    const/16 v3, 0x2202

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&exist"

    const/16 v3, 0x2203

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&empty"

    const/16 v3, 0x2205

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&nabla"

    const/16 v3, 0x2207

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&isin"

    const/16 v3, 0x2208

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&notin"

    const/16 v3, 0x2209

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ni"

    const/16 v3, 0x220b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&prod"

    const/16 v3, 0x220f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sum"

    const/16 v3, 0x2211

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&minus"

    const/16 v3, 0x2212

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lowast"

    const/16 v3, 0x2217

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&radic"

    const/16 v3, 0x221a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&prop"

    const/16 v3, 0x221d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&infin"

    const/16 v3, 0x221e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ang"

    const/16 v3, 0x2220

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&and"

    const/16 v3, 0x2227

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&or"

    const/16 v3, 0x2228

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&cap"

    const/16 v3, 0x2229

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&cup"

    const/16 v3, 0x222a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&int"

    const/16 v3, 0x222b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&there4"

    const/16 v3, 0x2234

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sim"

    const/16 v3, 0x223c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&cong"

    const/16 v3, 0x2245

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&asymp"

    const/16 v3, 0x2248

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ne"

    const/16 v3, 0x2260

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&equiv"

    const/16 v3, 0x2261

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&le"

    const/16 v3, 0x2264

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ge"

    const/16 v3, 0x2265

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sub"

    const/16 v3, 0x2282

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sup"

    const/16 v3, 0x2283

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&nsub"

    const/16 v3, 0x2284

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sube"

    const/16 v3, 0x2286

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&supe"

    const/16 v3, 0x2287

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&oplus"

    const/16 v3, 0x2295

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&otimes"

    const/16 v3, 0x2297

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&perp"

    const/16 v3, 0x22a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sdot"

    const/16 v3, 0x22c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lceil"

    const/16 v3, 0x2308

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rceil"

    const/16 v3, 0x2309

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lfloor"

    const/16 v3, 0x230a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rfloor"

    const/16 v3, 0x230b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lang"

    const/16 v3, 0x2329

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rang"

    const/16 v3, 0x232a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&loz"

    const/16 v3, 0x25ca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&spades"

    const/16 v3, 0x2660

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&clubs"

    const/16 v3, 0x2663

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&hearts"

    const/16 v3, 0x2665

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&diams"

    const/16 v3, 0x2666

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&quot"

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&amp"

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lt"

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&gt"

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&OElig"

    const/16 v3, 0x152

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&oelig"

    const/16 v3, 0x153

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Scaron"

    const/16 v3, 0x160

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&scaron"

    const/16 v3, 0x161

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Yuml"

    const/16 v3, 0x178

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&circ"

    const/16 v3, 0x2c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&tilde"

    const/16 v3, 0x2dc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ensp"

    const/16 v3, 0x2002

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&emsp"

    const/16 v3, 0x2003

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&thinsp"

    const/16 v3, 0x2009

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&zwnj"

    const/16 v3, 0x200c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&zwj"

    const/16 v3, 0x200d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lrm"

    const/16 v3, 0x200e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rlm"

    const/16 v3, 0x200f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ndash"

    const/16 v3, 0x2013

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&mdash"

    const/16 v3, 0x2014

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lsquo"

    const/16 v3, 0x2018

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rsquo"

    const/16 v3, 0x2019

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&sbquo"

    const/16 v3, 0x201a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&ldquo"

    const/16 v3, 0x201c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rdquo"

    const/16 v3, 0x201d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&bdquo"

    const/16 v3, 0x201e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&dagger"

    const/16 v3, 0x2020

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&Dagger"

    const/16 v3, 0x2021

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&permil"

    const/16 v3, 0x2030

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&lsaquo"

    const/16 v3, 0x2039

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&rsaquo"

    const/16 v3, 0x203a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v2, "&euro"

    const/16 v3, 0x20ac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    .line 1240
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1241
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1242
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1243
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1245
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1246
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1247
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1248
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1249
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1250
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1251
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1391
    new-instance v1, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const-string v2, "&lt;"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "&gt;"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/android/common/base/CharEscaper;

    .line 1397
    const-string v1, "</?[a-zA-Z][^>]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    .line 1735
    const-string v1, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u000b\u000c\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff"

    invoke-static {v1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/android/common/base/CharMatcher;

    .line 1790
    new-instance v1, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const-string v2, "\\n"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const-string v3, "\\t"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x22

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x26

    const-string v3, "&amp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "&lt;"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "&gt;"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x27

    const-string v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->JAVA_ESCAPE:Lcom/google/android/common/base/CharEscaper;

    .line 1817
    new-instance v1, Lcom/google/android/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/android/common/base/CharEscaperBuilder;-><init>()V

    const/16 v2, 0x28

    const-string v3, "\\("

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x29

    const-string v3, "\\)"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    const-string v3, "\\|"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2a

    const-string v3, "\\*"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2b

    const-string v3, "\\+"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    const-string v3, "\\?"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    const-string v3, "\\."

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    const-string v3, "\\{"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    const-string v3, "\\}"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    const-string v3, "\\["

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    const-string v3, "\\]"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x24

    const-string v3, "\\$"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5e

    const-string v3, "\\^"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->REGEX_ESCAPE:Lcom/google/android/common/base/CharEscaper;

    .line 2331
    const-string v1, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    .line 2383
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2384
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2385
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2386
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2387
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2388
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2389
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2390
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2391
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2392
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2393
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2394
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2395
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2396
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2397
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2398
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2399
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2400
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2401
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2402
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2403
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2404
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2405
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 2660
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    .line 2663
    sget-object v1, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    sput-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    .line 2719
    const-string v1, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    .line 3141
    new-instance v1, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;-><init>(Lcom/google/android/common/base/StringUtil$1;)V

    const/16 v2, 0xad

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x600

    const/16 v3, 0x603

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x6dd

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x70f

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x17b4

    const/16 v3, 0x17b5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x200b

    const/16 v3, 0x200f

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x202a

    const/16 v3, 0x202e

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x2060

    const/16 v3, 0x2064

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xfeff

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xfff9

    const v3, 0xfffb

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0x1d173

    const v3, 0x1d17a

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xe0001

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xe0020

    const v3, 0xe007f

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x85

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->create()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->JS_ESCAPE_CHARS:Ljava/util/Set;

    .line 3173
    new-instance v1, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;-><init>(Lcom/google/android/common/base/StringUtil$1;)V

    const-string v2, "\""

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v4, v2}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/base/StringUtil$UnicodeSetBuilder;->create()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/common/base/StringUtil;->JSON_ESCAPE_CHARS:Ljava/util/Set;

    return-void

    .line 2660
    :array_0
    .array-data 0x2
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    .locals 4
    .parameter "codePoint"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1581
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1587
    .local v0, surrogates:[C
    const/4 v1, 0x0

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/android/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1588
    const/4 v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/android/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1596
    .end local v0           #surrogates:[C
    :goto_0
    return-void

    .line 1591
    :cond_0
    const-string v1, "\\u"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V
    .locals 2
    .parameter "sb"
    .parameter "c"

    .prologue
    .line 1636
    :try_start_0
    invoke-static {p1, p0}, Lcom/google/android/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    return-void

    .line 1637
    :catch_0
    move-exception v0

    .line 1639
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static appendOctalJavaScriptRepresentation(CZLjava/lang/Appendable;)V
    .locals 3
    .parameter "ch"
    .parameter "pad"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x5c

    .line 1609
    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    if-eqz p1, :cond_1

    .line 1613
    :cond_0
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    ushr-int/lit8 v2, p0, 0x3

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1625
    :goto_0
    return-void

    .line 1617
    :cond_1
    const/16 v0, 0x8

    if-lt p0, v0, :cond_2

    .line 1618
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    ushr-int/lit8 v2, p0, 0x3

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1622
    :cond_2
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/android/common/base/StringUtil;->OCTAL_CHARS:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static bytesStorage(Ljava/lang/String;)I
    .locals 4
    .parameter "str"

    .prologue
    .line 2869
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2871
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2872
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2873
    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/common/base/StringUtil;->bytesUtf8(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2872
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0

    .line 2875
    :cond_0
    return v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2671
    invoke-static {p0}, Lcom/google/android/common/base/ByteArrays;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "delimiter"

    .prologue
    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v4, p0

    if-nez p1, :cond_1

    const/4 v5, 0x2

    :goto_0
    mul-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2683
    .local v0, hex:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 2684
    aget-byte v4, p0, v1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 2685
    .local v2, nibble1:I
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 2686
    .local v3, nibble2:I
    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2687
    :cond_0
    sget-object v4, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2688
    sget-object v4, Lcom/google/android/common/base/StringUtil;->HEX_CHARS:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2680
    .end local v0           #hex:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #nibble1:I
    .end local v3           #nibble2:I
    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    .line 2690
    .restart local v0       #hex:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static bytesUtf8(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 2843
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 2844
    const/4 v0, 0x1

    .line 2857
    :goto_0
    return v0

    .line 2845
    :cond_0
    const/16 v0, 0x800

    if-ge p0, v0, :cond_1

    .line 2846
    const/4 v0, 0x2

    goto :goto_0

    .line 2847
    :cond_1
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_2

    .line 2848
    const/4 v0, 0x3

    goto :goto_0

    .line 2849
    :cond_2
    const/high16 v0, 0x20

    if-ge p0, v0, :cond_3

    .line 2850
    const/4 v0, 0x4

    goto :goto_0

    .line 2854
    :cond_3
    const/high16 v0, 0x400

    if-ge p0, v0, :cond_4

    .line 2855
    const/4 v0, 0x5

    goto :goto_0

    .line 2857
    :cond_4
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 2799
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p0

    .line 2804
    :goto_0
    return-object v2

    .line 2802
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2803
    .local v1, first:C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2804
    .local v0, capitalized:C
    if-ne v1, v0, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "chars"
    .parameter "replacement"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2122
    if-nez p0, :cond_0

    .line 2123
    const/4 v4, 0x0

    .line 2147
    :goto_0
    return-object v4

    .line 2126
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    .local v2, newStr:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2130
    .local v3, prevCharMatched:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2131
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2132
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2134
    if-eqz v3, :cond_1

    .line 2130
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2139
    :cond_1
    const/4 v3, 0x1

    .line 2140
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2142
    :cond_2
    const/4 v3, 0x0

    .line 2143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2147
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static collapseControlChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "replacement"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2174
    if-nez p0, :cond_0

    .line 2175
    const/4 v4, 0x0

    .line 2199
    :goto_0
    return-object v4

    .line 2178
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2180
    .local v2, newStr:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2182
    .local v3, prevCharMatched:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2183
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2184
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2186
    if-eqz v3, :cond_1

    .line 2182
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2191
    :cond_1
    const/4 v3, 0x1

    .line 2192
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2194
    :cond_2
    const/4 v3, 0x0

    .line 2195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2199
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2094
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lcom/google/android/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .parameter "s1"
    .parameter "s2"
    .parameter "nullsAreGreater"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 2312
    if-ne p0, p1, :cond_1

    .line 2313
    const/4 v0, 0x0

    .line 2321
    :cond_0
    :goto_0
    return v0

    .line 2315
    :cond_1
    if-nez p0, :cond_2

    .line 2316
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2318
    :cond_2
    if-nez p1, :cond_3

    .line 2319
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2321
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 2339
    sget-object v0, Lcom/google/android/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static convertEOLToLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"

    .prologue
    const/16 v7, 0xa

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 769
    .local v3, res:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 770
    .local v4, s:[C
    const/4 v1, 0x0

    .line 771
    .local v1, from:I
    array-length v0, v4

    .line 772
    .local v0, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 773
    aget-char v5, v4, v2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 774
    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v4, v5

    if-ne v5, v7, :cond_0

    .line 777
    add-int/lit8 v2, v2, 0x1

    .line 780
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 772
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    :cond_2
    if-nez v1, :cond_3

    move-object v5, p0

    .line 789
    :goto_1
    return-object v5

    .line 788
    :cond_3
    sub-int v5, v0, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static displayWidth(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 2474
    const/16 v0, 0x4f9

    if-le p0, v0, :cond_8

    const/16 v0, 0x5be

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_8

    :cond_0
    const/16 v0, 0x5f3

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5f4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x600

    if-lt p0, v0, :cond_1

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_8

    :cond_1
    const/16 v0, 0x750

    if-lt p0, v0, :cond_2

    const/16 v0, 0x77f

    if-le p0, v0, :cond_8

    :cond_2
    const v0, 0xfb50

    if-lt p0, v0, :cond_3

    const v0, 0xfdff

    if-le p0, v0, :cond_8

    :cond_3
    const v0, 0xfe70

    if-lt p0, v0, :cond_4

    const v0, 0xfeff

    if-le p0, v0, :cond_8

    :cond_4
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_5

    const/16 v0, 0x20af

    if-le p0, v0, :cond_8

    :cond_5
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_6

    const/16 v0, 0x213a

    if-le p0, v0, :cond_8

    :cond_6
    const/16 v0, 0xe00

    if-lt p0, v0, :cond_7

    const/16 v0, 0xe7f

    if-le p0, v0, :cond_8

    :cond_7
    const v0, 0xff61

    if-lt p0, v0, :cond_9

    const v0, 0xffdc

    if-gt p0, v0, :cond_9

    .line 2489
    :cond_8
    const/4 v0, 0x1

    .line 2491
    :goto_0
    return v0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static displayWidth(Ljava/lang/String;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 2442
    const/4 v2, 0x0

    .line 2443
    .local v2, width:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2444
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2445
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/android/common/base/StringUtil;->displayWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 2444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2447
    :cond_0
    return v2
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "str"
    .parameter "suffix"

    .prologue
    .line 2834
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2835
    .local v5, len:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static escapeStringBody(Ljava/lang/CharSequence;ZLcom/google/android/common/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    .locals 8
    .parameter "plainText"
    .parameter "escapeToAscii"
    .parameter "jsEscapingMode"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1500
    const/4 v5, 0x0

    .line 1501
    .local v5, pos:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1502
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 1503
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1504
    .local v1, codePoint:I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 1506
    .local v0, charCount:I
    invoke-static {v1, p1, p2}, Lcom/google/android/common/base/StringUtil;->shouldEscapeChar(IZLcom/google/android/common/base/StringUtil$JsEscapingMode;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1502
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 1510
    :cond_0
    invoke-interface {p3, p0, v5, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1511
    add-int v5, v2, v0

    .line 1512
    sparse-switch v1, :sswitch_data_0

    .line 1531
    :cond_1
    const/16 v6, 0x100

    if-ge v1, v6, :cond_2

    sget-object v6, Lcom/google/android/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/android/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v6, :cond_4

    .line 1532
    :cond_2
    invoke-static {v1, p3}, Lcom/google/android/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    goto :goto_1

    .line 1513
    :sswitch_0
    const-string v6, "\\b"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1514
    :sswitch_1
    const-string v6, "\\t"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1515
    :sswitch_2
    const-string v6, "\\n"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1516
    :sswitch_3
    const-string v6, "\\f"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1517
    :sswitch_4
    const-string v6, "\\r"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1518
    :sswitch_5
    const-string v6, "\\\\"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1520
    :sswitch_6
    sget-object v6, Lcom/google/android/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/android/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v6, :cond_3

    const/16 v6, 0x27

    if-ne v6, v1, :cond_3

    .line 1523
    int-to-char v6, v1

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1525
    :cond_3
    sget-object v6, Lcom/google/android/common/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/google/android/common/base/StringUtil$JsEscapingMode;

    if-eq p2, v6, :cond_1

    .line 1526
    const/16 v6, 0x5c

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v6

    int-to-char v7, v1

    invoke-interface {v6, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1537
    :cond_4
    add-int v6, v2, v0

    if-ge v6, v3, :cond_5

    add-int v6, v2, v0

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x1

    move v4, v6

    .line 1539
    .local v4, pad:Z
    :goto_2
    int-to-char v6, v1

    invoke-static {v6, v4, p3}, Lcom/google/android/common/base/StringUtil;->appendOctalJavaScriptRepresentation(CZLjava/lang/Appendable;)V

    goto :goto_1

    .line 1537
    .end local v4           #pad:Z
    :cond_6
    const/4 v6, 0x0

    move v4, v6

    goto :goto_2

    .line 1544
    .end local v0           #charCount:I
    .end local v1           #codePoint:I
    :cond_7
    invoke-interface {p3, p0, v5, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1545
    return-void

    .line 1512
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method public static expandShardNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "dbSpecComponent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2739
    sget-object v8, Lcom/google/android/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2740
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2742
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2744
    .local v4, prefix:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2748
    .local v2, minShard:I
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2752
    .local v1, maxShard:I
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2755
    .local v6, suffix:Ljava/lang/String;
    if-le v2, v1, :cond_0

    .line 2756
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Maximum shard must be greater than or equal to the minimum shard"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2768
    .end local v1           #maxShard:I
    .end local v2           #minShard:I
    .end local v4           #prefix:Ljava/lang/String;
    .end local v6           #suffix:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 2769
    .local v3, nfex:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed DB specification component: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2760
    .end local v3           #nfex:Ljava/lang/NumberFormatException;
    .restart local v1       #maxShard:I
    .restart local v2       #minShard:I
    .restart local v4       #prefix:Ljava/lang/String;
    .restart local v6       #suffix:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2761
    .local v7, tmp:Ljava/lang/StringBuilder;
    move v5, v2

    .local v5, shard:I
    :goto_0
    if-gt v5, v1, :cond_2

    .line 2762
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    if-eq v5, v1, :cond_1

    .line 2764
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2761
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2767
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 2773
    .end local v1           #maxShard:I
    .end local v2           #minShard:I
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #shard:I
    .end local v6           #suffix:Ljava/lang/String;
    .end local v7           #tmp:Ljava/lang/StringBuilder;
    :goto_1
    return-object v8

    :cond_3
    move-object v8, p0

    goto :goto_1
.end method

.method public static fixedSplit(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .parameter "original"
    .parameter "lineLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v2, output:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/common/base/Splitter;->fixedLength(I)Lcom/google/android/common/base/Splitter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, elem:Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    .end local v0           #elem:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static fixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "width"

    .prologue
    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v3, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/android/common/base/Splitter;

    invoke-virtual {v4, p0}, Lcom/google/android/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, line:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v1           #line:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 405
    .local v2, lineArray:[Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/google/android/common/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static fixedWidth([Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "lines"
    .parameter "width"

    .prologue
    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, formattedLines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 430
    .local v4, line:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/google/android/common/base/StringUtil;->formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v4           #line:Ljava/lang/String;
    :cond_0
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "line"
    .parameter "width"

    .prologue
    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_0

    move-object v5, p0

    .line 468
    :goto_0
    return-object v5

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 450
    .local v1, col:I
    sget-object v5, Lcom/google/android/common/base/StringUtil;->TO_WORDS:Lcom/google/android/common/base/Splitter;

    invoke-virtual {v5, p0}, Lcom/google/android/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    .local v4, word:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 465
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 454
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, 0x1

    .line 456
    .local v3, newCol:I
    if-gt v3, p1, :cond_2

    .line 457
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    move v1, v3

    goto :goto_2

    .line 460
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    .line 468
    .end local v3           #newCol:I
    .end local v4           #word:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static hexToBytes(Ljava/lang/CharSequence;)[B
    .locals 7
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 743
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 744
    .local v0, bytes:[B
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 761
    :cond_0
    return-object v0

    .line 747
    :cond_1
    aput-byte v5, v0, v5

    .line 748
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 749
    .local v3, nibbleIdx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 750
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 751
    .local v1, c:C
    invoke-static {v1}, Lcom/google/android/common/base/StringUtil;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 752
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "string contains non-hex chars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 754
    :cond_2
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    .line 755
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/android/common/base/StringUtil;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 759
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 749
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 757
    :cond_3
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/android/common/base/StringUtil;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private static hexValue(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/16 v2, 0x61

    const/16 v1, 0x30

    .line 836
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 837
    sub-int v0, p0, v1

    .line 841
    :goto_0
    return v0

    .line 838
    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 839
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 841
    :cond_1
    const/16 v0, 0x41

    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 3190
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static indent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "iString"
    .parameter "iIndentDepth"

    .prologue
    const-string v3, "\n"

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v1, spacer:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 503
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static indexOfChars(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 7
    .parameter "string"
    .parameter "chars"
    .parameter "fromIndex"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x80

    .line 134
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt p2, v4, :cond_0

    move v4, v6

    .line 168
    :goto_0
    return v4

    .line 143
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 144
    .local v2, charSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    new-array v1, v5, [Z

    .line 145
    .local v1, charArray:[Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 146
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 147
    .local v0, c:C
    if-ge v0, v5, :cond_1

    .line 148
    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 145
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #charSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 153
    .restart local v2       #charSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    .end local v0           #c:C
    :cond_3
    const/4 v4, 0x0

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 159
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 160
    .restart local v0       #c:C
    if-ge v0, v5, :cond_4

    .line 161
    aget-boolean v4, v1, v0

    if-eqz v4, :cond_5

    move v4, v3

    .line 162
    goto :goto_0

    .line 164
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    .line 165
    goto :goto_0

    .line 158
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #c:C
    :cond_6
    move v4, v6

    .line 168
    goto :goto_0
.end method

.method public static isCjk(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 2417
    invoke-static {p0}, Lcom/google/android/common/base/StringUtil;->isCjk(I)Z

    move-result v0

    return v0
.end method

.method public static isCjk(I)Z
    .locals 2
    .parameter "codePoint"

    .prologue
    .line 2426
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 2427
    const/4 v0, 0x0

    .line 2430
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCjk(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 2369
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2370
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2371
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/common/base/StringUtil;->isCjk(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2372
    const/4 v2, 0x1

    .line 2375
    :goto_1
    return v2

    .line 2370
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2375
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 72
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/common/base/CharMatcher;->WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHebrew(I)Z
    .locals 2
    .parameter "codePoint"

    .prologue
    .line 2360
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 2347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2348
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2349
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/common/base/StringUtil;->isHebrew(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2350
    const/4 v2, 0x1

    .line 2353
    :goto_1
    return v2

    .line 2348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2353
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isHex(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 830
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 826
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1786
    sget-object v0, Lcom/google/android/common/base/StringUtil;->JAVA_ESCAPE:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptEscape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 1426
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "escapeToAscii"

    .prologue
    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1463
    .local v1, sb:Ljava/lang/StringBuilder;
    :try_start_0
    sget-object v2, Lcom/google/android/common/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/google/android/common/base/StringUtil$JsEscapingMode;

    invoke-static {p0, p1, v2, v1}, Lcom/google/android/common/base/StringUtil;->escapeStringBody(Ljava/lang/CharSequence;ZLcom/google/android/common/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1464
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1466
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static javaScriptEscapeToAscii(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 1438
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 1649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1650
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1651
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1652
    .local v0, c:C
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    .line 1653
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3, v2}, Lcom/google/android/common/base/StringUtil;->javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_0

    .line 1655
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1659
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "sb"

    .prologue
    .line 1672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1673
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End-of-string after escape character in ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1677
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, i:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1678
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 1726
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown escape code ["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] at index "

    .end local v0           #c:C
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1679
    .restart local v0       #c:C
    .restart local p0
    .restart local p2
    :sswitch_0
    const/16 p0, 0xa

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p0
    move p1, v1

    .line 1731
    .end local v0           #c:C
    .end local v1           #i:I
    .restart local p1
    :goto_0
    return p1

    .line 1680
    .end local p1
    .restart local v0       #c:C
    .restart local v1       #i:I
    .restart local p0
    :sswitch_1
    const/16 p0, 0xd

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p0
    move p1, v1

    .end local v1           #i:I
    .restart local p1
    goto :goto_0

    .line 1681
    .end local p1
    .restart local v1       #i:I
    .restart local p0
    :sswitch_2
    const/16 p0, 0x9

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p0
    move p1, v1

    .end local v1           #i:I
    .restart local p1
    goto :goto_0

    .line 1682
    .end local p1
    .restart local v1       #i:I
    .restart local p0
    :sswitch_3
    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p0
    move p1, v1

    .end local v1           #i:I
    .restart local p1
    goto :goto_0

    .line 1683
    .end local p1
    .restart local v1       #i:I
    .restart local p0
    :sswitch_4
    const/16 p0, 0xc

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p0
    move p1, v1

    .end local v1           #i:I
    .restart local p1
    goto :goto_0

    .line 1688
    .end local p1
    .restart local v1       #i:I
    .restart local p0
    :sswitch_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    .line 1689
    .end local v1           #i:I
    .restart local p1
    goto :goto_0

    .line 1692
    .end local p1
    .restart local v1       #i:I
    :sswitch_6
    add-int/lit8 p1, v1, -0x1

    .line 1693
    .end local v1           #i:I
    .restart local p1
    const/4 v1, 0x1

    .line 1694
    .local v1, nOctalDigits:I
    const/16 v2, 0x34

    if-ge v0, v2, :cond_1

    const/4 v0, 0x3

    .line 1696
    .local v0, digitLimit:I
    :goto_1
    if-ge v1, v0, :cond_2

    add-int v2, p1, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/common/base/StringUtil;->isOctal(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1697
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1694
    .local v0, c:C
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 1699
    .local v0, digitLimit:I
    :cond_2
    add-int v0, p1, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #digitLimit:I
    move-result-object p0

    .end local p0
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1701
    add-int/2addr p1, v1

    .line 1702
    goto :goto_0

    .line 1706
    .end local p1
    .local v0, c:C
    .local v1, i:I
    .restart local p0
    :sswitch_7
    const/16 p1, 0x75

    if-ne v0, p1, :cond_3

    const/4 p1, 0x4

    move v0, p1

    .line 1708
    .local v0, nHexDigits:I
    :goto_2
    add-int p1, v1, v0

    :try_start_0
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1716
    .local p1, hexCode:Ljava/lang/String;
    const/16 v2, 0x10

    :try_start_1
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p0

    .line 1722
    .local p0, unicodeValue:I
    int-to-char p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1723
    .end local p0           #unicodeValue:I
    add-int p1, v1, v0

    .line 1724
    .end local v1           #i:I
    .local p1, i:I
    goto :goto_0

    .line 1706
    .end local p1           #i:I
    .local v0, c:C
    .restart local v1       #i:I
    .local p0, s:Ljava/lang/String;
    :cond_3
    const/4 p1, 0x2

    move v0, p1

    goto :goto_2

    .line 1709
    .local v0, nHexDigits:I
    :catch_0
    move-exception p1

    .line 1710
    .local p1, ioobe:Ljava/lang/IndexOutOfBoundsException;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1           #ioobe:Ljava/lang/IndexOutOfBoundsException;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unicode sequence ["

    .end local v0           #nHexDigits:I
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #s:Ljava/lang/String;
    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1717
    .restart local v0       #nHexDigits:I
    .restart local p0       #s:Ljava/lang/String;
    .local p1, hexCode:Ljava/lang/String;
    .restart local p2
    :catch_1
    move-exception p2

    .line 1718
    .local p2, nfe:Ljava/lang/NumberFormatException;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .end local p2           #nfe:Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #nHexDigits:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unicode sequence ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #hexCode:Ljava/lang/String;
    const-string v0, "] at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #s:Ljava/lang/String;
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1678
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x3e -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_7
        0x78 -> :sswitch_7
    .end sparse-switch
.end method

.method public static lastIndexNotOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "str"
    .parameter "chars"
    .parameter "fromIndex"

    .prologue
    .line 670
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 672
    move v0, p2

    .local v0, pos:I
    :goto_0
    if-ltz v0, :cond_1

    .line 673
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    move v1, v0

    .line 678
    :goto_1
    return v1

    .line 672
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 678
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static lastToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "delimiter"

    .prologue
    .line 2328
    invoke-static {p1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->lastIndexIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 2070
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 2071
    .local v3, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2072
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2073
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2074
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate string key in map when lower casing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2077
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2079
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/android/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static map2String(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "sepKey"
    .parameter "sepEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2054
    .local p0, in:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner$MapJoiner;->join(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static maskLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "len"
    .parameter "maskChar"

    .prologue
    .line 813
    if-gtz p1, :cond_0

    move-object v2, p0

    .line 822
    :goto_0
    return-object v2

    .line 816
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 819
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 821
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "left"
    .parameter "right"
    .parameter "what"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    if-nez p0, :cond_0

    .line 531
    const/4 v1, 0x0

    .line 544
    :goto_0
    return-object v1

    .line 534
    :cond_0
    invoke-static {p3}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    .line 535
    .local v0, matcher:Lcom/google/android/common/base/CharMatcher;
    if-eqz p1, :cond_2

    .line 536
    if-eqz p2, :cond_1

    .line 537
    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 541
    :cond_2
    if-eqz p2, :cond_3

    .line 542
    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 544
    goto :goto_0
.end method

.method static mustEscapeCharInJsString(I)Z
    .locals 2
    .parameter "codepoint"

    .prologue
    .line 3096
    sget-object v0, Lcom/google/android/common/base/StringUtil;->JS_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static mustEscapeCharInJsonString(I)Z
    .locals 2
    .parameter "codepoint"

    .prologue
    .line 3112
    sget-object v0, Lcom/google/android/common/base/StringUtil;->JSON_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static padLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "len"
    .parameter "padChar"

    .prologue
    .line 797
    invoke-static {p0, p1, p2}, Lcom/google/android/common/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "len"
    .parameter "padChar"

    .prologue
    .line 805
    invoke-static {p0, p1, p2}, Lcom/google/android/common/base/Strings;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedList(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 9
    .parameter "list"
    .parameter "delimiter"

    .prologue
    const/4 v8, 0x0

    .line 2259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2262
    .local v0, delim:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2265
    .local v2, st:Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 2267
    .local v1, lastToken:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2281
    .local v5, word:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2282
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2283
    .local v3, tok:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2284
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2285
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    .line 2294
    :cond_0
    :goto_1
    move-object v1, v3

    .line 2295
    goto :goto_0

    .line 2288
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2289
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 2297
    .end local v3           #tok:Ljava/lang/String;
    :cond_3
    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static regexEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1813
    sget-object v0, Lcom/google/android/common/base/StringUtil;->REGEX_ESCAPE:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeChars(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "oldchars"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    invoke-static {p1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "string"
    .parameter "count"

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/google/android/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "what"
    .parameter "with"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkArgument(Z)V

    .line 379
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "oldchars"
    .parameter "newchar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 691
    invoke-static {p1}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceSmartQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 717
    sget-object v1, Lcom/google/android/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/android/common/base/CharMatcher;

    const/16 v2, 0x27

    invoke-virtual {v1, p0, v2}, Lcom/google/android/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/google/android/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/android/common/base/CharMatcher;

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v2}, Lcom/google/android/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static shouldEscapeChar(IZLcom/google/android/common/base/StringUtil$JsEscapingMode;)Z
    .locals 2
    .parameter "codePoint"
    .parameter "escapeToAscii"
    .parameter "jsEscapingMode"

    .prologue
    const/4 v1, 0x1

    .line 1553
    if-eqz p1, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 1568
    :goto_0
    return v0

    .line 1562
    :cond_1
    sget-object v0, Lcom/google/android/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/android/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v0, :cond_4

    .line 1563
    invoke-static {p0}, Lcom/google/android/common/base/StringUtil;->mustEscapeCharInJsonString(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/android/common/base/StringUtil;->mustEscapeCharInJsString(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1568
    :cond_4
    invoke-static {p0}, Lcom/google/android/common/base/StringUtil;->mustEscapeCharInJsString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "delims"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "delims"
    .parameter "trimTokens"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 232
    .local v2, n:I
    new-array v1, v2, [Ljava/lang/String;

    .line 233
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 233
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    goto :goto_1

    .line 240
    :cond_1
    return-object v1
.end method

.method public static splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "delims"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitInts(Ljava/lang/String;)[I
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 343
    .local v2, n:I
    new-array v1, v2, [I

    .line 344
    .local v1, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 345
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static splitLongs(Ljava/lang/String;)[J
    .locals 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 355
    .local v2, n:I
    new-array v1, v2, [J

    .line 356
    .local v1, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 357
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "str"
    .parameter "prefix"

    .prologue
    const/4 v2, 0x0

    .line 2820
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static stream2String(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .parameter "is"
    .parameter "maxLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2231
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 2232
    .local v0, buffer:[B
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2233
    .local v2, sw:Ljava/io/StringWriter;
    const/4 v3, 0x0

    .line 2234
    .local v3, totalRead:I
    const/4 v1, 0x0

    .line 2237
    .local v1, read:I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2238
    add-int/2addr v3, v1

    .line 2239
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2240
    if-eq v5, p1, :cond_1

    if-ge v3, p1, :cond_2

    :cond_1
    if-ne v1, v5, :cond_0

    .line 2242
    :cond_2
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .parameter "in"
    .parameter "delimiter"
    .parameter "doStrip"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1911
    .local p3, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1912
    const/4 v3, 0x0

    .line 1944
    :goto_0
    return-object v3

    .line 1914
    :cond_0
    if-nez p3, :cond_1

    .line 1915
    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1917
    .restart local p3       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1918
    :cond_2
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    .line 1919
    goto :goto_0

    .line 1922
    :cond_3
    const/4 v0, 0x0

    .line 1924
    .local v0, fromIndex:I
    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, pos:I
    if-ltz v2, :cond_7

    .line 1925
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1926
    .local v1, interim:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1927
    invoke-static {v1}, Lcom/google/android/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1929
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1930
    :cond_5
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1934
    goto :goto_1

    .line 1936
    .end local v1           #interim:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1937
    .restart local v1       #interim:Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 1938
    invoke-static {v1}, Lcom/google/android/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1940
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 1941
    :cond_9
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v3, p3

    .line 1944
    goto :goto_0
.end method

.method public static string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 2
    .parameter "in"
    .parameter "delimiter"
    .parameter "doStrip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1850
    if-nez p0, :cond_0

    .line 1851
    const/4 v1, 0x0

    .line 1856
    :goto_0
    return-object v1

    .line 1854
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1855
    .local v0, out:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    move-object v1, v0

    .line 1856
    goto :goto_0
.end method

.method public static string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 1
    .parameter "in"
    .parameter "delimEntry"
    .parameter "delimKey"
    .parameter "doStripEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1966
    if-nez p0, :cond_0

    .line 1967
    const/4 v0, 0x0

    .line 1970
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/common/base/StringUtil;->stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    move-object v0, p0

    goto :goto_0
.end method

.method public static string2Set(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
    .locals 2
    .parameter "in"
    .parameter "delimiter"
    .parameter "doStrip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1878
    if-nez p0, :cond_0

    .line 1879
    const/4 v1, 0x0

    .line 1884
    :goto_0
    return-object v1

    .line 1882
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1883
    .local v0, out:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    move-object v1, v0

    .line 1884
    goto :goto_0
.end method

.method private static stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 9
    .parameter
    .parameter "in"
    .parameter "delimEntry"
    .parameter "delimKey"
    .parameter "doStripEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, out:Ljava/util/Map;,"TT;"
    const/4 v7, 0x0

    const-string v8, ""

    .line 2015
    invoke-static {p2}, Lcom/google/android/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Lcom/google/android/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2016
    :cond_0
    invoke-static {p1}, Lcom/google/android/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    :cond_1
    return-object p0

    .line 2020
    :cond_2
    invoke-static {p1, p2, v7}, Lcom/google/android/common/base/StringUtil;->string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2021
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2022
    .local v2, len:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2023
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2024
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2025
    .local v3, pos:I
    if-lez v3, :cond_4

    .line 2026
    add-int v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2027
    .local v4, value:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 2028
    invoke-static {v4}, Lcom/google/android/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2030
    :cond_3
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2032
    .end local v4           #value:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/google/android/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static stringToOrderedMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .parameter "in"
    .parameter "delimEntry"
    .parameter "delimKey"
    .parameter "doStripEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1991
    if-nez p0, :cond_0

    .line 1992
    const/4 v0, 0x0

    .line 1995
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/common/base/StringUtil;->stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripAndCollapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lcom/google/android/common/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const-string v3, ""

    .line 1406
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 1416
    :goto_0
    return-object v1

    .line 1409
    :cond_1
    sget-object v1, Lcom/google/android/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    .local v0, stripped:Ljava/lang/String;
    sget-object v1, Lcom/google/android/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v1, v0}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static stripNonDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    sget-object v0, Lcom/google/android/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/android/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "prefix"

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "prefix"

    .prologue
    .line 604
    invoke-static {p0, p1}, Lcom/google/android/common/base/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "suffix"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripSuffixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "suffix"

    .prologue
    .line 637
    invoke-static {p0, p1}, Lcom/google/android/common/base/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 2712
    if-nez p0, :cond_0

    .line 2713
    const/4 v0, 0x0

    .line 2715
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/android/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/common/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    const-string v2, "\'"

    .line 2581
    if-nez p0, :cond_0

    .line 2582
    const-string v0, "NULL"

    .line 2584
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 4
    .parameter "iArray"

    .prologue
    .line 2498
    if-nez p0, :cond_0

    .line 2499
    const-string v2, "NULL"

    .line 2511
    :goto_0
    return-object v2

    .line 2502
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2503
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2504
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2505
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2506
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    .line 2507
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2504
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2510
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4
    .parameter "iArray"

    .prologue
    .line 2538
    if-nez p0, :cond_0

    .line 2539
    const-string v2, "NULL"

    .line 2551
    :goto_0
    return-object v2

    .line 2542
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2543
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2545
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2546
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    .line 2547
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2550
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .parameter "iArray"

    .prologue
    .line 2518
    if-nez p0, :cond_0

    .line 2519
    const-string v2, "NULL"

    .line 2531
    :goto_0
    return-object v2

    .line 2522
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2523
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2525
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2526
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    .line 2527
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2530
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "obj"

    .prologue
    .line 2647
    if-nez p0, :cond_0

    const-string v2, "NULL"

    .line 2657
    :goto_0
    return-object v2

    .line 2648
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2649
    .local v1, tmp:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2651
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_1

    .line 2653
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2656
    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "iArray"

    .prologue
    const-string v4, "\'"

    .line 2558
    if-nez p0, :cond_0

    const-string v2, "NULL"

    .line 2570
    :goto_0
    return-object v2

    .line 2560
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2561
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2563
    const-string v2, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    .line 2565
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2568
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([[I)Ljava/lang/String;
    .locals 7
    .parameter "iArray"

    .prologue
    const/4 v4, 0x1

    const-string v6, "]"

    const-string v5, "["

    .line 2593
    if-nez p0, :cond_0

    .line 2594
    const-string v3, "NULL"

    .line 2613
    :goto_0
    return-object v3

    .line 2597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2598
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2600
    const-string v3, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2602
    aget-object v3, p0, v1

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2603
    aget-object v3, p0, v1

    array-length v3, v3

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_1

    .line 2604
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2607
    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    array-length v3, p0

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_3

    .line 2609
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2612
    .end local v2           #j:I
    :cond_4
    const-string v3, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toString([[J)Ljava/lang/String;
    .locals 8
    .parameter "iArray"

    .prologue
    const/4 v5, 0x1

    const-string v7, "]"

    const-string v6, "["

    .line 2620
    if-nez p0, :cond_0

    const-string v3, "NULL"

    .line 2638
    :goto_0
    return-object v3

    .line 2622
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2623
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2625
    const-string v3, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2627
    aget-object v3, p0, v1

    aget-wide v3, v3, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2628
    aget-object v3, p0, v1

    array-length v3, v3

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_1

    .line 2629
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2632
    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    array-length v3, p0

    sub-int/2addr v3, v5

    if-eq v1, v3, :cond_3

    .line 2634
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2637
    .end local v2           #j:I
    :cond_4
    const-string v3, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 2699
    if-nez p0, :cond_0

    .line 2700
    const/4 v0, 0x0

    .line 2702
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/common/base/StringUtil;->trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "extraChars"

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, trimCount:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 311
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 317
    goto :goto_0

    .line 319
    .end local v0           #ch:C
    :cond_1
    if-nez v1, :cond_2

    move-object v2, p0

    .line 322
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static trimStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/common/base/StringUtil;->trimStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "extraChars"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, trimCount:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 269
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 270
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 276
    goto :goto_0

    .line 278
    .end local v0           #ch:C
    :cond_1
    if-nez v1, :cond_2

    move-object v2, p0

    .line 281
    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "maxLength"
    .parameter "addEllipsis"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 2972
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    move-object v0, p0

    .line 2978
    :goto_0
    return-object v0

    .line 2975
    :cond_0
    if-eqz p2, :cond_1

    if-le p1, v1, :cond_1

    .line 2976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v1, p1, v1

    invoke-static {p0, v2, v1}, Lcom/google/android/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2978
    :cond_1
    invoke-static {p0, v2, p1}, Lcom/google/android/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static truncateIfNecessary(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "source"
    .parameter "maxLength"

    .prologue
    const/4 v7, 0x0

    .line 2923
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_0

    move-object v5, p0

    .line 2949
    :goto_0
    return-object v5

    .line 2926
    :cond_0
    invoke-static {p0, v7, p1}, Lcom/google/android/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 2929
    .local v1, str:Ljava/lang/String;
    sget-object v4, Lcom/google/android/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    .line 2930
    .local v4, whitespaceMatcher:Lcom/google/android/common/base/CharMatcher;
    invoke-virtual {v4, v1}, Lcom/google/android/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2933
    .local v3, truncated:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, p1, :cond_1

    move-object v5, v3

    .line 2934
    goto :goto_0

    .line 2938
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 2939
    goto :goto_0

    .line 2943
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int v0, v5, v6

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 2944
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2945
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2946
    .local v2, substr:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/google/android/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2943
    .end local v2           #substr:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move-object v5, v3

    .line 2949
    goto :goto_0
.end method

.method public static truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "maxbytes"

    .prologue
    .line 2886
    if-gez p1, :cond_0

    .line 2887
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2894
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2896
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2897
    .local v1, codepoints:I
    const/4 v0, 0x0

    .line 2898
    .local v0, bytesUsed:I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2900
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/common/base/StringUtil;->bytesUtf8(I)I

    move-result v2

    .line 2901
    .local v2, glyphBytes:I
    add-int v4, v0, v2

    if-le v4, p1, :cond_2

    .line 2906
    .end local v2           #glyphBytes:I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2904
    .restart local v2       #glyphBytes:I
    :cond_2
    add-int/2addr v0, v2

    .line 2899
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0
.end method

.method public static unescapeCString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x30

    .line 850
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    move-object v6, p0

    .line 902
    :goto_0
    return-object v6

    .line 855
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 857
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 858
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 859
    .local v0, c:C
    if-ne v0, v9, :cond_2

    if-ge v1, v3, :cond_2

    .line 860
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 861
    sparse-switch v0, :sswitch_data_0

    .line 875
    const/16 v6, 0x78

    if-ne v0, v6, :cond_3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 877
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/common/base/StringUtil;->hexValue(C)I

    move-result v5

    .line 878
    .local v5, v:I
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 879
    mul-int/lit8 v6, v5, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/android/common/base/StringUtil;->hexValue(C)I

    move-result v7

    add-int v5, v6, v7

    move v1, v2

    .line 881
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_1
    int-to-char v0, v5

    .line 900
    .end local v5           #v:I
    :cond_2
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 901
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 862
    :sswitch_0
    const/4 v0, 0x7

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 863
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_1
    const/16 v0, 0x8

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 864
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_2
    const/16 v0, 0xc

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 865
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_3
    const/16 v0, 0xa

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 866
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_4
    const/16 v0, 0xd

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 867
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_5
    const/16 v0, 0x9

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 868
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_6
    const/16 v0, 0xb

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 869
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_7
    const/16 v0, 0x5c

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 870
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_8
    const/16 v0, 0x3f

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 871
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_9
    const/16 v0, 0x27

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 872
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_a
    const/16 v0, 0x22

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 882
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_3
    invoke-static {v0}, Lcom/google/android/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 884
    sub-int v5, v0, v8

    .line 885
    .restart local v5       #v:I
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 886
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v8

    add-int v5, v6, v7

    move v2, v1

    .line 888
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_4
    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 889
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v8

    add-int v5, v6, v7

    .line 891
    :goto_3
    int-to-char v0, v5

    .line 892
    goto :goto_2

    .line 894
    .end local v1           #i:I
    .end local v5           #v:I
    .restart local v2       #i:I
    :cond_5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 902
    .end local v0           #c:C
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_7
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_3

    .line 861
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x3f -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public static final unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 1268
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .parameter "s"
    .parameter "emulateBrowsers"

    .prologue
    .line 1289
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1290
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1387
    .end local v0           #index:I
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 1296
    .restart local v0       #index:I
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1297
    .local v3, chars:[C
    array-length v1, v3

    new-array v4, v1, [C

    .line 1298
    .local v4, escaped:[C
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    move v1, v0

    .line 1303
    .local v1, pos:I
    move v0, v0

    .local v0, i:I
    move v5, v0

    .end local v0           #i:I
    .local v5, i:I
    move v8, v1

    .end local v1           #pos:I
    .local v8, pos:I
    :goto_1
    array-length v0, v3

    if-ge v5, v0, :cond_c

    .line 1304
    aget-char v0, v3, v5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    .line 1305
    add-int/lit8 v1, v8, 0x1

    .end local v8           #pos:I
    .restart local v1       #pos:I
    add-int/lit8 v0, v5, 0x1

    .end local v5           #i:I
    .restart local v0       #i:I
    aget-char v2, v3, v5

    aput-char v2, v4, v8

    move v5, v0

    .end local v0           #i:I
    .restart local v5       #i:I
    move v8, v1

    .line 1306
    .end local v1           #pos:I
    .restart local v8       #pos:I
    goto :goto_1

    .line 1310
    :cond_1
    add-int/lit8 v1, v5, 0x1

    .line 1311
    .local v1, j:I
    const/4 v0, 0x0

    .line 1312
    .local v0, isNumericEntity:Z
    array-length v2, v3

    if-ge v1, v2, :cond_13

    aget-char v2, v3, v1

    const/16 v6, 0x23

    if-ne v2, v6, :cond_13

    .line 1313
    add-int/lit8 v1, v1, 0x1

    .line 1314
    const/4 v0, 0x1

    move v2, v0

    .line 1318
    .end local v0           #isNumericEntity:Z
    .local v2, isNumericEntity:Z
    :goto_2
    const/4 v0, 0x0

    .line 1319
    .local v0, isHexEntity:Z
    array-length v6, v3

    if-ge v1, v6, :cond_12

    aget-char v6, v3, v1

    const/16 v7, 0x78

    if-eq v6, v7, :cond_2

    aget-char v6, v3, v1

    const/16 v7, 0x58

    if-ne v6, v7, :cond_12

    .line 1320
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1321
    const/4 v0, 0x1

    move v6, v0

    .end local v0           #isHexEntity:Z
    .local v6, isHexEntity:Z
    move v7, v1

    .line 1325
    .end local v1           #j:I
    .local v7, j:I
    :goto_3
    array-length v0, v3

    if-ge v7, v0, :cond_3

    .line 1326
    aget-char v0, v3, v7

    .line 1327
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    .line 1328
    .local v1, isDigit:Z
    if-eqz v2, :cond_8

    .line 1330
    if-nez v6, :cond_7

    if-nez v1, :cond_7

    .line 1344
    .end local v0           #ch:C
    .end local v1           #isDigit:Z
    :cond_3
    const/4 v9, 0x0

    .line 1345
    .local v9, replaced:Z
    array-length v0, v3

    if-gt v7, v0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    array-length v0, v3

    if-ge v7, v0, :cond_11

    aget-char v0, v3, v7

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_11

    .line 1348
    :cond_5
    add-int/lit8 v0, v5, 0x2

    array-length v1, v3

    if-ge v0, v1, :cond_b

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_b

    .line 1350
    const-wide/16 v1, 0x0

    .line 1351
    .end local v2           #isNumericEntity:Z
    .local v1, charcode:J
    add-int/lit8 v0, v5, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1352
    .restart local v0       #ch:C
    if-eqz v6, :cond_a

    .line 1353
    new-instance v0, Ljava/lang/String;

    .end local v0           #ch:C
    add-int/lit8 v6, v5, 0x3

    sub-int v10, v7, v5

    const/4 v11, 0x3

    sub-int/2addr v10, v11

    invoke-direct {v0, v3, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .end local v6           #isHexEntity:Z
    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1359
    .end local v1           #charcode:J
    .local v0, charcode:J
    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v2, v0, v10

    if-lez v2, :cond_f

    const-wide/32 v10, 0x10000

    cmp-long v2, v0, v10

    if-gez v2, :cond_f

    .line 1360
    add-int/lit8 v2, v8, 0x1

    .end local v8           #pos:I
    .local v2, pos:I
    long-to-int v6, v0

    int-to-char v6, v6

    :try_start_1
    aput-char v6, v4, v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1361
    const/4 v0, 0x1

    .end local v9           #replaced:Z
    .local v0, replaced:Z
    move v1, v0

    .end local v0           #replaced:Z
    .local v1, replaced:Z
    move v0, v2

    .end local v2           #pos:I
    .local v0, pos:I
    :goto_5
    move v2, v1

    .end local v1           #replaced:Z
    .local v2, replaced:Z
    move v1, v0

    .line 1375
    .end local v0           #pos:I
    .local v1, pos:I
    :goto_6
    array-length v0, v3

    if-ge v7, v0, :cond_d

    aget-char v0, v3, v7

    const/16 v6, 0x3b

    if-ne v0, v6, :cond_d

    .line 1376
    add-int/lit8 v0, v7, 0x1

    .line 1380
    .end local v7           #j:I
    .local v0, j:I
    :goto_7
    if-nez v2, :cond_6

    .line 1382
    sub-int v2, v0, v5

    invoke-static {v3, v5, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1383
    .end local v2           #replaced:Z
    sub-int v2, v0, v5

    add-int/2addr v1, v2

    .line 1385
    :cond_6
    move v0, v0

    .end local v5           #i:I
    .local v0, i:I
    move v5, v0

    .end local v0           #i:I
    .restart local v5       #i:I
    move v8, v1

    .line 1386
    .end local v1           #pos:I
    .restart local v8       #pos:I
    goto/16 :goto_1

    .line 1334
    .local v0, ch:C
    .local v1, isDigit:Z
    .local v2, isNumericEntity:Z
    .restart local v6       #isHexEntity:Z
    .restart local v7       #j:I
    :cond_7
    if-eqz v6, :cond_8

    if-nez v1, :cond_8

    sget-object v9, Lcom/google/android/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1339
    :cond_8
    if-nez v1, :cond_9

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    .end local v0           #ch:C
    if-eqz v0, :cond_3

    .line 1325
    :cond_9
    add-int/lit8 v0, v7, 0x1

    .end local v7           #j:I
    .local v0, j:I
    move v7, v0

    .end local v0           #j:I
    .restart local v7       #j:I
    goto/16 :goto_3

    .line 1355
    .end local v2           #isNumericEntity:Z
    .local v0, ch:C
    .local v1, charcode:J
    .restart local v9       #replaced:Z
    :cond_a
    :try_start_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    .end local v0           #ch:C
    if-eqz v0, :cond_10

    .line 1356
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v6, v5, 0x2

    sub-int v10, v7, v5

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    invoke-direct {v0, v3, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .end local v6           #isHexEntity:Z
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    .end local v1           #charcode:J
    .local v0, charcode:J
    goto :goto_4

    .line 1363
    .end local v0           #charcode:J
    .restart local v1       #charcode:J
    :catch_0
    move-exception v0

    move-wide v12, v1

    .end local v1           #charcode:J
    .local v12, charcode:J
    move-wide v0, v12

    .end local v12           #charcode:J
    .restart local v0       #charcode:J
    move v2, v8

    .end local v8           #pos:I
    .local v2, pos:I
    :goto_8
    move v1, v2

    .end local v0           #charcode:J
    .end local v2           #pos:I
    .local v1, pos:I
    move v2, v9

    .line 1365
    .end local v9           #replaced:Z
    .local v2, replaced:Z
    goto :goto_6

    .line 1367
    .end local v1           #pos:I
    .local v2, isNumericEntity:Z
    .restart local v6       #isHexEntity:Z
    .restart local v8       #pos:I
    .restart local v9       #replaced:Z
    :cond_b
    new-instance v0, Ljava/lang/String;

    sub-int v1, v7, v5

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1368
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/google/android/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 1369
    .local v1, repl:Ljava/lang/Character;
    if-eqz v1, :cond_e

    .line 1370
    add-int/lit8 v0, v8, 0x1

    .end local v8           #pos:I
    .local v0, pos:I
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .end local v1           #repl:Ljava/lang/Character;
    aput-char v1, v4, v8

    .line 1371
    const/4 v1, 0x1

    .end local v9           #replaced:Z
    .local v1, replaced:Z
    move v2, v1

    .end local v1           #replaced:Z
    .local v2, replaced:Z
    move v1, v0

    .end local v0           #pos:I
    .local v1, pos:I
    goto :goto_6

    .line 1387
    .end local v1           #pos:I
    .end local v2           #replaced:Z
    .end local v6           #isHexEntity:Z
    .end local v7           #j:I
    .restart local v8       #pos:I
    :cond_c
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 p1, 0x0

    invoke-direct {p0, v4, p1, v8}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 1363
    .end local v8           #pos:I
    .local v0, charcode:J
    .local v2, pos:I
    .restart local v7       #j:I
    .restart local v9       #replaced:Z
    .restart local p0
    :catch_1
    move-exception v6

    goto :goto_8

    .end local v0           #charcode:J
    .end local v9           #replaced:Z
    .restart local v1       #pos:I
    .local v2, replaced:Z
    :cond_d
    move v0, v7

    .end local v7           #j:I
    .local v0, j:I
    goto :goto_7

    .local v0, key:Ljava/lang/String;
    .local v1, repl:Ljava/lang/Character;
    .local v2, isNumericEntity:Z
    .restart local v6       #isHexEntity:Z
    .restart local v7       #j:I
    .restart local v8       #pos:I
    .restart local v9       #replaced:Z
    :cond_e
    move v2, v9

    .end local v9           #replaced:Z
    .local v2, replaced:Z
    move v1, v8

    .end local v8           #pos:I
    .local v1, pos:I
    goto :goto_6

    .end local v1           #pos:I
    .end local v2           #replaced:Z
    .end local v6           #isHexEntity:Z
    .local v0, charcode:J
    .restart local v8       #pos:I
    .restart local v9       #replaced:Z
    :cond_f
    move v1, v9

    .end local v0           #charcode:J
    .end local v9           #replaced:Z
    .local v1, replaced:Z
    move v0, v8

    .end local v8           #pos:I
    .local v0, pos:I
    goto/16 :goto_5

    .end local v0           #pos:I
    .local v1, charcode:J
    .restart local v6       #isHexEntity:Z
    .restart local v8       #pos:I
    .restart local v9       #replaced:Z
    :cond_10
    move-wide v0, v1

    .end local v1           #charcode:J
    .local v0, charcode:J
    goto/16 :goto_4

    .end local v0           #charcode:J
    .local v2, isNumericEntity:Z
    :cond_11
    move v2, v9

    .end local v9           #replaced:Z
    .local v2, replaced:Z
    move v0, v7

    .end local v7           #j:I
    .local v0, j:I
    move v1, v8

    .end local v8           #pos:I
    .local v1, pos:I
    goto :goto_7

    .end local v6           #isHexEntity:Z
    .local v0, isHexEntity:Z
    .local v1, j:I
    .local v2, isNumericEntity:Z
    .restart local v8       #pos:I
    :cond_12
    move v6, v0

    .end local v0           #isHexEntity:Z
    .restart local v6       #isHexEntity:Z
    move v7, v1

    .end local v1           #j:I
    .restart local v7       #j:I
    goto/16 :goto_3

    .end local v2           #isNumericEntity:Z
    .end local v6           #isHexEntity:Z
    .end local v7           #j:I
    .local v0, isNumericEntity:Z
    .restart local v1       #j:I
    :cond_13
    move v2, v0

    .end local v0           #isNumericEntity:Z
    .restart local v2       #isNumericEntity:Z
    goto/16 :goto_2
.end method

.method public static unescapeMySQLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x27

    const/16 v10, 0x22

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "not a valid MySQL string: "

    .line 919
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 922
    .local v0, chars:[C
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-char v5, v0, v7

    array-length v6, v0

    sub-int/2addr v6, v8

    aget-char v6, v0, v6

    if-ne v5, v6, :cond_0

    aget-char v5, v0, v7

    if-eq v5, v11, :cond_1

    aget-char v5, v0, v7

    if-eq v5, v10, :cond_1

    .line 924
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 929
    :cond_1
    const/4 v3, 0x1

    .line 930
    .local v3, j:I
    const/4 v1, 0x0

    .line 931
    .local v1, f:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v8

    if-ge v2, v5, :cond_7

    .line 932
    if-nez v1, :cond_4

    .line 933
    aget-char v5, v0, v2

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_2

    .line 934
    const/4 v1, 0x1

    .line 931
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    :cond_2
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-ne v5, v6, :cond_3

    .line 936
    const/4 v1, 0x2

    goto :goto_1

    .line 938
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1

    .line 940
    :cond_4
    if-ne v1, v8, :cond_5

    .line 941
    aget-char v5, v0, v2

    sparse-switch v5, :sswitch_data_0

    .line 953
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .line 956
    .end local v4           #j:I
    .restart local v3       #j:I
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 942
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v7, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 943
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v11, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 944
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v10, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 945
    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x8

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 946
    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0xa

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 947
    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0xd

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 948
    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x9

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 949
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x1a

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 950
    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x5c

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 959
    :cond_5
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-eq v5, v6, :cond_6

    .line 960
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 962
    :cond_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aget-char v5, v0, v7

    aput-char v5, v0, v3

    .line 963
    const/4 v1, 0x0

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto/16 :goto_1

    .line 967
    :cond_7
    if-eqz v1, :cond_8

    .line 968
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 972
    :cond_8
    new-instance v5, Ljava/lang/String;

    sub-int v6, v3, v8

    invoke-direct {v5, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x30 -> :sswitch_0
        0x5c -> :sswitch_8
        0x62 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x7a -> :sswitch_7
    .end sparse-switch
.end method

.method public static unicodePreservingIndex(Ljava/lang/String;I)I
    .locals 2
    .parameter "str"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2999
    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3000
    sub-int v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    sub-int v0, p1, v1

    .line 3005
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "begin"

    .prologue
    .line 3053
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/android/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 3040
    invoke-static {p0, p1}, Lcom/google/android/common/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, p2}, Lcom/google/android/common/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xmlCDataEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v4, -0x1

    const-string v5, "]]>"

    .line 1756
    sget-object v3, Lcom/google/android/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/android/common/base/CharMatcher;

    invoke-virtual {v3, p0}, Lcom/google/android/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1758
    const-string v3, "]]>"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1759
    .local v0, found:I
    if-ne v0, v4, :cond_0

    move-object v3, p0

    .line 1773
    :goto_0
    return-object v3

    .line 1765
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1766
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1768
    .local v1, prev:I
    :cond_1
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    const-string v3, "]]&gt;<![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    add-int/lit8 v1, v0, 0x3

    .line 1771
    const-string v3, "]]>"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1772
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 3183
    invoke-static {}, Lcom/google/android/common/base/CharEscapers;->xmlEscaper()Lcom/google/android/common/base/CharEscaper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
